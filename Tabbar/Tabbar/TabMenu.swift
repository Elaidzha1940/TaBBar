//  /*
//
//  Project: Tabbar
//  File: TabMenu.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.04.2023
//
//  Status
//
//  */

import SwiftUI

struct TabMenu: View {
    
    @Binding var is_active: MenuType
    
    @ViewBuilder
    func getTabButton(type: MenuType) -> some View {
        switch type {
        case .home:
            TabMenuViewComponent(is_active: self.is_active, type: .home, text: "Main", activeImage: "", inactiveImage: "")
            .onTapGesture {
                withAnimation {
                    is_active = .home
                }
            }

        case .tape:
            TabMenuViewComponent(is_active: self.is_active, type: .tape, text: "Tape", activeImage: "", inactiveImage: "")
            .onTapGesture {
                withAnimation {
                    is_active = .tape
                }
            }
          
        case .chats:
            TabMenuViewComponent(is_active: self.is_active, type: .chats, text: "Chats", activeImage: "", inactiveImage: "")
            .onTapGesture {
                withAnimation {
                    is_active = .chats
                }
            }
            
        case .calendar:
            TabMenuViewComponent(is_active: self.is_active, type: .calendar, text: "Calendar", activeImage: "", inactiveImage: "")
            .onTapGesture {
                withAnimation {
                    is_active = .calendar
                }
            }
        case .profile:
            TabMenuViewComponent(is_active: self.is_active, type: .profile, text: "Profile", activeImage: "", inactiveImage: "")
            .onTapGesture {
                withAnimation {
                    is_active = .profile
                }
            }
        }
    }
    var body: some View {
        HStack(alignment: .bottom, spacing: 30) {
            getTabButton(type: .home)
            getTabButton(type: .tape)
            getTabButton(type: .chats)
            getTabButton(type: .calendar)
            getTabButton(type: .profile)
        }
        .padding(.top, 10)
    }
}

struct TabMenu_Previews: PreviewProvider {
    static var previews: some View {
        TabMenu(is_active: .constant(.home))
    }
}
