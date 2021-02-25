/* 조건문 */

import UIKit

let someInteger = 100

//MARK: - if-else

//if condition {    //  (condition) 이렇게도 가능 '{}'는 꼭 사용해야함
//      statements
//} else if condition {
//      statements
//} else {
//      statements
//}

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
} // 100

// 스위프트의 조건에는 항상 Bool 타입이 들어와야한다.
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
// 컴파일 오류가 발생한다.
//if someInteger { } // 오류 발생


//MARK: - switch

/*
 각각의 case 내부에는 실행가능한 코드가 반드시 위치해야 한다
 매우 한정적인 값(ex. enum의 case 등)이 비교값이 아닌 한 default 구문은 반드시 작성해야 한다
 명시적 break를 하지 않아도 자동으로 case마다 break가 된다
 fallthrough 키워드를 사용하여 break를 무시할 수 있다
 쉼표(,)를 사용하여 하나의 case에 여러 패턴을 명시할 수 있다
 */

//switch value {
//case pattern:
//      code
//default:
//      code
//}

// 범위 연산자를 활용하면 더욱 쉽고 유용하다
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
} // 100


// 정수 외의 대부분의 기본 타입을 사용할 수 있습니다
switch "eungu" {
case "jake":
    print("jake")
case "John":
    print("John")
case "eungu":
    print("eungu!!")
    fallthrough // fallthrough를 사용하게 되면 break가 걸리지 않고 내려감
default:
    print("unknown")
}
//eungu!!
//unknown

// switch문에는 default가 항상 포함되어 있어야함
