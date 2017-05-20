//: Playground - noun: a place where people can play

import UIKit

extension Double {
    func string(fractionDigits:Int) -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = fractionDigits
        formatter.maximumFractionDigits = fractionDigits
        return formatter.string(from: self as NSNumber) ?? "\(self)"
    }
}

var bankAccountBalance = 500.00

var drink = ("Drink", 2.00), breakfastBurrito = ("Breakfast Burrito", 8.00), bacon = ("Bacon", 5.00), biscuitsAndGravy = ("Biscuits and Gravy", 12.00), eggs = ("Eggs", 5.00), wholeMilk = ("Whole Milk", 2.00), waffles = ("Waffles", 5.00), bloodyMary = ("Bloody Mary", 5.00), mimosa = ("Mimosa", 5.00), coffee = ("Coffee", 2.00), mug = ("Mug", 10.00), tshirt = ("T-Shirt", 20.00)

func purchaseItem(currentBalance: inout Double, itemPrice: (String, Double)) -> Double {
    if itemPrice.1 > currentBalance {
        print("Payment denied: Balance Too Low")
        return currentBalance
    }
    else {
        print("Purchased \(itemPrice.0) for $\(itemPrice.1.string(fractionDigits: 2))")
        bankAccountBalance = bankAccountBalance - itemPrice.1
        return currentBalance
        
    }
}

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: breakfastBurrito)

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: drink)

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: bacon)

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: drink)

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: breakfastBurrito)

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: waffles)

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: wholeMilk)

var employeeSalaries: [Double] = [45000.00, 55000.00, 75000.00, 100000.00, 125000.00]

func increaseSalaryTenPercent(baseSalary: inout Double) {
    baseSalary = baseSalary + baseSalary * 0.1
}

//increaseSalaryTenPercent(baseSalary: &employeeSalaries[0])

//increaseSalaryTenPercent(baseSalary: &employeeSalaries[3])

func increaseAllSalariesTenPercent(salaries: inout Array<Double>){
    for i in 0..<employeeSalaries.count{
        increaseSalaryTenPercent(baseSalary: &employeeSalaries[i])
    }
}

increaseAllSalariesTenPercent(salaries: &employeeSalaries)

var namesOfIntegers = [Int:String]()

namesOfIntegers[3] = "three"

print(namesOfIntegers)

func alternateArrays(array1: Array<Any>, array2: Array<Any>) -> Array<Any> {
    
    var bigArray = [Any]()
    var smallArray = [Any]()
    
    var y = 0
    
    var minIndex: Int = 0
    var insertSpacing: Int = 0
    
    if array1.count < array2.count {
        minIndex = array1.count
        insertSpacing = array2.count/array1.count
        y = insertSpacing
        bigArray = array2
        smallArray = array1
    }
    else{
        minIndex = array2.count
        insertSpacing = array1.count/array2.count
        y = insertSpacing
        bigArray = array1
        smallArray = array2
    }
    
    for i in 0 ..< minIndex {
        bigArray.insert(smallArray[i], at: y)
        y += insertSpacing + 1
    }
    
    return bigArray
    
}

var testArrayOne: [Int] = [1,2,3,4]
var testArrayTwo: [String] = ["a","b","c","d","e"]
alternateArrays(array1: testArrayOne, array2: testArrayTwo)




