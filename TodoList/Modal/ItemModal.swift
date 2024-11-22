//
//  ItemModal.swift
//  TodoList
//
//  Created by AJAY KADWAL on 18/11/24.
//

import Foundation

// Immutable Struct
struct ItemModal: Identifiable, Codable{
    let id: String
    let title: String
    let isComleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isComleted: Bool) {
        self.id = id
        self.title = title
        self.isComleted = isComleted
    }
    
    func updateComletion() -> ItemModal {
        return ItemModal(id: id, title: title, isComleted: !isComleted)
    }
}


