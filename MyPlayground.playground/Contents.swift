import UIKit

let pharase: String = "The quick brown fox jumps over the lazy dog"

let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

let avarageCharactersPerWord: Float = (3+5+5+5+5+4+3+4+3) / 9
print(avarageCharactersPerWord)
print(pharase)

//변수
var anoatherPharase: String = "phrase"
print(anoatherPharase)
anoatherPharase = "The quck brown fox jumps over the laze"
print(anoatherPharase)

//타입 추론, 문자열 보간법

var phraseInfo = "The phrase" + " has: "
//phraseInfo = 1 타입 추론(문자열)으로 생성되었기 때문에, 다른 타입(정수형)의 값을 가질 수 없다.

phraseInfo += "\(numberOfFoxes) foxes" // 다음과 동일함: phraseInfo = phraseInfo + "\(numberOfFoxes) foxes"

var i = 1
i += 1
print(i)

//공백을 포함한 텍스트 글자 수
print("Number of characters:  \(phraseInfo.count)")

let text: String = "Hello World"
print(text.count)

let nonWhitespaceCount = text.filter { !$0.isWhitespace }.count
print(nonWhitespaceCount) // 결과: 10 (공백 제외)

//Int8.min은 Swift의 Int8 타입이 표현할 수 있는 최소값을 나타내는 프로퍼티로, 해당 타입의 최솟값인 -128을 반환한다.
let minInt8 = Int8.min
let maxInt8 = Int8.max
print("Int8 min: \(minInt8), max: \(maxInt8)")

// 정수 리터럴
let decimalInteger = 17
let binaryInteger = 0b10111 // 2진수
let octalInteger = 0o777 // 8진수 (2의 세제곱) => 0 또는 1 자리수가 세개 0b000 / 0b111
let hexInteger = 0xFF // 16진수 >> 2진수 4개 1111 1111 1111 111
print("decimalInteger: \(decimalInteger), binaryInteger: \(binaryInteger), octalInteger: \(octalInteger), hexInteger: \(hexInteger)")
// 숫자 구분자 (Swift 5.1 이후)
let largeNumber = 1_000_000_000
print(largeNumber)

//배열
func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let rounedRating = round(ratingOutOf5)
    let numberOfStars = Int(rounedRating)
    let ratingString = "\(numberOfStars) Star Movie"
    return (numberOfStars, ratingString)
}

let ratingAndDisplayString = normalizedStarRating(forRating: 5, ofPossibleTotal: 10)
let ratingNumber = ratingAndDisplayString.0
let ratingString = ratingAndDisplayString.1
print("Rating: \(ratingNumber), Rating String: \(ratingString)")

//배열
var moviesToWatch: Array<String> = Array()
moviesToWatch.append("Star Wars")
moviesToWatch.append("The Lion King")
moviesToWatch.append("The Incredibles")

print(moviesToWatch)
print(moviesToWatch[1])

// 배열 새 요소 삽입
moviesToWatch.insert("The Avengers", at: 1)
print(moviesToWatch[1])
let removedItem = moviesToWatch.remove(at: 2)
print(removedItem) // 삭제된 아이템 반환 값
print(moviesToWatch[2]) // 뒤에 있던 아이템이 당겨짐
print(moviesToWatch)
print(moviesToWatch.count)
