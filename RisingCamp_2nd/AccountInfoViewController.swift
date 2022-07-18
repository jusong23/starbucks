//
//  AccountInfoViewController.swift
//  RisingCamp_2nd
//
//  Created by 이주송 on 2022/07/18.
//

import UIKit

class AccountInfoViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.navigationController?.navigationBar.isHidden = true

    }
    
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func changeUserNickName(_ sender: Any) {
        guard let AccountInfoViewController = self.storyboard?.instantiateViewController(withIdentifier: "ChangeNickNameViewController") else { return }
            self.navigationController?.pushViewController(AccountInfoViewController, animated: true)
    }
    
    
}


extension AccountInfoViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    
        if self.scrollView.contentOffset.y > 0 {
            UIView.animate(withDuration: 2, animations: {            self.navigationItem.title = "계정정보"
            })
        } else {
            UIView.animate(withDuration: 2, animations: {            self.navigationItem.title = ""
            })

        }
    }
}
