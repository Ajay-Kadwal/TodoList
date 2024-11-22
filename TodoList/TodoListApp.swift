//
//  TodoListApp.swift
//  TodoList
//
//  Created by AJAY KADWAL on 18/11/24.
//

import SwiftUI


@main
struct TodoListApp: App {
    @StateObject var listViewModel: ListViewModal = ListViewModal()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView( )
            }
            .navigationViewStyle(StackNavigationViewStyle()) 
            .environmentObject(ListViewModal())
        }
    }
}
