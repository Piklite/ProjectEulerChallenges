/*
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 
 What is the 10 001st prime number?
 */

func pb7(endOfRange : Int) -> Int{
    var primesArray : [Int] = [2]
    var numberToTry = 3;
    var divisor = 2
    
    while (primesArray.count <= endOfRange) {
        while (numberToTry % divisor != 0) {
            (divisor += 1)
            if (divisor == numberToTry) {
                primesArray.append(numberToTry)
                break
            }
        }
        (numberToTry += 1)
        (divisor = 2)
    }
    return primesArray[endOfRange - 1]
}


print(pb7(endOfRange : 10001))
