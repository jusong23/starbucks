//
//  PayViewController.swift
//  RisingCamp_2nd
//
//  Created by 이주송 on 2022/07/18.
//

import UIKit

class PayViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var starbucksCard: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.starbucksCard.layer.borderWidth = 0.3
        self.starbucksCard.layer.borderColor = UIColor.lightGray.cgColor
        self.starbucksCard.layer.cornerRadius = 10
        
        self.backgroundView.layer.borderWidth = 0
        self.backgroundView.layer.shadowColor = UIColor.black.cgColor
        self.backgroundView.layer.shadowOffset = CGSize(width: 2, height: 5)
        self.backgroundView.layer.shadowOpacity = 0.2    }
    

}

// 스크롤 내려가면 navigation title 나오게
