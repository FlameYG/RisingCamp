//
//  ViewController.swift
//  Week3_Daangn_220724
//
//  Created by YG.KIM on 2022/07/24.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, productSendProtocol {
    
    var titleArr:Array<String> = []
    var priceArr:Array<String> = []
    var kategorieArr:Array<String> = []
    var contentArr:Array<String> = []
    
    func titleSend(data: String) {
        titleArr.append(data)
    }
    func priceSend(data: String) {
        priceArr.append(data)
    }
    func kategorieSend(data: String) {
        kategorieArr.append(data)
    }
    func cotentSend(data: String) {
        contentArr.append(data)
    }
    
    
    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var Home: UIButton!
    
    @IBAction func GoToLifeView(_ sender: UIButton) {
        guard let moveLife = self.storyboard?.instantiateViewController(identifier: "LifeViewController")
                as? LifeViewController else { return }
        self.navigationController?.pushViewController(moveLife, animated: true)
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
    @IBAction func GoToMy(_ sender: UIButton) {
        guard let moveMyDaangn = self.storyboard?.instantiateViewController(identifier: "MyDaangnViewController")
                as? MyDaangnViewController else { return }
        self.navigationController?.pushViewController(moveMyDaangn, animated: true)
    }
    
    @IBAction func plusButton_Tap(_ sender: UIButton) {
        guard let moveWritePage = self.storyboard?.instantiateViewController(identifier: "WriteViewController")
                as? WriteViewController else { return }
        moveWritePage.delegate = self
        moveWritePage.modalTransitionStyle = .coverVertical
        moveWritePage.modalPresentationStyle = .fullScreen
        self.present(moveWritePage, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArr.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: "homeTableView", for: indexPath) as! homeTableView
        cell.title.text = titleArr[indexPath.row]
        cell.address.text = "컴공시 선배동"
        cell.price.text = priceArr[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ud = UserDefaults.standard
        ud.set(titleArr[indexPath.row], forKey : "Title")
        ud.set(priceArr[indexPath.row], forKey : "Price")
        ud.set(kategorieArr[indexPath.row], forKey : "Kategorie")
        ud.set(contentArr[indexPath.row], forKey : "Content")
        guard let moveProduct = self.storyboard?.instantiateViewController(identifier: "ProductViewController")
                as? ProductViewController else { return }
        moveProduct.modalTransitionStyle = .coverVertical
        moveProduct.modalPresentationStyle = .fullScreen
        self.present(moveProduct, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.bringSubviewToFront(plusButton)
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeTableView.rowHeight = 150
        Home.backgroundColor = .black
    }
    
    override func viewDidAppear(_ animated: Bool) {
        homeTableView.reloadData()
    }
}

