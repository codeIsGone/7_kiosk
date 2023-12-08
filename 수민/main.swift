import Foundation

//MARK: 프로토콜 정의
protocol Commonfunc {
    func display()
    
    func inputProcess()
}

// 손님주문 상태 확인, 키오스크 시작부분, 화면 및 기능 교체
class userChecking {
    var finish = true
    var userScreen: Commonfunc = SHAKESHACKMENU()
    func changeMenu (changeTo: Commonfunc) {
        userScreen = changeTo
    }
}



var userOrders: [String:Double] = [:]
//var numberOrders: [String] = []

var userCheck = userChecking()
var menuPay = orderPay()
var basket = userbasket()
var orderEnd = orderCompleted()


while userCheck.finish{
    userCheck.userScreen.display()
    userCheck.userScreen.inputProcess()
}




/*
 
 문제점
 1. 1번 실행하고 다시 실행하면 프로그램 다운
 2. 지불값 예외처리(한글, 영어대문자 예외처리 못함)
 
 
 개선점
 1. 장바구니 들어가전 /넣을지, 안넣을지/ 정하는 함수 만들기
 2. [ ORDER MENU ]에 'Cancel' 기능 마저 만들기
 3. Lv5의 실시간 기능들 넣어 보기
 
 */



