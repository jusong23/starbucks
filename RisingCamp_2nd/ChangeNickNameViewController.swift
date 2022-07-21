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
            let Alert = UIAlertController(
                title: "닉네임이 저장되었습니다.", message: "변경신청은 매월 1일~말일까지 최대 4회까지 가능합니다",
                preferredStyle: UIAlertController.Style.alert
            )
        
            let AllowAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)

            Alert.addAction(AllowAction)
                    
            present(Alert, animated: true, completion: nil)

    }
    
    @IBAction func backToTheAccountInfoViewController(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
