//
//  SettingsView.swift
//  SwiftUIConcepts
//
//  Created by gaoshenyu on 2022/8/14.
//

import SwiftUI

struct SettingsView: View {
    private enum Settings: String, CaseIterable, Identifiable {
        case account = "Account"
        case sync = "Sync"
        case general = "General"
        case appIcon = "App icon"
        
        var id: String {
            self.rawValue
        }

        var image: String {
            switch self {
            case .account:
                return "person.crop.circle"
            case .sync:
                return "cloud"
            case .general:
                return "gear"
            case .appIcon:
                return "app"
            }
        }
    }
    
    var body: some View {
        NavigationView {
        #if os(macOS)
            TabView {
                ForEach(Settings.allCases) { setting in
                    SettingsDetailView(title: setting.rawValue)
                        .tabItem {
                            Label(setting.rawValue, systemImage: setting.image)
                        }
                        .tag(setting)
                }
            }
            .frame(width: 375, height: 150)
        #else
            List(Settings.allCases) { setting in
                NavigationLink {
                    SettingsDetailView(title: setting.rawValue)
                } label: {
                    Label(setting.rawValue, systemImage: setting.image)
                }

            }
            .navigationTitle("Settings")
        #endif
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
