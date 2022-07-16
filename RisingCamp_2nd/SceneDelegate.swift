//
//  SceneDelegate.swift
//  RisingCamp_2nd
//
//  Created by 이주송 on 2022/07/16.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print(#function)
        print("[Scene] 연결중")
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print(#function)
        print("[Scene] 우리 눈에 보이는 화면에 도달 중..")
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        print(#function)
        print("[Scene] 우리 눈에 보이는 화면에 도달했습니다.")
    } // 우리 눈에 보이는 화면에 도달했을때 도달 이후 나오는 함수(Forground Active) Cycle.1
    
    func sceneWillResignActive(_ scene: UIScene) {
        print(#function)
        print("[Scene] 앱을 위로 띄우셨군요")
    } // 위로 슬라이드해서 강제종료 하는 상황. (은행,스타벅스 앱 생각해보기) Cycle.2
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        print(#function)
        print("[Scene] 다른 앱의 실행으로 인해 이 앱은 Backgorund로 진입합니다.")
    } // Background로 진입 Cycle.3
    
    // Background에서 복귀는 sceneWillEnterForeground (전화끊고 다시 게임 복귀) Cycle.4
    
    func sceneDidDisconnect(_ scene: UIScene) {
        print(#function)
        print("[Scene] 앱 강제종료")
    } // Background에서 Unattaached로 복구
}

