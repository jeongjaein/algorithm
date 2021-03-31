//
//  main.swift
//  체육복
//
//  Created by 정재인 on 2021/03/31.
//

import Foundation



func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lostHead = 0
    var borrow = 0
    for i in 0..<reserve.count {
        if abs(lost[lostHead] - reserve[i]) == 1 {
            lostHead += 1
            borrow += 1
            if lostHead >= lost.count {
                break
            }
        }
    }
    return (n - lost.count + borrow)
}

print(solution(5, [2, 4], [1, 3, 5]))

