//
//  UserInfoRow.swift
//  eureka-custom-cell
//
//  Created by 曾文志 on 2019/2/24.
//  Copyright © 2019 Lebron. All rights reserved.
//

import Foundation
import Eureka

final class UserInfoRow: Row<UserInfoTableViewCell>, RowType {
    required init(tag: String?) {
        super.init(tag: tag)
        cellProvider = CellProvider<UserInfoTableViewCell>(nibName: "UserInfoTableViewCell")
    }
}
