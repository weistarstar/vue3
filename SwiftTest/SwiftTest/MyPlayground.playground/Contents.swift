import UIKit

var str = "Hello, playground"
print(str)


func swapValye(_ v1 : inout Int, _ v2 : inout Int) {
    
    (v1, v2) = (v1, v1)
//    let temp = v1
//
//    v1 = v2
//    v2 = temp
}

enum Derection : String {
    case north = "north"
    case south = "south"
    case east = "east"
    case west = "west"
}

print(Derection.west.rawValue)

enum Grade : String {
    case perfect = "A"
    case grest = "B"
    case test = "C"
    case resu = "D"
}

print(Grade.resu)

var num1 = 10
var num2 = 20

swapValye(&num1, &num2)

print("num1 == \(num1), num2 == \(num2)")


func next(_ input: Int) -> Int {
    
    input + 1
}

func pre(_ input: Int) -> Int {
    
    input - 1
}

func forwor(_ forsd: Bool) -> (Int) -> Int {
    forsd ? next : pre
}

forwor(true)(3)
forwor(false)(3)

outer: for i in 1...4 {
    for k in 1...4 {
        
        if k == 3 {
            continue outer
        }
        
        if i == 3 {
            break outer
        }
        
        print("i == \(i), k == \(k)")
    }
}


/// 求和【概述】
///
///
/// 将两个数相加
///
/// - Parameters:
///   - v1: 第一个整数
///   - v2: 第二个整数
/// - Returns: 测试
///
/// - Note:传入两个整数即可【批注】
func caculate(v1 : Int, v2 : Int) -> (sum : Int, difference : Int, average : Int) {
    let sum = v1 + v2;
    
    return (sum, v1 - v2, sum >> 3)
}

let result = caculate(v1: 10, v2: 20)

result.sum
result.difference
result.average


/// <#Description#>
/// - Parameters:
///   - v1: <#v1 description#>
///   - v2: <#v2 description#>
func sum(v1 : Int, v2 : Int) -> Int {
    return v1 + v2
}

func check(name : String = "小赵", age : Int, job : String = "校长") {
    print("name == \(name), age == \(age) , job == \(job)")
}

check(age: 10)
check(name: "张三", age: 40, job: "辅导员")
check(age: 25, job: "班主任")

func total(_ numbers : Int...) {
    
    var sum = 0
    
    for number in numbers {
        sum += number;
    }
    print(numbers, separator: "_")
    print(numbers, separator: "_", terminator: "\n")
    print(sum)
}

total(10,20,40,66)

//switch <#value#> {
//case <#pattern#>:
//    <#code#>
//default:
//    <#code#>
//}
