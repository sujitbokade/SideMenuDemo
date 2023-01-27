//
//  MenuOption.swift
//  SideMenu
//
//  Created by Macbook on 23/12/22.
//
import UIKit

enum MenuOption: Int, CustomStringConvertible {
case Notes
case Remainders
case Create_label
case Archive
case Trash
case Setting
case Logout
    
    var description: String {
        switch self {
        case .Notes: return "Notes"
        case .Remainders: return "Remainders"
        case .Create_label: return "Create_label"
        case .Archive:
            return "Archive"
        case .Trash:
            return "Trash"
        case .Setting:
            return "Setting"
        case .Logout:
            return "LogOut"
        }
        
    }
    var image: UIImage {
        switch self {
        case .Notes: return UIImage(named: "Notes") ?? UIImage()
        case .Remainders: return UIImage(named: "Remainder") ?? UIImage()
        case .Create_label: return UIImage(named: "") ?? UIImage()
        case .Archive: return UIImage(named: "Archive") ?? UIImage()
        case .Trash: return UIImage(named: "trash") ?? UIImage()
        case .Setting: return UIImage(named: "setting") ?? UIImage()
        case .Logout: return UIImage(named: "logout") ?? UIImage()
           
        }
    }
}
