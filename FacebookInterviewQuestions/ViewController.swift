//
//  ViewController.swift
//  FacebookInterviewQuestions
//
//  Created by Kanakaraju Gandreddi on 12/05/21.
//

import UIKit

//class Record {
//    let id: UUID
//    let score: Int
//}
//
//class Ahelete {
//    var record: [Record] = [Record]()
//    var athId: UUID
//    var score: Int
//
//}

// 1.  Since the above code is executed concurrently and is being executed in a multi-threaded environment, what problems can arrive given the above context?
// 2. Add function in the Athelte class to get a record for particular ID and add a function to save a record in the local array


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let array = [1, 10, 20, 0, 59, 63, 0, 88, 0]
        
        let sortedArray = array.sorted()
        
        print(sortedArray)
        
        
        let name: String?
        let lastName: String!
        let  gender: String
        name = nil
        lastName = nil
        // gender = nil
        
        
        let vegetable = "red pepper1"
        switch vegetable {
        case "celery":
            print("Add some raisins and make ants on a log.")
        case "cucumber", "watercress":
            print("That would make a good tea sandwich.")
        case let x where x.hasSuffix("pepper"):
            print("Is it a spicy \(x)?")
        default:
            print("Everything tastes good in soup.")
        }
        
        getLargestNumberFromInterestingNumber()
        
        var someString = "hello"
        var anotherString = "world"
        
        swapTwoValues(&someString, valueB: &anotherString)
        
        fibonacciSeries()
        
        findSumOfItsDigitsOfGivenNumber()
        reverseGivenNumber()
        palindromNumberOrNot()
        armStrongNumberOrNot()
        
        reversestring()
        primeOrNot()
        fizBuzz()
    }
    
    func getLargestNumberFromInterestingNumber() {
        
        let interestingNumbers = [
            
            "Prime": [2, 3, 5, 7, 9, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25]
        ]
        
        var largest = 0
        
        for (_, numbers) in interestingNumbers {
            
            for number in numbers {
                
                if number > largest {
                    largest = number
                }
            }
        }
        print("====================")
        
        print(largest)
        
        print("====================")
        findSumMinMax()
    }
    
    func findSumMinMax() {
        let numbersArray = [10,1,5,20,14]
        var min = numbersArray[0]
        var max = numbersArray[0]
        var sum = 0
        
        
        for number in numbersArray {
            if number > max {
                max = number
            } else if number < min {
                min = number
            }
            
            sum += number
            
            
            
        }
        
        print(min)
        print(max)
        print(sum)
    }
    
    
    
    func swapTwoValues<T>(_ valueA: inout T, valueB: inout T) {
        print(valueA, valueB)
        
        print("==========================")
        let tempValue = valueA
        valueA = valueB
        valueB = tempValue
        
        print(valueA, valueB)
        
        
    }
    
    func fibonacciSeries() {
        let toLimit = 10
        var f1 = 0
        var f2 = 1
        var temp = 0
        print("fibonacciSeries")
        
        for _ in 1...toLimit {
            
            print(f1)
            if temp > toLimit {
                return
            }
            temp = f1 + f2
            f1 = f2
            f2 = temp
        }
    }
    
    func findSumOfItsDigitsOfGivenNumber() {
        var givenNumber = 155
        var r = 0, sum = 0
        
        while givenNumber > 0 {
            r = givenNumber % 10
            sum += r
            givenNumber = givenNumber / 10
        }
        print("findSumOfItsDigitsOfGivenNumber")
        
        print(sum)
    }
    
    func reverseGivenNumber() {
        var givenNumber = 155
        var r = 0, sum = 0
        while givenNumber > 0 {
            r = givenNumber % 10
            sum = sum * 10 + r
            givenNumber = givenNumber / 10
        }
        print("reverseGivenNumber")
        
        print(sum)
    }
    
    func palindromNumberOrNot() {
        var givenNumber = 151
        var r = 0, sum = 0
        let temp = givenNumber
        while givenNumber > 0 {
            r = givenNumber % 10
            sum = sum * 10 + r
            givenNumber = givenNumber / 10
        }
        
        givenNumber = temp
        print("PalindromNumberOrNot")
        
        if sum == givenNumber {
            print("Palindrom")
            
        } else {
            print("Not Palindrom")
            
        }
        print(sum)
    }
    
    func armStrongNumberOrNot() {
        var givenNumber = 155
        var r = 0, sum = 0
        let temp = givenNumber
        while givenNumber > 0 {
            r = givenNumber % 10
            
            sum = sum + r * r * r
            givenNumber = givenNumber / 10
        }
        
        givenNumber = temp
        print("armStrongNumberOrNot")
        if sum == givenNumber {
            print("Armstrong")
        } else {
            print("Not Armstrong")
        }
        print(sum)
    }
    
    func reversestring() {
        print("reversestring")

        let str = "hello"
        var result = ""
        for i in 1...str.count {
            let index = str.index(str.endIndex, offsetBy: -i)
            result.append(str[index])
        }
        print(result)
    }
    
    func primeOrNot() {
        print("primeOrNot")

        let givenNumber = 4
        var count = 0
        
        for i in 1...givenNumber {
            if givenNumber % i == 0 {
                count = count + 1
            }
        }
        
        if count == 2 {
            print("Prime")

        } else {
            print("Not Prime")

        }
    }
    
    func fizBuzz() {
        for number in 1...100 {
        
            print("number", number)

            if number % 3 == 0 && number % 5 == 0 {
                print("FizzBuzz")

            } else if number % 3 == 0 {
                print("Fizz")

                
            } else if number % 5 == 0 {
                print("Buzz")

            }
        }
    }
    
    func isPalindrom( value: String) -> Bool {
        
        let midLen = value.count / 2
        
        for i in 0..<midLen {
            let start = value.index(value.startIndex, offsetBy: i)
            let end = value.index(value.endIndex, offsetBy: (i * -1) - 1)
            if value[start] != value[end] {
                return false
            }
        }
        
        return false
    }
}


//FizzBuzz is a coding challenge. Its instructions are:

//Write a program that prints the numbers from 1 to 100
//For numbers divisible by 3, print “Fizz”
//For numbers divisible by 5, print “Buzz”
//For numbers divisible by both 3 and 5, print “FizzBuzz”
