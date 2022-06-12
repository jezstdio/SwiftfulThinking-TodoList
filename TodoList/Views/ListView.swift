//
//  ListView.swift
//  TodoList
//
//  Created by Jez Gábor on 2022. 06. 12..
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first.",
        "This is the second.",
        "This is the third."
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📋")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: { AddView() })
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
