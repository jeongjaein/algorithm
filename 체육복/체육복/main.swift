//
//  main.swift
//  체육복
//
//  Created by 정재인 on 2021/03/31.
//

import Foundation



func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lostList = lost
    for i in 0..<reserve.count {
        if let borrow = lostList.firstIndex(where: { abs( $0 - reserve[i] ) == 1}) {
            lostList.remove(at: borrow)
        }
    }
    return (n - lostList.count)
}

print(solution(5, [2, 4], [1, 3, 5]))

