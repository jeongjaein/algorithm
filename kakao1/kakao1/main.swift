//
//  main.swift
//  kakao1
//
//  Created by 정재인 on 2021/04/03.
//


//[[1, 0, 0], [1, 1, 0], [1, 1, 0], [1, 0, 1], [1, 1, 0], [0, 1, 1]], 2

import Foundation


func solution(_ gift_cards:[Int], _ wants:[Int]) -> Int {
    var giftList: [Int?] = gift_cards
    
    wants.forEach { wantsItem in
        if let find = giftList.firstIndex(where: { $0 ==  wantsItem}) {
            giftList[find] = nil
        }
    }
    return giftList.filter({ $0 != nil }).count
}
