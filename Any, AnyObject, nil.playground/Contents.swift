/* Any, AnyObject, nil */

import UIKit

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */

//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용이 가능하다."
someAny = 123.12

//let someDouble: Double = someAny // 오류 발생


//MARK: - AnyObject

class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

//someAnyObject = 123.12 // 오류 발생


//MARK: - nil

// someAny = nil // 오류 발생
// someAnyObject = nil // 오류 발생
// nil은 null, NULL, Null과 유사한 표현임
