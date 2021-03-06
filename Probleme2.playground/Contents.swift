import UIKit

/*
 Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
 By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
*/


func solution() -> Int{

    var num1 = 0
    var num2 = 1
    var sum = 0

    while num1 < 4000000 {
        let num = num1 + num2
        num2 = num1
        num1 = num
        
        if num % 2 == 0{
           sum += num
        }
    }
    return sum
}

print(solution())









