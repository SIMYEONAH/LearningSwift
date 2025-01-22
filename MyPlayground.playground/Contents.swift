import Foundation

//runFile()
/ 사분면 구하기
// x좌표 입력 받기
let x = Int(readLine()!)!

// y좌표 입력 받기
let y = Int(readLine()!)!

// 사분면 판단 및 출력
if x > 0 && y > 0 {
    print(1) // 제1사분면
} else if x < 0 && y > 0 {
    print(2) // 제2사분면
} else if x < 0 && y < 0 {
    print(3) // 제3사분면
} else if x > 0 && y < 0 {
    print(4) // 제4사분면
}

