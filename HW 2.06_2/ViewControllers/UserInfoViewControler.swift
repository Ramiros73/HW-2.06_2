//
//  ViewController.swift
//  HW 2.06_2
//
//  Created by Рамиль Хамидуллин on 07.07.2023.
//

import UIKit

class UserInfoViewControler: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.name
        nameLabel.text = user.person.surname
        nameLabel.text = user.person.job
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
    
