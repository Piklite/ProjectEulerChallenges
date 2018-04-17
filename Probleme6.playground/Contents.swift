/*
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 */

func getSumOfSqrs(endOfRange: Int) -> Int {
    var arrayOfResults : [Int] = []
    for i in 1...endOfRange {
        let result = i * i
        arrayOfResults.append(result)
    }
    let sumOfSqrs = arrayOfResults.reduce(0, +);
    return sumOfSqrs
}

func getSqrOfSums(endOfRange: Int) -> Int{
    var arrayOfResults: [Int] = []
    for i in 1...endOfRange{
        arrayOfResults.append(i)
    }
    let sumOfResults = arrayOfResults.reduce(0, +)
    let sqrOfSums = sumOfResults * sumOfResults
    return sqrOfSums
}



func getSolution(endOfRange: Int){
    let solution = getSqrOfSums(endOfRange: endOfRange) - getSumOfSqrs(endOfRange: endOfRange)
    print(solution);
}


getSolution(endOfRange : 100)

