//
//  MyDaangnViewController.swift
//  Week3_Daangn_220724
//
//  Created by YG.KIM on 2022/07/28.
//

import UIKit

class MyDaangnViewController: UIViewController {
    
    var myMoving:Array<String> = ["나의 활동", "내 동네 설정", "동네 인증하기", "키워드 알림", "모아보기", "당근가계부", "관심 카테고리 설정"]
    var myLocation:Array<String> = ["우리 동네", "동네생활 글/댓글", "동네홍보 글", "동네 가게 후기", "저장한 장소", "내 단골 가게", "받은 쿠폰함"]

    @IBOutlet weak var MyDaangn: UIButton!
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
    @IBAction func moveLocation(_ sender: UIButton) {
        guard let moveLocation = self.storyboard?.instantiateViewController(identifier: "LocationViewController")
                as? LocationViewController else { return }
        self.navigationController?.pushViewController(moveLocation, animated: true)
    }
    @IBAction func moveChatting(_ sender: UIButton) {
        guard let moveChatting = self.storyboard?.instantiateViewController(identifier: "ChattingViewController")
                as? ChattingViewController else { return }
        self.navigationController?.pushViewController(moveChatting, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        MyDaangn.backgroundColor = .black
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
