//
//  OrderViewController.swift
//  RisingCamp_2nd
//
//  Created by 이주송 on 2022/07/18.
//

import UIKit

class OrderViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    struct menuList {
        static var instances = 0

        let image: String
        let name: String
        let sub: String
        
        init(image:String, name:String, sub:String)
         {
             self.image = image
             self.name = name
             self.sub = sub
             menuList.instances += 1
         }
    }
    

    var one = menuList(image: "IMG_1632.jpg",name: "에스프레소 콘 파냐",sub: "Espresso Con Panna")
    var two = menuList(image: "IMG_1633.jpg",name: "에스프레소 마키아또",sub: "Espresso Macchiato")
    var three = menuList(image: "IMG_1634.jpg",name: "아이스 카페 아메리카노",sub: "Ice Americano")
    var four = menuList(image: "IMG_1635.jpg",name: "카페 아메리카노",sub: "Americano")
    var five = menuList(image: "IMG_1636.jpg",name: "아이스 카라멜 마키아또",sub: "Ice Carmel Macchiato")
    var six = menuList(image: "IMG_1645.jpg",name: "콜드 브루 몰트",sub: "Cold Brew Molt")
    var seven = menuList(image: "IMG_1646.jpg",name: "콜드 브루 플로트",sub: "Cold Brew Float")

    var exMenuList = [menuList]()


// 배열안에 구조체 두기 (갯수 & 인덱스로 가져와 이미지 넣기)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self
        self.tableView.dataSource = self
        self.exMenuList.append(one)
        self.exMenuList.append(two)
        self.exMenuList.append(three)
        self.exMenuList.append(four)
        self.exMenuList.append(five)
        self.exMenuList.append(six)
        self.exMenuList.append(seven)
        print(exMenuList)
        print(menuList.instances)
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

extension OrderViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuList.instances
    }//셀 갯수

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.menuImage.image = UIImage(named: exMenuList[indexPath.row].image)
        cell.TitleLabel.text = exMenuList[indexPath.row].name
        cell.SubLabel.text = exMenuList[indexPath.row].sub
        return cell
    } //.  dequeue~ 는 셀을 재사용해서 넣기 위함
}
