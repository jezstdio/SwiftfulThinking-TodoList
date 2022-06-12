//
//  ItemModel.swift
//  TodoList
//
//  Created by Jez Gábor on 2022. 06. 12..
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
