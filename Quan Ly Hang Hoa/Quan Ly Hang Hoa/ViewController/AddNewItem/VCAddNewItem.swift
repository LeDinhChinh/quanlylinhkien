//
//  VCAddNewItem.swift
//  Quan Ly Hang Hoa
//
//  Created by Admin on 12/13/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class VCAddNewItem: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button: UIButton = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: "icons8-checkmark-64"), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(addItem), for: UIControl.Event.touchUpInside)
        let barButton = UIBarButtonItem(customView: button)
        navigationItem.rightBarButtonItem = barButton
        navigationItem.title = "Thêm một sản phẩm mới"
    }

    @objc func addItem() {
        
    }
}
