//
//  SceneDelegate.swift
//  rc_week2_burgerking
//
//  Created by YG.KIM on 2022/07/17.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    // TODO: 1.이미지뷰 생성
    var imageView: UIImageView?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        print(#function)
        print("Scene-Init")
        guard let _ = (scene as? UIWindowScene) else { return }

    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
        print(#function)
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
        print(#function)
        //TODO: 3. 앱이 다시 Active되면 이미지뷰를 Superview(window)에서 제거
        if let imageView = imageView {
            imageView.removeFromSuperview()
        }
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
        print(#function)
        
        // TODO: 2.WillResignActive 함수가 호출되면 ImageView를 Window크기로 잡도록 추가
        guard let window = window else {
            return
        }
        imageView = UIImageView(frame: window.frame)
        imageView?.image = UIImage(named: "Starting") // Assets에 저장된 ImageName
        window.addSubview(imageView!)
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
        print(#function)
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        print(#function)
    }


}

