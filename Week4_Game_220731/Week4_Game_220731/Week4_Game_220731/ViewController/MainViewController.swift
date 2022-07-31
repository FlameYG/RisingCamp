//
//  MainViewController.swift
//  Week4_Game_220731
//
//  Created by YG.KIM on 2022/07/31.
//

import UIKit

// 메뉴 지정
var Menu:Array<String> = ["콩나물라멘", "신라멘", "돈코츠라멘"]
var Food:String = ""
var FoodSend:String = ""

// 라멘 끓이는 냄비 3개 (다른 조합을 위해 var 사용)
var Pot:Array<String> = []
var Pot1:Array<String> = []
var Pot2:Array<String> = []
var Pot3:Array<String> = []

var Ready1:Int = 0
var Ready2:Int = 0
var Ready3:Int = 0
var Finish:Int = 0

class MainViewController: UIViewController {
    
    var countTimer: Timer?
    var counter: Int = 60 // 60sec로 설정.

    // 타미어
    @IBOutlet weak var TimerLabel: UILabel! // 게임시간 60초 타이머
    
    // 주문한 음식 표시
    @IBOutlet weak var Order1: UILabel!
    @IBOutlet weak var Order2: UILabel!
    @IBOutlet weak var Order3: UILabel!
    
    // 손님 3명
    @IBOutlet weak var Guest1: UILabel!
    @IBOutlet weak var Guest2: UILabel!
    @IBOutlet weak var Guest3: UILabel!
    
    // 손님 쟁반 3개
    @IBOutlet weak var Dish1: UIButton!
    @IBAction func Dish1_Action(_ sender: UIButton) {
        FoodCheck(Check: Order1.text!)
        Order1.text = Menu.randomElement()
    }
    @IBOutlet weak var Dish2: UIButton!
    @IBAction func Dish2_Action(_ sender: UIButton) {
        FoodCheck(Check: Order2.text!)
        Order2.text = Menu.randomElement()
    }
    @IBOutlet weak var Dish3: UIButton!
    @IBAction func Dish3_Action(_ sender: UIButton) {
        FoodCheck(Check: Order3.text!)
        Order3.text = Menu.randomElement()
    }
    
    // 공통 재료
    @IBOutlet weak var Water: UIButton!
    @IBAction func Water_Action(_ sender: UIButton) {
        Add(Add: "물")
    }
    @IBOutlet weak var Noodle: UIButton!
    @IBAction func Noodle_Action(_ sender: UIButton) {
        Add(Add: "면")
    }
    @IBOutlet weak var Base: UIButton!
    @IBAction func Base(_ sender: UIButton) {
        Add(Add: "양념")
    }
    
    // 기호 재료
    @IBOutlet weak var Bean: UIButton!
    @IBAction func Bean_Action(_ sender: UIButton) {
        Add(Add: "콩나물")
    }
    @IBOutlet weak var Pepper: UIButton!
    @IBAction func Pepper_Action(_ sender: UIButton) {
        Add(Add: "고추")
    }
    @IBOutlet weak var Meat: UIButton!
    @IBAction func Meat_Action(_ sender: UIButton) {
        Add(Add: "고기")
    }
    
    // 라멘 끓이는 곳
    @IBOutlet weak var Ramen1: UIButton!
    @IBAction func Ramen1_Action(_ sender: UIButton) {
        MenuCheck(Pot: Pot1)
        Ready1 += 1
        if (Pot1.count == 0 || Pot1.count > 3) {
            Pot1.removeAll()
        }
    }
    @IBOutlet weak var Ramen2: UIButton!
    @IBAction func Ramen2_Action(_ sender: UIButton) {
        MenuCheck(Pot: Pot2)
        Ready2 += 1
        if (Pot2.count == 0 || Pot2.count > 3) {
            Pot2.removeAll()
        }
    }
    @IBOutlet weak var Ramen3: UIButton!
    @IBAction func Ramen3_Action(_ sender: UIButton) {
        MenuCheck(Pot: Pot3)
        if (Ready3 == 0) {
            Ready3 += 1
        }
        if (Pot3.count == 0 || Pot3.count > 3) {
            Pot3.removeAll()
        }
    }
    
