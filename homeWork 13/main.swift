//
//  main.swift
//  homeWork 13
//
//  Created by Seroj on 10.06.22.
//

import Foundation

//homeWork 13.1


class Age {
    var age: Int = 10
    var ageInWords: String {
        get {
        "age is \(age)"
        }
    }
}

let exemp = Age()
print(exemp.ageInWords)


//homeWork 13.2


class Age {
    var age: Int = 10
    var ageInWords: String {
        get {
             return "age is \(age)"
        }
        set {
             age = Int(newValue) ?? age
        }
    }
}

let exemp = Age()
print(exemp.ageInWords)
exemp.age = 12
print(exemp.ageInWords)


//homeWork 13.3


struct Slots {
    var slot: String
    var slot1: Int? {
        get {
             return Int(slot) ?? nil
        }
        set {
            if let newSlot = newValue {
                slot = String(newSlot)
            }
        }
    }
}
var exemple = Slots(slot: "555")
print(exemple.slot1)
exemple.slot1 = 777
print(exemple.slot)


//homeWork 13.4


struct Math {
    var num1: Int = 10
    var num2: Int = 5

    var sum: Double {
        Double(num1) + Double(num2)
    }
    var diff: Double {
        Double(num1) - Double(num2)
    }
    var multipy: Double {
        Double(num1) * Double(num2)
    }
    var div: Double {
        Double(num1) / Double(num2)
    }
}

let exemple = Math()
print(exemple.div)


//homeWork 13.5


struct Numbers {
    var arr: [Int]
    var arrString: String {
        var str = ""
        for item in arr {
            str.append(String(item))
            str.append(",")
        }
        str.remove(at: str.index(before: str.endIndex))
        return str
    }
}
let exemp = Numbers(arr: [1, 44, 54, 12])
print(exemp.arrString)


//homeWork 13.6


struct Average {
    var numbers: [Int]
    var averageNum: Double {
        var result = 0
        for item in numbers {
            result += item
        }
        return Double(result / numbers.count)
    }
}

var exemple = Average(numbers: [1, 6, 3, 4, 1])
print(exemple.averageNum)


//homeWork 13.7


struct UserAge {
    var dict: [String : Int] = ["Sargis" : 34, "Anush" : 21]

    var dictKeys: [String] {
        Array(dict.keys)
    }
    var dictValues: [Int] {
        Array(dict.values)
    }
}
let exemp = UserAge()

print(exemp.dictKeys)
print(exemp.dictValues)






//homeWork 13.1

//class Age {
//    var age: Int = 10
//    var ageInWords: String {
//        "Ten"
//    }
//}
//
//let exemp = Age()
//print(exemp.ageInWords)

////////////////////////////////////////////////

//class Age {
//    var age: Int = 23
//    var ageInWords: String {
//        get {
//            let dictionary = [age : "twenty-three"]
//            return "\(dictionary.values)"
//        }
//    }
//}
//
//let exemp = Age()
//print(exemp.ageInWords)

/////////////////////

//class BmwModel {
//    var model: Int = 300
//    var modelInterpolation: String {
//        get {
//            "\(model)"
//        }
//    }
//}
//let exemp2 = BmwModel()
//print(exemp2.modelInterpolation)

//////////////////////////////////////////////

//class SchoolClass {
//    var classNum: Int = 11
//    var classNumWord: String {
//        switch classNum {
//        case 1:
//            return "One"
//        case 2:
//            return "Two"
//        case 3:
//            return "Three"
//        case 4:
//            return "Four"
//        case 5:
//            return "Five"
//        case 6:
//            return "Six"
//        case 7:
//            return "Seven"
//        case 8:
//            return "Eight"
//        case 9:
//            return "Nine"
//        case 10:
//            return "Ten"
//        default:
//            break
//        }
//        return "\(classNum)"
//    }
//}
//var exemp = SchoolClass()
//print(exemp.classNumWord)
