//
//  CustomTabBarManager.swift
//  customtabbar
//
//  Created by Bruno Lorenzo on 7/9/20.
//  Copyright © 2020 blorenzo. All rights reserved.
//

import Foundation
import SwiftUI

typealias TabBarIconSize = (width: CGFloat, height: CGFloat)

enum CustomTabBarItem {
    case timeline
    case plus
    case profile
    
    func getIcon(isActive: Bool) -> Image {
        switch self {
        case .timeline:
            let imageName = isActive ? HomeManager.HomeAssets.timelineIcon : HomeManager.HomeAssets.timelineIconUnselected
            return Image(imageName)
        case .plus:
            return Image(HomeManager.HomeAssets.plusIcon)
        case .profile:
            let imageName = isActive ? HomeManager.HomeAssets.profileIcon : HomeManager.HomeAssets.profileIconUnselected
            return Image(imageName)
        }
    }
    
    func getIconSize() -> TabBarIconSize {
        switch self {
        case .plus:
            return TabBarIconSize(width: 60,  height: 60)
        default:
            return TabBarIconSize(width: 40,  height: 40)
        }
    }
}

struct HomeManager {
    
    struct HomeAssets {
        static let timelineIcon = "Icon_Timeline"
        static let plusIcon = "Icon_Plus"
        static let profileIcon = "Icon_Profile"
        
        static let timelineIconUnselected = "Icon_Timeline_Unselected"
        static let plusIconUnselected = "Icon_Plus_Unselected"
        static let profileIconUnselected = "Icon_Profile_Unselected"
    }
}
