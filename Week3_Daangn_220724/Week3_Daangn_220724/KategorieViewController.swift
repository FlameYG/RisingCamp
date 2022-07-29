//
//  KategorieViewController.swift
//  Week3_Daangn_220724
//
//  Created by YG.KIM on 2022/07/25.
//

import UIKit

protocol KategorieProtocol {
    func kategorieSend(data: String)
}

class KategorieViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var delegate : KategorieProtocol?
    
    let cellTitle : Array<String> = ["디지털기기", "생활가전", "가구/인테리어", "유아동", "유아도서", "생활/가공식품", "스포츠/레저"
    , "여성잡화", "여성의류", "남성패션/잡화", "게임/취미", "뷰티/미용", "반려동물용품", "도서/티켓/음반", "식물", "기타 중고물품", "삽니다"]
    
    @IBOutlet weak var KategorieTableCell: UITableView!
    
    @IBAction func BackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 17
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = KategorieTableCell.dequeueReusableCell(withIdentifier: "KategorieTableCell", for: indexPath) as! KategorieTableCell
        cell.kategorie.text = cellTitle[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = KategorieTableCell.dequeueReusableCell(withIdentifier: "KategorieTableCell", for: indexPath) as! KategorieTableCell
        
        cell.kategorie.text = cellTitle[indexPath.row]
        if let text = cell.kategorie.text {
              delegate?.kategorieSend(data: text)
        }
        
        self.presentingViewController?.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        KategorieTableCell.delegate = self
        KategorieTableCell.dataSource = self
        KategorieTableCell.rowHeight = 50
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
