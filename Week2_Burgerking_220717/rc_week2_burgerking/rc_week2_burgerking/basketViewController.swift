//
//  BasketViewController.swift
//  rc_week2_burgerking
//
//  Created by YG.KIM on 2022/07/20.
//

import UIKit

class BasketViewController: UIViewController {
    
    let totalPrice: String = String(UserDefaults.standard.integer(forKey: "스태커와퍼")
    + UserDefaults.standard.integer(forKey: "갈릭불고기와퍼")
    + UserDefaults.standard.integer(forKey: "할라피뇨와퍼")
    + UserDefaults.standard.integer(forKey: "치즈와퍼")
    + UserDefaults.standard.integer(forKey: "와퍼")
    + UserDefaults.standard.integer(forKey: "불고기와퍼"))
    
    @IBOutlet weak var NameStacker: UILabel!
    @IBOutlet weak var PriceStacker: UILabel!
    @IBOutlet weak var EraseStacker: UIButton!
    
    @IBOutlet weak var NameGarlic: UILabel!
    @IBOutlet weak var PriceGarlic: UILabel!
    @IBOutlet weak var EraseGarlic: UIButton!
    
    @IBOutlet weak var NameXalapa: UILabel!
    @IBOutlet weak var PriceXalapa: UILabel!
    @IBOutlet weak var EraseXalapa: UIButton!
    
    
    @IBOutlet weak var NameCheese: UILabel!
    @IBOutlet weak var PriceCheese: UILabel!
    @IBOutlet weak var EraseCheese: UIButton!
    
    @IBOutlet weak var NameWhopper: UILabel!
    @IBOutlet weak var PriceWhopper: UILabel!
    @IBOutlet weak var EraseWhopper: UIButton!
    
    @IBOutlet weak var NameBulgogi: UILabel!
    @IBOutlet weak var PriceBulgogi: UILabel!
    @IBOutlet weak var EraseBulgogi: UIButton!
    
    @IBOutlet weak var TotalPrice: UILabel!
    
