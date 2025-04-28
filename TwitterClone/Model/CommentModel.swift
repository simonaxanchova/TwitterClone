//
//  CommentModel.swift
//  TwitterClone
//
//  Created by Simona Anchova on 28.4.25.
//

import Foundation

final class CommentModel {
    let commentId: String
    let author: UserModel
    let text: String
    let timestamp: Date
    
    init(commentId: String, author: UserModel, text: String, timestamp: Date) {
        self.commentId = commentId
        self.author = author
        self.text = text
        self.timestamp = timestamp
    }
}
