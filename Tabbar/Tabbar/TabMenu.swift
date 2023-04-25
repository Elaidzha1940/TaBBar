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
            TabMenuViewComponent(is_active: self.is_active, type: .home, text: "Главная", activeImage: Resources.System.housefill.assetName, inactiveImage: Resources.System.house.assetName)
            .onTapGesture {
                withAnimation {
                    is_active = .home
                }
            }

        case .lenta:
            TabMenuViewComponent(is_active: self.is_active, type: .lenta, text: "Лента", activeImage: Resources.System.firefill.assetName, inactiveImage: Resources.System.fire.assetName)
            .onTapGesture {
                withAnimation {
                    is_active = .lenta
                }
            }
          
        case .chats:
            TabMenuViewComponent(is_active: self.is_active, type: .chats, text: "Чаты", activeImage: Resources.System.messagefill.assetName, inactiveImage: Resources.System.message.assetName)
            .onTapGesture {
                withAnimation {
                    is_active = .chats
                }
            }
            
        case .calendar:
            TabMenuViewComponent(is_active: self.is_active, type: .calendar, text: "Записи", activeImage: Resources.System.calendarfill.assetName, inactiveImage: Resources.System.calendar.assetName)
            .onTapGesture {
                withAnimation {
                    is_active = .calendar
                }
            }
        case .profile:
            TabMenuViewComponent(is_active: self.is_active, type: .profile, text: "Профиль", activeImage: Resources.System.personfill.assetName, inactiveImage: Resources.System.person.assetName)
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
            getTabButton(type: .lenta)
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