    @IBAction func MoveMenu(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TotalPrice.text = totalPrice
        
        // 스태커4와퍼
        if UserDefaults.standard.string(forKey: "버거이름:"+"스태커와퍼") != nil {
            NameStacker.text = UserDefaults.standard.string(forKey: "버거이름:"+"스태커와퍼")
            PriceStacker.text = String(UserDefaults.standard.integer(forKey: "스태커와퍼"))
            EraseStacker.addTarget(self, action: #selector(DeleteStacker), for: .touchUpInside)
        } else {
            NameStacker.text = ""
            PriceStacker.text = ""
            EraseStacker.setTitle("", for: UIControl.State.normal)
        }
        
        // 갈릭불고기와퍼
        if UserDefaults.standard.string(forKey: "버거이름:"+"갈릭불고기와퍼") != nil {
            NameGarlic.text = UserDefaults.standard.string(forKey: "버거이름:"+"갈릭불고기와퍼")
            PriceGarlic.text = String(UserDefaults.standard.integer(forKey: "갈릭불고기와퍼"))
            EraseGarlic.addTarget(self, action: #selector(DeleteGarlic), for: .touchUpInside)
        } else {
            NameGarlic.text = ""
            PriceGarlic.text = ""
            EraseGarlic.setTitle("", for: UIControl.State.normal)
        }
        
        // 할라피뇨와퍼
        if UserDefaults.standard.string(forKey: "버거이름:"+"할라피뇨와퍼") != nil {
            NameXalapa.text = UserDefaults.standard.string(forKey: "버거이름:"+"할라피뇨와퍼")
            PriceXalapa.text = String(UserDefaults.standard.integer(forKey: "할라피뇨와퍼"))
            EraseXalapa.addTarget(self, action: #selector(DeleteXalapa), for: .touchUpInside)
        } else {
            NameXalapa.text = ""
            PriceXalapa.text = ""
            EraseXalapa.setTitle("", for: UIControl.State.normal)
        }
        
        // 치즈와퍼
        if UserDefaults.standard.string(forKey: "버거이름:"+"치즈와퍼") != nil {
            NameCheese.text = UserDefaults.standard.string(forKey: "버거이름:"+"치즈와퍼")
            PriceCheese.text = String(UserDefaults.standard.integer(forKey: "치즈와퍼"))
            EraseCheese.addTarget(self, action: #selector(DeleteCheese), for: .touchUpInside)
        } else {
            NameCheese.text = ""
            PriceCheese.text = ""
            EraseCheese.setTitle("", for: UIControl.State.normal)
        }
        
        // 와퍼
        if UserDefaults.standard.string(forKey: "버거이름:"+"와퍼") != nil {
            NameWhopper.text = UserDefaults.standard.string(forKey: "버거이름:"+"와퍼")
            PriceWhopper.text = String(UserDefaults.standard.integer(forKey: "와퍼"))
            EraseWhopper.addTarget(self, action: #selector(DeleteWhopper), for: .touchUpInside)
        } else {
            NameWhopper.text = ""
            PriceWhopper.text = ""
            EraseWhopper.setTitle("", for: UIControl.State.normal)
        }
        
        // 불고기와퍼
        if UserDefaults.standard.string(forKey: "버거이름:"+"불고기와퍼") != nil {
            NameBulgogi.text = UserDefaults.standard.string(forKey: "버거이름:"+"불고기와퍼")
            PriceBulgogi.text = String(UserDefaults.standard.integer(forKey: "불고기와퍼"))
            EraseBulgogi.addTarget(self, action: #selector(DeleteBulgogi), for: .touchUpInside)
        } else {
            NameBulgogi.text = ""
            PriceBulgogi.text = ""
            EraseBulgogi.setTitle("", for: UIControl.State.normal)
        }
        // Do any additional setup after loading the view.
    }
    
    @objc func DeleteStacker(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "버거이름:"+"스태커와퍼")
        UserDefaults.standard.removeObject(forKey: "스태커와퍼")
        dismiss(animated: false, completion: nil)
    }
    
    @objc func DeleteGarlic(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "버거이름:"+"갈릭불고기와퍼")
        UserDefaults.standard.removeObject(forKey: "갈릭불고기와퍼")
        dismiss(animated: false, completion: nil)
    }
    
    @objc func DeleteXalapa(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "버거이름:"+"할라피뇨와퍼")
        UserDefaults.standard.removeObject(forKey: "할라피뇨와퍼")
        dismiss(animated: false, completion: nil)
    }
    
    @objc func DeleteCheese(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "버거이름:"+"치즈와퍼")
        UserDefaults.standard.removeObject(forKey: "치즈와퍼")
        dismiss(animated: false, completion: nil)
    }
    
    @objc func DeleteWhopper(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "버거이름:"+"와퍼")
        UserDefaults.standard.removeObject(forKey: "와퍼")
        dismiss(animated: false, completion: nil)
    }
    
    @objc func DeleteBulgogi(sender: UIButton!) {
        UserDefaults.standard.removeObject(forKey: "버거이름:"+"불고기와퍼")
        UserDefaults.standard.removeObject(forKey: "불고기와퍼")
        dismiss(animated: false, completion: nil)
    }

    @IBAction func PayTap(_ sender: UIButton) {
        let alert = UIAlertController(title: "결제", message: "총 "+totalPrice+"원", preferredStyle: UIAlertController.Style.alert)
            // 메시지 창 컨트롤러에 들어갈 버튼 액션 객체 생성
        let defaultAction =  UIAlertAction(title: "결제하기", style: UIAlertAction.Style.default){(_) in exit(0)}
        let cancelAction = UIAlertAction(title: "결제 취소", style: UIAlertAction.Style.cancel, handler: nil)
            
        //메시지 창 컨트롤러에 버튼 액션을 추가
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        
        //메시지 창 컨트롤러를 표시
        self.present(alert, animated: false)
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
