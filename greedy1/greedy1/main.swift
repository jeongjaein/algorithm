//
//  main.swift
//  greedy1
//
//  Created by 정재인 on 2021/03/30.
//

import Foundation

let firstInput = readLine()!
var separated = firstInput.components(separatedBy: " ")
var n = separated.map { Int($0)! }

var k: [Int] = []

for _ in 0..<n.first! {
    k.append(Int(readLine()!)!)
}

print(solution(n: n.last!, k: k))

func solution(n: Int, k: [Int]) -> Int {
    var target = n
    var result = 0
    for i in (0..<k.count).reversed() {
        if k[i] < n {
            result += target / k[i]
            target = target % k[i]
        }
    }
    return result
}

