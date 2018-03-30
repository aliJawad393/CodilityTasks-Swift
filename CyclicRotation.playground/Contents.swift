//: Playground - noun: a place where people can play

/*
 A zero-indexed array A consisting of N integers is given. Rotation of the array means that each element is shifted right by one index, and the last element of the array is moved to the first place. For example, the rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7] (elements are shifted right by one index and 6 is moved to the first place).
 
 The goal is to rotate array A K times; that is, each element of A will be shifted to the right K times.
 
 Write a function:
 
 public func solution(_ A : inout [Int], _ K : Int) -> [Int]
 that, given a zero-indexed array A consisting of N integers and an integer K, returns the array A rotated K times.
 
 For example, given
 
 A = [3, 8, 9, 7, 6]
 K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:
 
 [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
 [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
 [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 For another example, given
 
 A = [0, 0, 0]
 K = 1
 the function should return [0, 0, 0]
 
 Given
 
 A = [1, 2, 3, 4]
 K = 4
 the function should return [1, 2, 3, 4]
 
 Assume that:
 
 N and K are integers within the range [0..100];
 each element of array A is an integer within the range [−1,000..1,000].
 In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.
 */

import UIKit

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    
    if (K < 0 || K > 100 || A.count == 0) {
        return [];
    }
    
    if (A.count == 1) {
        return A;
    }
    
    for _ in 0...(K - 1) {
        let lastIndex = A.removeLast()
        A.insert(lastIndex, at: 0)
    }
    
    
    return A
}

// Testing solution 1

var tem = [1,2,3,4,5]
solution(&tem, 2)
print(tem)


//// Solution 2


public func solution2(_ A : inout [Int], _ K : Int) -> [Int] {
    var ret: [Int] = [];

    if (K < 0 || K > 100 || A.count == 0) {
        return ret;
    }
    
    if (A.count == 1) {
        return A;
    }
    
    ret = A
    for i in 0...(K - 1) {
        ret[(i + K) % A.count] = A[i];
    }
    
    return ret
}

// Testing solution 2
var tem2 = [1,2,3,4,5]
solution2(&tem2, 2)
print(tem)
