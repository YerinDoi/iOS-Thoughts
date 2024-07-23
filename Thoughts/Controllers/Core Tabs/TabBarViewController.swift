//
//  TapBarViewController.swift
//  Thoughts
//
//  Created by 박예린 on 7/24/24.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpController()
    }
    private func setUpController() {
        let home = HomeViewController()
        home.title = "Home"
        let profile = ProfileViewController()
        profile.title = "Profile"
        
        home.navigationItem.largeTitleDisplayMode = .always
        profile.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: home)
        let nav2 = UINavigationController(rootViewController: profile)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        
        // 네비게이션 바(nav1)에 prefersLargeTitles = true가 설정되어 큰 제목을 사용할 수 있는 상태가 되었고,
        // home 뷰 컨트롤러에 largeTitleDisplayMode = .always가 설정되어, 이 화면에서는 항상 큰 제목으로 표시되도록 했기 때문입니다.
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 2)
        
        setViewControllers([nav1, nav2], animated: true)
    }
}
