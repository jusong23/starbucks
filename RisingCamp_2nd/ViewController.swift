//
//  ViewController.swift
//  RisingCamp_2nd
//
//  Created by 이주송 on 2022/07/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var wellComeMessage: UIStackView!
    @IBOutlet weak var stampSet: UIStackView!
    @IBOutlet weak var WhatsnewAndCouponVIew: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scroll.delegate = self
    }
    
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(self.scroll.contentOffset.y)
        
        let nowScrollOffset = self.scroll.contentOffset.y
        let imageHeight = self.imageView.frame.height
        
        self.imageView.alpha = 1 - (nowScrollOffset / imageHeight )
        self.wellComeMessage.alpha = 1 - (nowScrollOffset / imageHeight)
        self.stampSet.alpha = 1 - (nowScrollOffset / imageHeight)
    }
}
