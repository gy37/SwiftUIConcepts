//
//  SwiftUIConceptsApp.swift
//  SwiftUIConcepts
//
//  Created by gaoshenyu on 2022/8/12.
//

import SwiftUI

@main
struct SwiftUIConceptsApp: App {
    var body: some Scene {
        #if os(iOS)
        MyScene()
        #elseif os(macOS)
        MyScene()
        #endif
    }
}
