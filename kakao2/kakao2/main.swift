//
//  main.swift
//  kakao2
//
//  Created by 정재인 on 2021/04/03.
//

import Foundation

  // 0          01          01          02          01          12
//[[1, 0, 0], [1, 1, 0], [1, 1, 0], [1, 0, 1], [1, 1, 0], [0, 1, 1]], 2  >> 4


//[2,1,2,2]    [[1,2],[1,3],[2,4]]    [4,5]

var result = 0
var staticPassenger: [Int]?

func solution(_ n:Int, _ passenger:[Int], _ train:[[Int]]) -> [Int] {
    staticPassenger = passenger
    for i in 0..<train.count {
        nextTrain(train[i][1])
    }
}


solution(6, [1,1,1,1,1,1], [[1,2],[1,3],[1,4],[3,5],[3,6]])

func nextTrain(_ : Int ) -> Int{
    
}





//func solution(_ needs:[[Int]], _ r:Int) -> Int {
//    var partsRanking: [(Int, Int)] = []
//    var partsList = [Int].init(repeating: 0, count: r)
//    var requredPartsList: [[Int]]
//    var result = 0
//
//    needs.forEach { row in
//        for i in 0..<row.count {
//            if partsRanking.count <= i {
//                partsRanking.append((0, i))
//            }
//            if row[i] == 1 {
//                partsRanking[i].0 += 1
//            }
//        }
//    }
//    partsRanking.sort(by: >)
//    needs.forEach { row in
//        var tempRow = row
//        for i in 0..<r {
//            if tempRow[partsRanking[i].1] == 1 {
//                tempRow[partsRanking[i].1] = 0
//            }
//        }
//        if tempRow.reduce(0, +) == 0 {
//            result += 1
//        }
//    }
//    return result
//}
//
//solution([[1, 0, 0], [1, 1, 0], [1, 1, 0], [1, 0, 1], [1, 1, 0], [0, 1, 1]], 2)
