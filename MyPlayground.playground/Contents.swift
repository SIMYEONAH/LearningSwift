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

