/*
 A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
 Find the largest palindrome made from the product of two 3-digit numbers.
 */

var solution : Int = 0

func solvePb4() -> Int {
    for firstFactor in 100...999{
        for secondFactor in 100...999{
            let product = (secondFactor * firstFactor)
            if (solution < product) {
                let stringResult =  String(product)
                let stringResultReversed = String(stringResult.reversed())
                if (stringResult == stringResultReversed && product > 100000) {
                    solution = product;
                }
            }
        }
    }
    return solution
}

solvePb4()
