import Foundation

// MARK: 메뉴

class SHAKESHACKMENU: Commonfunc {
    func display(){
        print("""
              "SHAKESHACK BURGER 에 오신걸 환영합니다."
              아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.
              
              [ SHAKESHACK MENU ]
              1. Burgers         | 앵거스 비프 통살을 다져만든 버거
              2. Frozen Custard  | 매장에서 신선하게 만드는 아이스크림
              3. Drinks          | 매장에서 직접 만드는 음료
              4. Beer            | 뉴욕 브루클린 브루어리에서 양조한 맥주
              5. Order Menu      | 주문이 완료되면 눌려주세요
              0. 종료             | 프로그램 종료
              """)
    }
    
    func inputProcess() {
        let order = readLine() ?? ""
        
        switch order {
        case "1" :
            print("[Burgers MENU] 이동합니다")
            userCheck.changeMenu(changeTo: Burgers())
        case "2" :
            print("[Frozen Custard MENU] 이동합니다")
            userCheck.changeMenu(changeTo: FrozenCustard())
        case "3" :
            print("[Drinks MENU] 이동합니다")
            userCheck.changeMenu(changeTo: Drinks())
        case "4" :
            print("[Beer MENU] 이동합니다")
            userCheck.changeMenu(changeTo: Beer())
        case "5" :
            print("[Order Menu] 이동합니다")
            userCheck.changeMenu(changeTo: orderEnd)

        case "0" :
            print("프로그램 종료합니다")
            exit(0)
        default :
            print("다시 입력해주세요")
            inputProcess()
        }
    }
}

// 버거 메뉴
class Burgers: Commonfunc {
    func display(){
        print("""
              
              [ Burgers MENU ]
              1. ShackBurger   | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거
              2. SmokeShack    | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거
              3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거
              4. Cheeseburger  | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거
              5. Hamburger     | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거
              0. 뒤로가기        | 뒤로가기
              """)
    }
    
    func inputProcess() {
        let order = readLine() ?? ""
        
        switch order {
        case "1" :
            menuPay.orderBurgersPay(order: order)
        case "2" :
            menuPay.orderBurgersPay(order: order)
        case "3" :
            menuPay.orderBurgersPay(order: order)
        case "4" :
            menuPay.orderBurgersPay(order: order)
        case "5" :
            menuPay.orderBurgersPay(order: order)
        case "0" :
            print("초기화면으로 돌아갑니다")
            userCheck.changeMenu(changeTo: SHAKESHACKMENU())
        default :
            print("다시 입력해주세요")
            inputProcess()
        }
    }
}

// 프로우전 커스터드
class FrozenCustard: Commonfunc {
    func display(){
        print("""
              
              [ FrozenCustard MENU ]
              1. Shake                | W 5.9 | 바닐라, 초콜릿, 솔티드, 카라멜, 블랙 & 화이트
              2. Shake of the Week    | W 6.5 | 특별한 커스트 플레이버
              3. Red Bean Shake       | W 6.5 | 신선한 커스터드와 함께 우유와 레드빈이 블렌딩 된 시즈널 쉐이크
              4. Floats               | W 5.9 | 루트 비어, 퍼플 카우, 크림사클
              0. 뒤로가기               | 뒤로가기
              """)
    }
    
    func inputProcess() {
        let order = readLine() ?? ""
        
        switch order {
        case "1" :
            menuPay.orderFrozenCustardPay(order: order)
        case "2" :
            menuPay.orderFrozenCustardPay(order: order)
        case "3" :
            menuPay.orderFrozenCustardPay(order: order)
        case "4" :
            menuPay.orderFrozenCustardPay(order: order)
        case "0" :
            print("초기화면으로 돌아갑니다")
            userCheck.changeMenu(changeTo: SHAKESHACKMENU())
        default :
            print("다시 입력해주세요")
            inputProcess()
        }
    }
}

// 음료
class Drinks: Commonfunc {
    func display(){
        print("""
              
              [ Drinks MENU ]
              1. Lemonade       | W 4.5 | 매장에서 직접 만드는 상큼한 레몬에이드
              2. Iced Tea       | W 3.9 | 직접 유기농 홍자를 우려낸 아이스티
              3. Fifty/Fifty    | W 4.4 | 레몬에이드와 아이스티의 만남
              4. Fountain Soda  | W 3.3 | 코카콜라, 스프라이트, 환타
              0. 뒤로가기         | 뒤로가기
              """)
    }
    
    func inputProcess() {
        let order = readLine() ?? ""
        
        switch order {
        case "1" :
            menuPay.orderDrinksPay(order: order)
        case "2" :
            menuPay.orderDrinksPay(order: order)
        case "3" :
            menuPay.orderDrinksPay(order: order)
        case "4" :
            menuPay.orderDrinksPay(order: order)
        case "0" :
            print("초기화면으로 돌아갑니다")
            userCheck.changeMenu(changeTo: SHAKESHACKMENU())
        default :
            print("다시 입력해주세요")
            inputProcess()
        }
    }
}

// 술
class Beer: Commonfunc {
    func display(){
        print("""
              
              [ Beer MENU ]
              1. ShackMeister Ale     | W 9.8 | 쉐이크쉐 버거를 위해 뉴욕 브루클린 브루어리에서 특별히 양조한 에일 맥주
              2. Mogpie Brewing Co    | W 6.8 | ...
              0. 뒤로가기               | 뒤로가기
              """)
    }
    
    func inputProcess() {
        let order = readLine() ?? ""
        
        switch order {
        case "1" :
            menuPay.orderBeerPay(order: order)
        case "2" :
            menuPay.orderBeerPay(order: order)
        case "0" :
            print("초기화면으로 돌아갑니다")
            userCheck.changeMenu(changeTo: SHAKESHACKMENU())
        default :
            print("다시 입력해주세요")
            inputProcess()
        }
    }
}
