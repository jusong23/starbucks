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
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.scrollView.delegate = self
        
        self.starbucksCard.layer.borderWidth = 0.3
        self.starbucksCard.layer.borderColor = UIColor.lightGray.cgColor
        self.starbucksCard.layer.cornerRadius = 10
        
        self.backgroundView.layer.borderWidth = 0
        self.backgroundView.layer.shadowColor = UIColor.black.cgColor
        self.backgroundView.layer.shadowOffset = CGSize(width: 2, height: 5)
        self.backgroundView.layer.shadowOpacity = 0.2    }
    

}


extension PayViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true

        print(self.scrollView.contentOffset.y)
        if self.scrollView.contentOffset.y > 0
        {
            navigationItem.largeTitleDisplayMode = .never

        } else {
            navigationItem.largeTitleDisplayMode = .always


        }
    }
}
