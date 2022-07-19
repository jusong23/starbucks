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
        self.navigationController?.navigationBar.layer.borderWidth = 0
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.navigationController?.navigationBar.layer.shadowOpacity = 0.2    }
    
    @IBAction func tapSaveButton(_ sender: Any) {
        self.delegate?.sendNickName(name: self.textField.text ?? "")
        print("저장되었습니다.")
    }
    
    @IBAction func backToTheAccountInfoViewController(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
