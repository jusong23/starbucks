//
//  ChangeNickNameViewController.swift
//  RisingCamp_2nd
//
//  Created by 이주송 on 2022/07/18.
//

import UIKit

protocol SendNickNameDelegate: AnyObject {
    func sendNickName(name: String)
}

class ChangeNickNameViewController: UIViewController {

    weak var delegate: SendNickNameDelegate?

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapSaveButton(_ sender: Any) {
        self.delegate?.sendNickName(name: self.textField.text ?? "")
        print("저장되었습니다.")
    }
    
    @IBAction func backToTheAccountInfoViewController(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
