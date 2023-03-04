//
//  Comment.swift
//  Socialcademy
//
//  Created by andrew austin on 3/4/23.
//

import Foundation

struct Comment: Identifiable, Equatable, Codable {
    var content: String
    var author: User
    var timestamp = Date()
    var id = UUID()
}

extension Comment {
    static let testComment = Comment(content: "Lorem ipsum dolor set amet.", author: User.testUser)
}
