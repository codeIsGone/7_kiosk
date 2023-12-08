import Foundation

//MARK: 주문 기능
class orderPay {
    
    // 버거 가격
    func orderBurgersPay(order: String){
        switch order {
        case "1" :
            basket.inputProcess(order: "ShackBurger", pay: 6.9)
        case "2" :
            basket.inputProcess(order: "SmokeShack", pay: 8.9)
        case "3" :
            basket.inputProcess(order: "Shroom Burger", pay: 9.4)
        case "4" :
            basket.inputProcess(order: "Cheeseburger", pay: 6.9)
        case "5" :
            basket.inputProcess(order: "Hamburger", pay: 5.4)
        default :
            print("오류")
        }
    }
    
    // 프로우전 커스터드 가격
    func orderFrozenCustardPay(order: String){
        switch order {
        case "1" :
            basket.inputProcess(order: "Shake", pay: 5.9)
        case "2" :
            basket.inputProcess(order: "Shake of the Week", pay: 6.5)
        case "3" :
            basket.inputProcess(order: "Red Bean Shake", pay: 6.5)
        case "4" :
            basket.inputProcess(order: "Floats", pay: 5.9)
        default :
            print("오류")
        }
    }

    // 음료 가격
    func orderDrinksPay(order: String){
        switch order {
        case "1" :
            basket.inputProcess(order: "Lemonade", pay: 4.5)
        case "2" :
            basket.inputProcess(order: "Iced Tea", pay: 3.9)
        case "3" :
            basket.inputProcess(order: "Fifty/Fifty", pay: 4.4)
        case "4" :
            basket.inputProcess(order: "Fountain Soda", pay: 3.3)
        default :
            print("오류")
        }
    }
    
    // 술 가격
    func orderBeerPay(order: String){
        switch order {
        case "1" :
            basket.inputProcess(order: "ShackMeister Ale", pay: 9.8)
        case "2" :
            basket.inputProcess(order: "Mogpie Brewing Co", pay: 6.8)
        default :
            print("오류")
        }
    }
}

