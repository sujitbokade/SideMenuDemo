//
//  ContainerController.swift
//  SideMenu
//
//  Created by Macbook on 23/12/22.
//

import UIKit

class ContainerController: UIViewController {
    
    var menuController: UIViewController!
    var centreController: UIViewController!
    var isExpanded = false
    
    
    override func viewDidLoad() {
         super.viewDidLoad()
        configureHomeController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
        
    }
    
    func configureHomeController() {
        let homeController = HomeController()
        centreController = UINavigationController(rootViewController: homeController)
        homeController.delegate = self
        view.addSubview(centreController.view)
        addChild(centreController)
        centreController.didMove(toParent: self)
    }
    
    func configureMenuController() {
        if menuController == nil {
            menuController = MenuController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("Add Menu Controller")
        }
    }
    
    func showMenuController(shouldExpand: Bool) {
        if shouldExpand {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centreController.view.frame.origin.x = self.centreController.view.frame.width - 80
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centreController.view.frame.origin.x = 0
        }, completion: nil)
    }
}
                           
}
extension ContainerController: HomeControllerDelegate {
    func handleMenuToggle() {
        if !isExpanded {
            configureMenuController()
        }
        isExpanded = !isExpanded
        showMenuController(shouldExpand: isExpanded)
    }
}
   
