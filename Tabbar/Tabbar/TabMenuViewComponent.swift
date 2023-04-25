//
//  TabMenuViewComponent.swift
//  Tabbar
//
//  Created by Elaidzha Shchukin on 25.04.2023.
//

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
                        .foregroundColor(is_active == type ? Color.init(toElement: .blueprimary) : .clear)
                )
            Text(text)
                .soffitMenuFont()
                .foregroundColor(is_active == type ? Color.init(toElement: .blueenabled) : Color.init(toElement: .blueinactive))
             
        }