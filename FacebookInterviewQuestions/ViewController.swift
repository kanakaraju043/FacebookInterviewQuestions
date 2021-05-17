//
//  ViewController.swift
//  FacebookInterviewQuestions
//
//  Created by Kanakaraju Gandreddi on 12/05/21.
//

import UIKit

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
}


