import Foundation

//MARK: 장바구니
class userbasket: Commonfunc{
    var quantity: [String:Int] = [:] // 음식이름 : 주문수량

    // 장바구니 화면 출력
    func display() {
        print("""
              
              현재 장바구니 현황
              
              """)
        for i in quantity { // 장바구니 품목 반복 출력
            print("""
                  
                  음식이름: \(i.key)
                  수량: \(i.value)
                  가격: \( String(format: "%.1f" ,(userOrders[i.key] ?? 0) * (Double(exactly: i.value) ?? 0)) )
                  """)
        }
        print("""
              총 가격   : \( String(format: "%.1f" ,totalPrice()) )
              """)
    }
    
    //  장바구니에 주문 등록
    func inputProcess(order: String, pay: Double) {
        userOrders.updateValue(pay, forKey: order) // 손님 주문 업데이트(가격:음식이름)
        
        if (quantity[order] == nil) { // 처음으로 음식등록하면 수량 1개 등록
            quantity[order] =  1
        }else { // 등록되어있는 음식이면 수량 + 1 으로 등록
            quantity[order] = quantity[order]! + 1
        }
        basket.display()
    }
    
    func inputProcess() {}
    
    // 가격 구하기
    func totalPrice() -> Double {
        var total = 0.0
        
        for i in quantity {
            total += total + (userOrders[i.key] ?? 0) * (Double(exactly: i.value) ?? 0)
        }
        
        return total
    }
    
}
