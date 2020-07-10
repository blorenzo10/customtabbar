//
//  ContentView.swift
//  customtabbar
//
//  Created by Bruno Lorenzo on 7/9/20.
//  Copyright © 2020 blorenzo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentTabBarItem: CustomTabBarItem = .timeline
        
    var body: some View {
        VStack(spacing: 0) {
            contentView
                .padding(.top, 100)
            
            Spacer()
            
            tabBarSeparatorView
            tabBarView
        }
        .background(Color.gray)
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - Setups

extension ContentView {
    
    private var contentView: some View {
        tabBarItemView()
    }
    
    private var tabBarSeparatorView: some View {
        Rectangle()
            .fill(Color.white)
            .frame(height: 2)
    }
    
    private var tabBarView: some View {
        CustomTabBarView(currentItem: $currentTabBarItem)
    }
}

// MARK: - Helpers

extension ContentView {
    private func tabBarItemView() -> AnyView {
        switch currentTabBarItem {
        case .timeline:
            return AnyView(Text.create(withText: "Timeline"))
        case .plus:
            return AnyView(Text.create(withText: "Plus"))
        case .profile:
            return AnyView(Text.create(withText: "Profile"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
