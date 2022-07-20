//
//  OrderViewController.swift
//  RisingCamp_2nd
//
//  Created by 이주송 on 2022/07/18.
//

import UIKit

class OrderViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self

    }
}

extension OrderViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true

        print(self.scrollView.contentOffset.y)
        if self.scrollView.contentOffset.y > -143 {
            navigationItem.largeTitleDisplayMode = .never

        } else {
            navigationItem.largeTitleDisplayMode = .always


        }
    }
}
