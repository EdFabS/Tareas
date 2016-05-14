//: Playground - noun: a place where people can play

import UIKit

var num = 15

print(num % 5)

for i in 0...100{
    if i >= 30 && i <= 40{
        print("viva swift")
    }else if i % 5 == 0{
        print("\(i) Bingo")
    }else if i % 2 == 0{
        print("\(i) Par")
    }else{
        print("\(i) Impar")
    }
}
