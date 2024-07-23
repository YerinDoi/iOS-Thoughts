//
//  ProfileViewController.swift
//  Thoughts
//
//  Created by 박예린 on 7/24/24.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Sign Out",
            style: .done,
            target: self,
            action: #selector(didTapSignOut))
    }
    
    @objc private func didTapSignOut() {
        
    }
}
