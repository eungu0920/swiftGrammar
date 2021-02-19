/* 변수와 상수 */

import UIKit

// 상수, 변수의 선언
// 상수 선언 키워드 let
// 변수 선언 키워드 var

// 상수의 선언
// let 이름: 타입 = 값

// 변수의 선언
// var name: type = value

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
// constant = "상수는 차후에 값을 변경할 수 없습니다" // 오류 발생

// 상수 선언 후에 나중에 값 할당하기

// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 한다
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 선언 후 첫 할당
sum = inputA + inputB

// sum = 1 // 그 이후에는 다시 값을 바꿀 수 없다, 오류 발생

// 변수도 물론 차후에 할당하는 것이 가능하다
var nickName: String

// print(nickName) // 할당되지 않은 상태로 사용하면 오류 발생

nickName = "eungu"

// 변수는 차후에 다시 다른 값을 할당해도 문제가 없다
nickName = "은구짱"
