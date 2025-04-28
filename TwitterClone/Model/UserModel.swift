//
//  UserModel.swift
//  TwitterClone
//
//  Created by Simona Anchova on 28.4.25.
//

import Foundation

final class UserModel {
    let userId: String
    let username: String
    let fullName: String
    
    init(userId: String, username: String, fullName: String) {
        self.userId = userId
        self.username = username
        self.fullName = fullName
    }
}
