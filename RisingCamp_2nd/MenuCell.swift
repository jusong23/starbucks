//
//  MenuCell.swift
//  RisingCamp_2nd
//
//  Created by 이주송 on 2022/07/21.
//

import Foundation

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




