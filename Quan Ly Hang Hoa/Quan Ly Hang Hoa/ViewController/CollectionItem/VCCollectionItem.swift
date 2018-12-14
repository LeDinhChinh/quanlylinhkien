//
//  ViewController.swift
//  Quan Ly Hang Hoa
//
//  Created by Admin on 12/13/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class VCCollectionItem: UIViewController {

    @IBOutlet weak var QLViewSelf: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let button: UIButton = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: "icons8-menu-50"), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(rightBarButton), for: UIControl.Event.touchUpInside)
        let barButton = UIBarButtonItem(customView: button)
        navigationItem.rightBarButtonItem = barButton
    }

    @objc func rightBarButton() {
        
    }

    @IBAction func VCAddNewItem(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VCAddNewItem") as! VCAddNewItem
        self.navigationController?.pushViewController(sb, animated: true)
    }
    
}
