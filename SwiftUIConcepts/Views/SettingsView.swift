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
        case adaptable = "Adaptable"
        case layer = "Layer"
        case hideView = "Hide view"
        
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
            case .adaptable:
                return "circle"
            case .layer:
                return "square.3.layers.3d.down.right"
            case .hideView:
                return "eye.slash"
            }
        }
    }
    
    var body: some View {
        NavigationView {
        #if os(macOS)
            TabView {
                ForEach(Settings.allCases) { setting in
                    switch setting {
                    case .account, .sync, .general, .appIcon:
                        SettingsDetailView(title: setting.rawValue)
                            .tabItem {
                                Label(setting.rawValue, systemImage: setting.image)
                            }
                            .tag(setting)
                    case .adaptable:
                        AdaptableView()
                            .tabItem {
                                Label(setting.rawValue, systemImage: setting.image)
                            }
                            .tag(setting)
                    case .layer:
                        CaptionedPhoto(assetName: "bg", captionText: "This photo is wider than it is tall.")
                            .tabItem {
                                Label(setting.rawValue, systemImage: setting.image)
                            }
                            .tag(setting)
                    case .hideView:
                        TrainCars()
                            .tabItem {
                                Label(setting.rawValue, systemImage: setting.image)
                            }
                            .tag(setting)
                    } 
                }
            }
            .frame(width: 375, height: 150)
        #else
            List(Settings.allCases) { setting in
                NavigationLink {
                    switch setting {
                    case .account, .sync, .general, .appIcon:
                        SettingsDetailView(title: setting.rawValue)
                    case .adaptable:
                        AdaptableView()
                    case .layer:
                        CaptionedPhoto(assetName: "bg", captionText: "This photo is wider than it is tall.")
                    case .hideView:
                        TrainCars()
                    }
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
