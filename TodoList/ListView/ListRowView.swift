//
//  ListRowView.swift
//  TodoList
//
//  Created by AJAY KADWAL on 18/11/24.
//

import SwiftUI

struct ListRowView: View {
     
    let item: ItemModal
    
    var body: some View {
        HStack {
            Image(systemName: item.isComleted ?  "checkmark.circle" : "circle")
                .foregroundStyle(item.isComleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    let item1 = ItemModal(title: "First Item!", isComleted: false)
    let item2 = ItemModal(title: "Second Item!", isComleted: true)
    
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
//    .previewLayout(.sizeThatFits)
}
