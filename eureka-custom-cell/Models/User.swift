//
//  User.swift
//  eureka-custom-cell
//
//  Created by 曾文志 on 2019/2/24.
//  Copyright © 2019 Lebron. All rights reserved.
//

import Foundation

struct User {
    var name: String
    var email: String
    var avatarUrl: URL?
}

extension User: Equatable {
    static func ==(lhs: User, rhs: User) -> Bool {
        return lhs.email == rhs.email
    }
}
