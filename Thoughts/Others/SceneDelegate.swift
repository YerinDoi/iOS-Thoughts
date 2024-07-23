//
//  SceneDelegate.swift
//  Thoughts
//
//  Created by 박예린 on 7/24/24.
//

import UIKit


class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    // 앱의 씬이 세션에 연결될 때 호출됩니다. 일반적으로 앱의 초기 UI를 설정하는 데 사용
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        // scene이 UIWindowScene 타입인지 확인 -> 타입 캐스팅에 실패하면 메서드 종료
        //(UIWindowScene 객체를 안전하게 얻기 위해 사용)
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // 새로운 UIWindow 객체를 생성하고, 이를 windowScene과 연결
        let window = UIWindow(windowScene: windowScene)
        
        // 로그인 여부 확인 후 -> true: 탭화면 / false: 회원가입화면
        let vc: UIViewController
        if AuthManager.shared.isSignedIn {
            vc = TabBarViewController()
        } else {
            let signInVC = SigninViewController()
            signInVC.navigationItem.largeTitleDisplayMode = .always
            
            let navVC = UINavigationController(rootViewController: signInVC)
            navVC.navigationBar.prefersLargeTitles = true
            
            vc = navVC
        }
        
        window.rootViewController = vc                  // window의 루트 뷰 컨트롤러를 vc로 설정
        window.makeKeyAndVisible()                      // window를 메인 윈도우로 만들고, 이를 보이도록 설정
        self.window = window                            // self.window 속성에 새로 생성된 window 객체 할당
                                                        // (UIWindow 객체를 클래스 인스턴스에 유지시키기 위함)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

