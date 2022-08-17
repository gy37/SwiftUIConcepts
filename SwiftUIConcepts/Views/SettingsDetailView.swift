//
//  SettingsDetailView.swift
//  SwiftUIConcepts
//
//  Created by gaoshenyu on 2022/8/16.
//

import SwiftUI

struct SettingsDetailView: View {
    let title: String
    @AppStorage("option1") private var option1 = true
    @AppStorage("option2") private var option2 = true
    
    var body: some View {
        Form {
            Section {
                Toggle("Enable Option1", isOn: $option1)
                    .toggleStyle(.automatic)
                Toggle("Enable Option2", isOn: $option2)
            }
        }
        .navigationTitle(title)
    }
}

struct SettingsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsDetailView(title: "test")
    }
}
