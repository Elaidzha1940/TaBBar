//  /*
//
//  Project: Tabbar
//  File: TabMenuViewComponent.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.04.2023
//
//  Status
//
//  */

import SwiftUI

struct TabMenuViewComponent: View {
    
    let is_active: MenuType
    let type: MenuType
    let text: String
    let activeImage: String
    let inactiveImage: String
    
    var body: some View {
        VStack {
            Image(is_active == type ? activeImage : inactiveImage)
                .background (
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 65, height: 35)
                        .foregroundColor(is_active == type ? Color.brown : .clear)
                )
            Text(text)
            //.soffitMenuFont()
                .foregroundColor(is_active == type ? Color.red : Color.red)
            
        }
    }
}
