func getLargestPrimeFactor(number : Int) -> Int{
    var divider = 2
    var number = number
    
    while(number != divider){
        (number % divider == 0) ? (number = number / divider) : (divider += 1)
    }
    return divider
}

getLargestPrimeFactor(number : 600851475143)

