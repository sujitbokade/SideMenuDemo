//
//  HomeController.swift
//  SideMenu
//
//  Created by Macbook on 23/12/22.
//

import UIKit

class HomeController: UIViewController {
    
    var delegate: HomeControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle()
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Home Screen"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .done, target: self, action: #selector(handleMenuToggle))
    }
}
