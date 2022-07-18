//
//  OtherViewController.swift
//  RisingCamp_2nd
//
//  Created by 이주송 on 2022/07/18.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var otherView: UIView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var InfoTap: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.otherView.layer.borderWidth = 0
        self.otherView.layer.shadowColor = UIColor.black.cgColor
        self.otherView.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.otherView.layer.shadowOpacity = 0.2
        
        self.InfoTap.layer.borderWidth = 0.3
        self.InfoTap.layer.borderColor = UIColor.lightGray.cgColor
        self.InfoTap.layer.cornerRadius = 10
        
    }
    
    
    
    
    

}

extension OtherViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    
        if self.scrollView.contentOffset.y > 0 {
            self.navigationItem.title = "Other"
        } else {
            self.navigationItem.title = ""
        }
    }
}
