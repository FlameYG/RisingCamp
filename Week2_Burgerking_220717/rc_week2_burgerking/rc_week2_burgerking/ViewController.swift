//
//  ViewController.swift
//  rc_week2_burgerking
//
//  Created by YG.KIM on 2022/07/17.
//

import UIKit

class ViewController: UIViewController {

    var num = 0
    
    @IBAction func MoveMenu(_ sender: UIButton) {
        guard let movemenu = self.storyboard?.instantiateViewController(identifier: "MenuViewController")
                as? MenuViewController else { return }
        movemenu.modalTransitionStyle = .coverVertical
        movemenu.modalPresentationStyle = .fullScreen
        self.present(movemenu, animated: true, completion: nil)
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func MoveBasket(_ sender: UIButton) {
        guard let movebasket = self.storyboard?.instantiateViewController(identifier: "BasketViewController")
                as? BasketViewController else { return }
        movebasket.modalTransitionStyle = .coverVertical
        movebasket.modalPresentationStyle = .fullScreen
        self.present(movebasket, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
        if (num < 1) {
            let Alert = UIAlertController(title: "'버거킹'에서 알림을 보내고자 합니다.",
                message: "경고, 사운드 및 아이톤 배치가 알림에 포함될 수 있습니다. 설정에서 이를 구성할 수 있습니다.",
                preferredStyle: UIAlertController.Style.alert)
            let notAllowAction = UIAlertAction(title: "허용 안 함", style: UIAlertAction.Style.default, handler: nil)
            let AllowAction = UIAlertAction(title: "허용", style: UIAlertAction.Style.default, handler: nil)
                    
            Alert.addAction(notAllowAction)
            Alert.addAction(AllowAction)
                    
            present(Alert, animated: true, completion: nil)
            num += 1;
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
}

