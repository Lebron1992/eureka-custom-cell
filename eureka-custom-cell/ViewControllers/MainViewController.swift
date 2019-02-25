//
//  MainViewController.swift
//  eureka-custom-cell
//
//  Created by 曾文志 on 2019/2/24.
//  Copyright © 2019 Lebron. All rights reserved.
//

import UIKit
import Eureka

class MainViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Custom Cells"
        
        let url = URL(string: "http://pic4.nipic.com/20091108/2904378_211137045663_2.jpg")!
        let user = User(
            name: "Lebron",
            email: "lebron@test.com",
            avatarUrl: url)
        
        form +++ Section()
            <<< UserInfoRow { row in
                row.value = user
            }
            +++ Section("其他信息")
            <<< PhoneRow {
                $0.title = "手机号："
        }
    }

}
