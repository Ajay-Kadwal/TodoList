//
//  ListViewModal.swift
//  TodoList
//
//  Created by AJAY KADWAL on 18/11/24.
//

import Foundation


/*
 CRUD FUNCTIONS:
 
 Create
 Read
 Update
 Delete
 */


class ListViewModal: ObservableObject {
    @Published var items: [ItemModal] = [] {
        didSet {
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
     
    init() {
        getItems()
    }
    
    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItem = try? JSONDecoder().decode([ItemModal].self, from: data)
        else { return }
        
        self.items = savedItem
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
        
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
        
    func addItem(title: String) {
        let newItem = ItemModal(title: title, isComleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModal) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
        items[index] = item.updateComletion()
        }
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
        
}