    @IBAction func Final(_ sender: UIButton) {
        print("Pot1 : \(Pot1)")
        print("Pot2 : \(Pot2)")
        print("Pot3 : \(Pot3)")
        print("Food : \(Food)")
        FoodSend = Food
        print("FoodSend : \(FoodSend)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.countTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(changeTimerText), userInfo: nil, repeats: true) // 타이머 반복 실행
        TimerLabel.text = "Game Start"
        
        //주문1
        Order1.text = Menu.randomElement()
        Order1.layer.cornerRadius = 10 // 모서리 굴곡률
        Order1.layer.borderWidth = 5 // 테두리 굵기
        Order1.layer.borderColor = UIColor.blue.cgColor //테두리 색상
        //주문2
        Order2.text = Menu.randomElement()
        Order2.layer.cornerRadius = 10 // 모서리 굴곡률
        Order2.layer.borderWidth = 5 // 테두리 굵기
        Order2.layer.borderColor = UIColor.blue.cgColor //테두리 색상
        //주문3
        Order3.text = Menu.randomElement()
        Order3.layer.cornerRadius = 10 // 모서리 굴곡률
        Order3.layer.borderWidth = 5 // 테두리 굵기
        Order3.layer.borderColor = UIColor.blue.cgColor //테두리 색상
        
        //라멘1
        Ramen1.layer.cornerRadius = 10 // 모서리 굴곡률
        Ramen1.layer.borderWidth = 5 // 테두리 굵기
        Ramen1.layer.borderColor = UIColor.orange.cgColor //테두리 색상
        //라멘2
        Ramen2.layer.cornerRadius = 10 // 모서리 굴곡률
        Ramen2.layer.borderWidth = 5 // 테두리 굵기
        Ramen2.layer.borderColor = UIColor.orange.cgColor //테두리 색상
        //라멘3
        Ramen3.layer.cornerRadius = 10 // 모서리 굴곡률
        Ramen3.layer.borderWidth = 5 // 테두리 굵기
        Ramen3.layer.borderColor = UIColor.orange.cgColor //테두리 색상
        // Do any additional setup after loading the view.
    }
    func OrderInit() {
        Ready1 = 0
        Ready2 = 0
        Ready3 = 0
    }
    
    func Add(Add:String) {
        if (Ready1 == 1) {
            Pot1.append(Add)
            print("Pot1 : \(Pot1)")
        }
        else if (Ready2 == 1) {
            Pot2.append(Add)
            print("Pot2 : \(Pot2)")
        }
        else if (Ready3 == 1) {
            Pot3.append(Add)
            print("Pot3 : \(Pot3)")
        }
    }
    
    // 메뉴 제작 및 오류 확인
    func MenuCheck(Pot:Array<String>) {
        if (Pot.count == 0) {
            OrderInit()
        }
        else if (Pot.count == 4) {
            switch Pot {
            case ["물", "면", "양념", "콩나물"]:
                Food = "콩나물라멘"
                print(Food)
            case ["물", "면", "양념", "고추"]:
                Food = "신라멘"
                print(Food)
            case ["물", "면", "양념", "고기"]:
                Food = "돈코츠라멘"
                print(Food)
            default:
                print("재료 순서가 틀렸습니다. 다시 만드세요!")
            }
        }
        else if (Pot.count > 4) {
            print("재료가 많습니다. 다시 만드세요!")
        }
        else if (Pot.count < 4 && Pot.count > 0) {
            print("재료가 적습니다. 재료를 추가하세요")
            OrderInit()
            print(Ready1)
            print(Ready2)
            print(Ready3)
        }
    }
    
    func FoodCheck(Check:String) {
        Food = ""
        if (FoodSend == Check) {
            print("잘먹겠습니다!")
        }
        else if (FoodSend == "") {
            print("아무것도 안줬네요? 다시 주문할게요!")
        }
        else {
            print("이게 뭡니까!다시 주문할게요!")
        }
        OrderInit()
    }
    
    
    // 타이머 동작시 텍스트 변화시키는 함수
    @objc func changeTimerText() {
        // 게임시작 후 60을 1초마다 1씩 감소
        if counter != 0 {
            let strCounter = String(format: "%02d", counter) // 형변환 - https://gonslab.tistory.com/36
            TimerLabel.text = "00:\(strCounter)"
            counter -= 1
        }
        // 60초 경과 후 게임종료한 다음 ScoreVC로 이동
        else {
            endEffect() // 타이머 종료(메모리 해제)
            let ScoreVC = (self.storyboard?.instantiateViewController(withIdentifier: "ScoreViewController")) as! ScoreViewController
//            finishVC.text = "\(String(score + (60 - counter)))점" // 점수 전달
            self.navigationController?.pushViewController(ScoreVC, animated: true)
        }
    }
    
    // 타이머 종료 함수
    func endEffect() {
        countTimer?.invalidate() // 타이머 종료
        countTimer = nil // 타이머 메모리 해제
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
