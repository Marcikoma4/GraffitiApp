//
//  ArtistView.swift
//  GraffitiApp
//
//  Created by Marcell Halmai on 20/10/2026.
//

import SwiftUI

enum Tabs2: Hashable {
    case landlords, contracts, artists, settings
}

struct ArtistHomeView: View {
    
    @Environment(AppData.self) private var appData
    @State var selectedTab2: Tabs2 = .landlords
    @State private var tapped = false
    
    var body: some View {
        TabView(selection: $selectedTab2){
            Tab("Landlords", systemImage: "person.badge.key.fill",value: .landlords){
                LandlordsTabView()
            }
            
            Tab("Contracts",systemImage: "text.document",value:.contracts){
                AContractsTabView()
            }
            
            Tab("Artists",systemImage: "paintpalette",value:.settings){
                ArtistTabView()
            }
            
            Tab("Settings",systemImage: "gear",value:.settings){
                ASettingsTabView()
            }

        }
        .background(appData.backgroundGradient.ignoresSafeArea())
    }
    
}

#Preview {
    ArtistHomeView()
        .environment(AppData())
}
