//
//  WriteViewController.swift
//  Week3_Daangn_220724
//
//  Created by YG.KIM on 2022/07/25.
//

import UIKit

protocol productSendProtocol {
    func titleSend(data: String)
    func priceSend(data: String)
    func kategorieSend(data: String)
    func cotentSend(data: String)
}

class WriteViewController: UIViewController, UITextViewDelegate, KategorieProtocol {
    
    var kategorieSave:String? = ""
    func kategorieSend(data: String) {
        Kategorie1.setTitle(data, for: .normal)
        kategorieSave = data
    }
    
    var delegate : productSendProtocol?
    
    @IBOutlet weak var AddTitle: UITextView!
    @IBOutlet weak var AddPrice: UITextView!
    @IBOutlet weak var AddContent: UITextView!
    @IBOutlet weak var Kategorie1: UIButton!
    
    @IBAction func BackToHome(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func Kategorie(_ sender: UIButton) {
        guard let moveKategoriePage = self.storyboard?.instantiateViewController(identifier: "KategorieViewController")
                as? KategorieViewController else { return }
        
        moveKategoriePage.modalTransitionStyle = .coverVertical
        moveKategoriePage.modalPresentationStyle = .fullScreen
        moveKategoriePage.delegate = self
        
        self.present(moveKategoriePage, animated: true, completion: nil)
    }
    
    @IBAction func FinishWrite(_ sender: UIButton) {
        if AddTitle.textColor == .black {
            if let titleText = AddTitle.text {
                  delegate?.titleSend(data: titleText)
            }
        }
        if AddPrice.textColor == .black {
            if let priceText = AddPrice.text {
                  delegate?.priceSend(data: priceText)
            }
        }
        if let kategorieText = kategorieSave {
              delegate?.kategorieSend(data: kategorieText)
        }
        if AddContent.textColor == .black {
            if let cotentText = AddContent.text {
                  delegate?.cotentSend(data: cotentText)
            }
        }
        self.presentingViewController?.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddTitle.delegate = self
        AddPrice.delegate = self
        AddContent.delegate = self
        
        AddTitle.text = "??? ??????"
        AddTitle.textColor = UIColor.lightGray
        AddPrice.text = "??? ?????? (????????????)"
        AddPrice.textColor = UIColor.lightGray
        AddContent.text = "???????????? ?????? ????????? ????????? ??????????????????.(?????? ??? ????????????????????? ????????? ????????? ??? ?????????.)"
        AddContent.textColor = UIColor.lightGray
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.AddTitle.resignFirstResponder()
        self.AddPrice.resignFirstResponder()
        self.AddContent.resignFirstResponder()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if AddTitle.text.isEmpty {
            AddTitle.text = "??? ??????"
            AddTitle.textColor = UIColor.lightGray
        }
        if AddPrice.text.isEmpty {
            AddPrice.text = "??? ?????? (????????????)"
            AddPrice.textColor = UIColor.lightGray
        }
        if AddContent.text.isEmpty {
            AddContent.text = "???????????? ?????? ????????? ????????? ??????????????????.(?????? ??? ????????????????????? ????????? ????????? ??? ?????????.)"
            AddContent.textColor = UIColor.lightGray
        }
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
