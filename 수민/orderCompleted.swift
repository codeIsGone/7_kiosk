import Foundation

class orderCompleted: Commonfunc {
    func display() {
        print("""
              [ ORDER MENU ]
              1. Order       | 장바구니를 확인 후 주문합니다.
              2. Cancel      | 진행중인 주문을 취소합니다.
              0. 뒤로가기      | 뒤로가기
              """)
    }
    
    func inputProcess() {
        let order = readLine() ?? ""
        switch order {
        case "1" :
            basket.display()
            finalCalculation()
        case "2" :
            basket.display()
            menuPay.orderBeerPay(order: order)
        case "0" :
            print("메인화면으로 돌아갑니다")
            userCheck.changeMenu(changeTo: SHAKESHACKMENU())
        default :
            print("다시 입력해주세요")
            inputProcess()
        }
    }
    func finalCalculation() {
        print("""
              지불할 금액을 입력하세요!!
              """)
        var pay = readLine() ?? ""
        if pay == pay.uppercased() { // 영어 소문자를 입력 받을때만 구별을 한다.(한글, 영어대문자 x)
            if basket.totalPrice() > Double(pay) ?? 0 {
                print("현재 잔액은 \(Double(pay) ?? 0)₩으로 \(String(format: "%.1f" ,basket.totalPrice() - (Double(pay) ?? 0)))₩이 부족해서 주문할 수 없습니다.")
                finalCalculation()
            }else { // 
                print("거스름돈: \( String(format: "%.1f" , (Double(pay) ?? 0) - basket.totalPrice() ) )₩")
                print("""
                      해당 상품을 구매 하시겠습니까?
                      1. 네
                      2. 아니오
                      """)
                let choice = readLine() ?? ""
                
                switch choice {
                case "1":
                    print("주문이 완료되었습니다. 행복한 하루 되세요!")
                    exit(0)
                case "2":
                    print("[ORDER MENU] 이동합니다.")
                    userCheck.changeMenu(changeTo: orderCompleted())
                default :
                    print("잘못입력했습니다.")
                    finalCalculation()
                }
            }
        }else {
            print("다시 입력해주세요!")
            finalCalculation()
        }
    }
}


