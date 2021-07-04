//
//  ToDoItemModel.swift
//  ToDoItemModel
//
//  Created by Kirill Kostarev on 04.07.2021.
//

import Foundation

public enum Importance: String {
    case unimportant
    case normal
    case important

    public static func element(at index: Int) -> Importance? {
        let elements = [Importance.unimportant, Importance.normal, Importance.important]

        if index >= 0, index < elements.count {
            return elements[index]
        } else {
            return nil
        }
    }

    public static func index(with element: Importance) -> Int {
        let elements = [Importance.unimportant, Importance.normal, Importance.important]
        return elements.firstIndex(of: element) ?? 1
    }
}

public struct ToDoItem {
    let uid: String
    let text: String
    let importance: Importance
    let isDone: Bool
    let isDirty: Bool
    let deadline: Date?
    let createdAt: Int
    let updatedAt: Int?

    init(uid: String = UUID().uuidString,
         text: String,
         importance: Importance = .normal,
         isDone: Bool = false,
         isDirty: Bool = false,
         deadline: Date? = nil,
         createdAt: Int = Int(Date().timeIntervalSince1970),
         updatedAt: Int? = nil) {
        self.uid = uid
        self.text = text
        self.importance = importance
        self.isDone = isDone
        self.isDirty = isDirty
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deadline = deadline
    }
}
