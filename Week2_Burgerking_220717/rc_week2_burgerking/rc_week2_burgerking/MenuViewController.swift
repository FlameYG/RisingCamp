//
//  ViewController1.swift
//  rc_week2_burgerking
//
//  Created by YG.KIM on 2022/07/19.
//

import UIKit

class MenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func MoveHome(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func MoveBasket(_ sender: UIButton) {
        guard let movebasket = self.storyboard?.instantiateViewController(identifier: "BasketViewController")
                as? BasketViewController else { return }
        movebasket.modalTransitionStyle = .coverVertical
        movebasket.modalPresentationStyle = .fullScreen
        self.present(movebasket, animated: true, completion: nil)
    }
    
    @IBAction func AddStacker(_ sender: UIButton) {
        UserDefaults.standard.set("스태커와퍼", forKey: "버거이름:"+"스태커와퍼")
        UserDefaults.standard.set(13900, forKey: "스태커와퍼")
        let addstacker = self.storyboard?.instantiateViewController(withIdentifier: "BasketViewController")
            as? BasketViewController
        self.present(addstacker!, animated: true, completion: nil)
    }
    @IBAction func AddGarlic(_ sender: UIButton) {
        UserDefaults.standard.set("갈릭불고기와퍼", forKey: "버거이름:"+"갈릭불고기와퍼")
        UserDefaults.standard.set(7700, forKey: "갈릭불고기와퍼")
        let addgarlic = self.storyboard?.instantiateViewController(withIdentifier: "BasketViewController")
            as? BasketViewController
        self.present(addgarlic!, animated: true, completion: nil)
    }
    @IBAction func AddXalapa(_ sender: UIButton) {
        UserDefaults.standard.set("할라피뇨와퍼", forKey: "버거이름:"+"할라피뇨와퍼")
        UserDefaults.standard.set(8100, forKey: "할라피뇨와퍼")
        let addxalapa = self.storyboard?.instantiateViewController(withIdentifier: "BasketViewController")
            as? BasketViewController
        self.present(addxalapa!, animated: true, completion: nil)
    }
    @IBAction func AddCheese(_ sender: UIButton) {
        UserDefaults.standard.set("치즈와퍼", forKey: "버거이름:"+"치즈와퍼")
        UserDefaults.standard.set(7900, forKey: "치즈와퍼")
        let addcheese = self.storyboard?.instantiateViewController(withIdentifier: "BasketViewController")
            as? BasketViewController
        self.present(addcheese!, animated: true, completion: nil)
    }
    @IBAction func AddWhopper(_ sender: UIButton) {
        UserDefaults.standard.set("와퍼", forKey: "버거이름:"+"와퍼")
        UserDefaults.standard.set(7300, forKey: "와퍼")
        let addwhopper = self.storyboard?.instantiateViewController(withIdentifier: "BasketViewController")
            as? BasketViewController
        self.present(addwhopper!, animated: true, completion: nil)
    }
    @IBAction func AddBulgogi(_ sender: UIButton) {
        UserDefaults.standard.set("불고기와퍼", forKey: "버거이름:"+"불고기와퍼")
        UserDefaults.standard.set(7300, forKey: "불고기와퍼")
        let addbulgogi = self.storyboard?.instantiateViewController(withIdentifier: "BasketViewController")
            as? BasketViewController
        self.present(addbulgogi!, animated: true, completion: nil)
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
