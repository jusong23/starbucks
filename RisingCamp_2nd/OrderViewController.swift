//
//  OrderViewController.swift
//  RisingCamp_2nd
//
//  Created by 이주송 on 2022/07/18.
//

import UIKit

class OrderViewController: UIViewController {
    
//    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self
//        self.tableView.dataSource = self
//        self.tableView.delegate = self
    }
    
    let label = ["1","2","3","4","5"]

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
        return 30
    }//셀 갯수


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
//        cell.myLabel?.text = label[indexPath.row]
        return cell
    } //.  dequeue~ 는 셀을 재사용해서 넣기 위함
    
 
}

extension OrderViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130
    }
    
    
}
