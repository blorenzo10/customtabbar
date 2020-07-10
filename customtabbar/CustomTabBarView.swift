//
//  CustomTabBarView.swift
//  customtabbar
//
//  Created by Bruno Lorenzo on 7/9/20.
//  Copyright © 2020 blorenzo. All rights reserved.
//

import SwiftUI
import Combine

struct CustomTabBarView: View {
    
    @Binding var currentItem: CustomTabBarItem
    
    var body: some View {
        HStack {
            tabBarItem(ofType: .timeline)
                .offset(y: 10)
            
            Spacer(minLength: 0)
            
            tabBarItem(ofType: .plus)
                .offset(y: -20)
            
            Spacer(minLength: 0)
            
            tabBarItem(ofType: .profile)
                .offset(y: 10)
                
        }
        .padding(.horizontal, 50)
        .padding(.bottom, 20)
        .background(Color.black)
    }
}

// MARK: - Button Settups

extension CustomTabBarView {
    
    private func tabBarItem(ofType type: CustomTabBarItem) -> some View {
        let iconSize = type.getIconSize()
        
        return AnyView(
            Button(action: { self.buttonTapped(ofType: type) }) {
                type.getIcon(isActive: type == currentItem)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: iconSize.width, height: iconSize.height)
            }
        )
    }
    
    private func buttonTapped(ofType tabBarItem: CustomTabBarItem) {
        currentItem = tabBarItem
    }
}

