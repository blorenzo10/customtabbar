//
//  TextFactory.swift
//  customtabbar
//
//  Created by Bruno Lorenzo on 7/9/20.
//  Copyright © 2020 blorenzo. All rights reserved.
//

import SwiftUI

extension Text {
    
    static func create(withText text: String) -> Text {
        return
            Text(text)
                .foregroundColor(.white)
                .bold()
                .font(.system(size: 26))
    }
}
