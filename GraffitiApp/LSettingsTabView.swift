//
//  SettingsTabView.swift
//  GraffitiApp
//
//  Created by Marcell Halmai on 20/10/2026.
//

import SwiftUI

struct LSettingsTabView: View {
    @Environment(AppData.self) private var appData
    var body: some View {
        NavigationStack {
            ZStack {
                appData.backgroundGradient
                    .ignoresSafeArea()

                ScrollView {
                    // content
                }
                .scrollContentBackground(.hidden)
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    LSettingsTabView()
        .environment(AppData())
}
