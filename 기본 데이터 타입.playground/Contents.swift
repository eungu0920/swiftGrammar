/* 기본 데이터 타입 */

import UIKit

// Swift의 기본 데이터 타입
// Bool, Int, UInt, Float, Double, Character, String

// Bool
var someBool: Bool = true
someBool = false
// someBool = 0 // 오류 발생
// someBool = 1 // 오류 발생
// Swift에서 Bool type에는 'true' and 'false'만 들어올 수 있다.

// Int
var someInt: Int = -100
// someInt = 100.1 // 오류 발생

// UInt // unsigned integer
var someUInt: UInt = 100
// someUInt = -100 // 오류 발생
// someUInt = someInt // 오류 발생
// 데이터 타입에 굉장히 엄격함

// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat // 오류 발생

// Character
var someCharacter: Character = "🇰🇷"
someCharacter = "E"
someCharacter = "은"
// someCharacter = "은구입니다" // 오류 발생
print(someCharacter)

// String
var someString: String = "My name is"
someString = someString + " Eungu 😃 "
print(someString)
// someString = someCharacter // 오류 발생

// 여러줄 문자열은 큰따옴표 세 개 사용

someString = """
    Hi I'm Gray!
    안녕하세요 은구 입니다!
    첫 줄에 쌍따옴표 세 개,
    마지막 줄에 쌍따옴표 세 개를 사용하면
    여러줄 문자열을 사용할 수 있습니다.
    """

print(someString)
