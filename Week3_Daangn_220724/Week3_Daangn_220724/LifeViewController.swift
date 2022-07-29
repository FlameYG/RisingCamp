//
//  LifeViewController.swift
//  Week3_Daangn_220724
//
//  Created by YG.KIM on 2022/07/25.
//

import UIKit

class LifeViewController: UIViewController {

    @IBOutlet weak var Life: UIButton!
    @IBAction func GoToHome(_ sender: UIButton) {
        guard let moveHome = self.storyboard?.instantiateViewController(identifier: "HomeViewController")
                as? HomeViewController else { return }
        self.navigationController?.pushViewController(moveHome, animated: true)
    }
    @IBAction func GoToLocation(_ sender: UIButton) {
        guard let moveLocation = self.storyboard?.instantiateViewController(identifier: "LocationViewController")
                as? LocationViewController else { return }
        self.navigationController?.pushViewController(moveLocation, animated: true)
    }
    @IBAction func GoToChatting(_ sender: UIButton) {
        guard let moveChatting = self.storyboard?.instantiateViewController(identifier: "ChattingViewController")
                as? ChattingViewController else { return }
        self.navigationController?.pushViewController(moveChatting, animated: true)
    }
    @IBAction func GoToMyDang(_ sender: UIButton) {
        guard let moveMyDaangn = self.storyboard?.instantiateViewController(identifier: "MyDaangnViewController")
                as? MyDaangnViewController else { return }
        self.navigationController?.pushViewController(moveMyDaangn, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Life.backgroundColor = .black
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
