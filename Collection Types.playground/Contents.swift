/* Collection Types */
/* Array, Dictionary, Set */

import UIKit

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */


//MARK: - Array

// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()

// 같은 표현
// var integers: Array = [Int]()
// var integers: Array = []
// var integers: [Int] = Array()
// var integers: [Int] = [Int]()
// var integers: [Int] = []
// var integers = [Int]()

integers.append(1)
integers.append(100)
// integers.append(101.1) // 오류 발생 : Int 타입이 아니므로 추가 불가

// 멤버 포함 여부 확인
integers.contains(100) // true
integers.contains(99) // false

// 멤버 교체
integers[0] = 99

// 멤버 삭제
integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

// 멤버 수 확인
integers.count

// integers[0] // 오류 발생 : 비어있는 상태라서 접근할 수 없음

// Array<Double>와 [Double]은 동일한 표현이다.
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: Array<String> = [String]()

// 빈 Character Array 생성
// []는 새로운 빈 Array
var characters: [Character] = []

// let을 사용하여 Array를 선언하면 불변인 Array
let immutableArray = [1, 2, 3]

//immutableArray.append(4) // 오류 발생 : let을 사용하여 Array를 선언했으므로 멤버를 추가하거나 삭제가 불가능
//immutableArray.removeAll() // 오류 발생



//MARK: - Dictionary

// Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()

// 같은 표현
// var anyDictionary: Dictionary = Dictionary()
// var anyDictionary: Dictionary = [:]
// var anyDictionary: [String: Any] = Dictionary()
// var anyDictionary: [String: Any] = [String: Any]()
// var anyDictionary: [String: Any] = [:]
// var anyDictionary: [String: Any]()


// 키에 해당하는 값 할당
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

print(anyDictionary) // ["anotherKey": 100, "someKey": "value"]

// 키에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"
print(anyDictionary)

// 키에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil // 위의 removeValue와 같은 표현
print(anyDictionary)

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "eungu", "gender": "male"]

//emptyDictionary["Key"] = "value" // 오류 발생 : let으로 선언했기 때문
//let someValue: String = initalizedDictionary["name"] // 오류 발생 : Key에 해당하는 Value가 있을 수 있고 없을 수 있음
// 이런 불확실성 때문에 오류가 발생한다.



//MARK: - Set

// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)
// Set는 중복된 값이 없다는 것을 보장함
// 아무리 같은 값을 여러번 넣어줘도 한번만 포함함

print(integerSet) // [100, 99, 1]
print(integers.contains(1)) // true
print(integers.contains(2)) // false

integerSet.remove(100)
integerSet.removeFirst()

integerSet.count

// Set은 집합 연산에 꽤 유용하다.
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6 ,7]

// 합집합
let union: Set<Int> = setA.union(setB)
print(union) // [2, 3, 4, 5, 7, 1, 6]

// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
print(sortedUnion) // [1, 2, 3, 4, 5, 6, 7]
// sorted는 정렬메소드이다.
// 세트표현({})과 정렬표현방식([])은 다름

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection) // [5, 4, 3]

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting) // [1, 2]
