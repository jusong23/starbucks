//
//  OtherViewController.swift
//  RisingCamp_2nd
//
//  Created by 이주송 on 2022/07/18.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var nickName_OTHER: UILabel!
    @IBOutlet weak var otherView: UIView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var InfoTap: UIView!
    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        self.otherView.layer.borderWidth = 0
        self.otherView.layer.shadowColor = UIColor.black.cgColor
        self.otherView.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.otherView.layer.shadowOpacity = 0.2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.nickName_OTHER.text = UserDefaults.standard.string(forKey: "NICKNAME") ?? "이주송"
        
    }

    
    @IBAction func TapToTheAccountInfo(_ sender: Any) {
        guard let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "AccountInfoViewController") as? AccountInfoViewController else { return }
// 다운 캐스팅 하여 as? 뒤에 있는 요소에 접근할 수 있다.
// self.AccountInfoViewController.text (앞에 바뀐 text 가져와보기
        self.navigationController?.pushViewController(ViewController, animated: true)
    }
    
}

extension OtherViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    
        self.navigationController?.navigationBar.prefersLargeTitles = true

        print(self.scrollView.contentOffset.y)
        if self.scrollView.contentOffset.y > 0 {
            navigationItem.largeTitleDisplayMode = .never
            self.otherView.isHidden = false
        } else {
            navigationItem.largeTitleDisplayMode = .always
            self.otherView.isHidden = true
        }
    }
}

extension OtherViewController: SendNickNameDelegate {
    func sendNickName(name: String) {
        self.nickName_OTHER.text = name
    }
}


