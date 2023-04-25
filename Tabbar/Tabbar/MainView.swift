//
//  MainView.swift
//  Tabbar
//
//  Created by Elaidzha Shchukin on 26.04.2023.
//

import SwiftUI


enum MenuType: String {
    case home, lenta, chats, calendar, profile
}


struct MainView: View {
    @State var is_active: MenuType = .home
    @State var is_validate = false
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Color.init(red: 0.942, green: 0.958, blue: 0.958)
                        .ignoresSafeArea()
                    VStack {
                        switch is_active {
                        case .home:
                            HomeView()
                        case .lenta:
                            TapeView()
                        case .chats:
                            ChatsView()
                        case .calendar:
                            CalendarView()
                        case .profile:
                            ProfileView()
                        }
                        Spacer()
                    }
                }
                TabMenu(is_active: $is_active)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
