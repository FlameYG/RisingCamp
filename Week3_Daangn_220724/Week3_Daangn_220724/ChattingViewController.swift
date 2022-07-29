//
//  ChattingViewController.swift
//  Week3_Daangn_220724
//
//  Created by YG.KIM on 2022/07/28.
//

import UIKit

class ChattingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ChattingSendProtocol {
    
    var titleArr:Array<String> = []
    var titleData:String?
    func dataSend(data: String) {
        titleArr.append(data)
    }
    
    @IBOutlet weak var ChattingTableCell: UITableView!
    @IBOutlet weak var Chatting: UIButton!
    @IBAction func moveHome(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func moveLife(_ sender: UIButton) {
        guard let moveLife = self.storyboard?.instantiateViewController(identifier: "LifeViewController")
                as? LifeViewController else { return }
        self.navigationController?.pushViewController(moveLife, animated: true)
    }
    @IBAction func moveLocation(_ sender: UIButton) {
        guard let moveLocation = self.storyboard?.instantiateViewController(identifier: "LocationViewController")
                as? LocationViewController else { return }
        self.navigationController?.pushViewController(moveLocation, animated: true)
    }
    @IBAction func moveMyDaange(_ sender: UIButton) {
        guard let moveMyDaangn = self.storyboard?.instantiateViewController(identifier: "MyDaangnViewController")
                as? MyDaangnViewController else { return }
        self.navigationController?.pushViewController(moveMyDaangn, animated: true)
    }
    @IBAction func moveBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArr.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ChattingTableCell.dequeueReusableCell(withIdentifier: "ChattingTableCell", for: indexPath) as! ChattingTableCell
        cell.UserID.text = "드래근"
        cell.ChattingStart.text = "채팅을 시작합니다."
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        ChattingTableCell.delegate = self
        ChattingTableCell.dataSource = self
        ChattingTableCell.rowHeight = 100
        Chatting.backgroundColor = .black
        if let data = titleData {
            titleArr.append(data)
        }
        print(titleArr)
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
