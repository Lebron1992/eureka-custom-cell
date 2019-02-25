//
//  UserInfoTableViewCell.swift
//  eureka-custom-cell
//
//  Created by 曾文志 on 2019/2/24.
//  Copyright © 2019 Lebron. All rights reserved.
//

import UIKit
import Eureka

final class UserInfoTableViewCell: Cell<User>, CellType {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func setup() {
        super.setup()
        
        selectionStyle = .none
        backgroundColor = UIColor(red:0.984, green:0.988, blue:0.976, alpha:1.00)
        
        avatarImageView.contentMode = .scaleToFill
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.cornerRadius = 5
        
        nameLabel.font = .systemFont(ofSize: 18)
        nameLabel?.textColor = .gray
        
        emailLabel.font = .systemFont(ofSize: 13)
        emailLabel?.textColor = .gray
        
        // 设置 cell 的高度
        height = { 94 }
    }
    
    override func update() {
        super.update()
        
        guard let user = row.value else {
            return
        }
        
        if let url = user.avatarUrl, let data = try? Data(contentsOf: url) {
            avatarImageView.image = UIImage(data: data)
        } else {
            avatarImageView.image = UIImage(named: "avatar_placeholder")
        }
        
        nameLabel.text = user.name
        emailLabel.text = user.email
    }
}
