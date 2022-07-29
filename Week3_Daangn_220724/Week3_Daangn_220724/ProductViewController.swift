//
//  ProductViewController.swift
//  Week3_Daangn_220724
//
//  Created by YG.KIM on 2022/07/29.
//

import UIKit

protocol ChattingSendProtocol {
    func dataSend(data: String)
}

class ProductViewController: UIViewController {

    var delegate : ChattingSendProtocol?
    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var kategorieDetail: UILabel!
    @IBOutlet weak var priceDetail: UILabel!
    @IBOutlet weak var cotentDetail: UILabel!
    
    @IBAction func Back(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    @IBAction func Home(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    @IBAction func moveChatting(_ sender: UIButton) {
        
        if let text = titleDetail.text{
            delegate?.dataSend(data: text)
        }
    
        guard let moveChatting = self.storyboard?.instantiateViewController(identifier: "ChattingViewController")
                as? ChattingViewController else { return }
        moveChatting.modalTransitionStyle = .coverVertical
        moveChatting.modalPresentationStyle = .fullScreen
        moveChatting.titleData = titleDetail.text!
        self.present(moveChatting, animated: true, completion: nil)
//        guard let moveChatting = self.storyboard?.instantiateViewController(identifier: "ChattingViewController")
//                as? ChattingViewController else { return }
//        self.navigationController?.pushViewController(moveChatting, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleDetail.text = UserDefaults.standard.string(forKey: "Title")
        priceDetail.text = UserDefaults.standard.string(forKey: "Price")
        kategorieDetail.text = UserDefaults.standard.string(forKey: "Kategorie")
        cotentDetail.text = UserDefaults.standard.string(forKey: "Content")
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
