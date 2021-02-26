/* Optional Unwrapping*/

// 옵셔널 바인딩
// 강제 추출

import UIKit

//MARK: - Optional Binding

func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

//printName(myName)
// 전달되는 값의 타입이 다르기 때문에 컴파일 오류발생

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}


var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}

// name 상수는 if-let 구문 내에서만 사용이 가능하다
// 상수 사용범위를 벗어났기 때문에 컴파일 오류 발생
//printName(name)

// ,를 사용해 한 번에 여러 옵셔널을 바인딩 할 수 있다
// 모든 옵셔널에 값이 있을 때만 동작한다
myName = "Eungu"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yourName이 nil이기 때문에 실행되지 않는다

yourName = "Gray"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// Eungu and Gray


//MARK: - Force Unwrapping

printName(myName!)
// Eungu

myName = nil

//print(myName!)
// 강제 추출시 값이 없으므로 런타임 오류 발생

yourName = nil

//print(yourName)
// nil 값이 전달되기 때문에 런타임 오류 발생
