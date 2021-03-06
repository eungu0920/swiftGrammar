/* Optional */

// 값이 있을 수도 있고, 없을 수도 있음

/*
 nil의 가능성을 명시적으로 표현
 nil의 가능성을 문서화 하지 않아도 코드만으로 충분히 표현이 가능
 문서/주석 작성 시간을 절약
 전달받은 값이 옵셔널이 아니라면 nil체크를 하지 않더라도 안심하고 사용
 효율적인 코딩
 예외 상황을 최소화하는 안전한 코딩
 */

import UIKit

// someOptionalParam can be nil
func someFunction(someOptionalParam: Int?) {
    // ...
}

// someParam must not be nil
func someFunction(someParam: Int) {
    // ...
}

someFunction(someOptionalParam: nil)
//someFunction(someParam: nil) 오류 발생 : 옵셔널의 타입이 아님



// Optional = enum + general
/*
 enum Optional<wrapped> : ExpressibleByNilLiteral {
     case none
     case some(Wrapped)
 }

 let optionalValue: Optional<Int> = nil
 let optionalValue: Int? = nil
 */




//MARK: - 암시적 추출 옵셔널
// Implicitly Unwrapped Optional

var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// nil 할당 가능
implicitlyUnwrappedOptionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1



//MARK: - 옵셔널
// Optional

var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
//optionalValue = optionalValue + 1
