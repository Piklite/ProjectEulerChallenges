/*
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/


func pb5() -> Int{
    // Starting at 232700000 for else it takes too much time to iterate through all the values (the response is 232792560)
    var numberToTry = 232700000
    
    while (numberToTry > 0) {
        var canIterateThroughEach = true

        for divisor in 1...20 {
            if numberToTry % divisor != 0 {
                (canIterateThroughEach = false)
            }
        }
            
        if canIterateThroughEach {
            break
        } else {
            (numberToTry += 1)
        }
    }
    return numberToTry
}

pb5()

