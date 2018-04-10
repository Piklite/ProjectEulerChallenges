import UIKit

func fibonacci(numberOfLoop n : Int) -> String{
    print(0)
    print(1)
    
    var num1 = 0
    var num2 = 1
    let num = num1 + num2
    var fiboOut = "\(num)"
    
    for _ in 1...n{
        fiboOut += "\n\(num)"
        num2 = num1
        num1 = num
        
    }
    return fiboOut
}

print(fibonacci(numberOfLoop : 10))









