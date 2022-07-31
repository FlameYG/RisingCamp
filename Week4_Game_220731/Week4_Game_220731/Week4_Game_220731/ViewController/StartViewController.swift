//
//  ViewController.swift
//  Week4_Game_220731
//
//  Created by YG.KIM on 2022/07/31.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBAction func StartButton(_ sender: UIButton) {
        let MainVC = (self.storyboard?.instantiateViewController(withIdentifier: "MainViewController"))! as! MainViewController
        self.navigationController?.pushViewController(MainVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

