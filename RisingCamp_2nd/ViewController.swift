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
        self.WhatsnewAndCouponVIew.layer.borderWidth = 0
        self.WhatsnewAndCouponVIew.layer.shadowColor = UIColor.black.cgColor
        self.WhatsnewAndCouponVIew.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.WhatsnewAndCouponVIew.layer.shadowOpacity = 0.2
        self.pushMessage()
    }

    func pushMessage() {
        let Alert = UIAlertController(
            title: "'스타벅스'에서 알림을 보내고자 합니다.",
            message: "경고, 사운드 및 아이톤 배치가 알림에 포함될 수 있습니다. 설정에서 이를 구성할 수 있습니다.",
            preferredStyle: UIAlertController.Style.alert
        )
        let notAllowAction = UIAlertAction(title: "허용 안 함", style: UIAlertAction.Style.default, handler: {_ in
            UIApplication.shared.perform(#selector(NSXPCConnection.suspend))
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                exit(0)
            }
            })
        let AllowAction = UIAlertAction(title: "허용", style: UIAlertAction.Style.default, handler: nil)
                
        
        Alert.addAction(notAllowAction)
        Alert.addAction(AllowAction)
                
        present(Alert, animated: true, completion: nil)
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
