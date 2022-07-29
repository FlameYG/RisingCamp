//
//  LocationViewController.swift
//  Week3_Daangn_220724
//
//  Created by YG.KIM on 2022/07/28.
//

import UIKit

class LocationViewController: UIViewController {

    @IBOutlet weak var Location: UIButton!
    @IBAction func moveHome(_ sender: UIButton) {
        guard let moveHome = self.storyboard?.instantiateViewController(identifier: "HomeViewController")
                as? HomeViewController else { return }
        self.navigationController?.pushViewController(moveHome, animated: true)
    }
    @IBAction func moveLife(_ sender: UIButton) {
        guard let moveLife = self.storyboard?.instantiateViewController(identifier: "LifeViewController")
                as? LifeViewController else { return }
        self.navigationController?.pushViewController(moveLife, animated: true)
    }
    @IBAction func moveChatting(_ sender: UIButton) {
        guard let moveChatting = self.storyboard?.instantiateViewController(identifier: "ChattingViewController")
                as? ChattingViewController else { return }
        self.navigationController?.pushViewController(moveChatting, animated: true)
    }
    @IBAction func moveMyDaangn(_ sender: UIButton) {
        guard let moveMyDaangn = self.storyboard?.instantiateViewController(identifier: "MyDaangnViewController")
                as? MyDaangnViewController else { return }
        self.navigationController?.pushViewController(moveMyDaangn, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Location.backgroundColor = .black
        // Do any additional setup after loading the view.
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
