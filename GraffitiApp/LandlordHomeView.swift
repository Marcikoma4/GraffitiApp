//
//  LandlordView.swift
//  GraffitiApp
//
//  Created by Marcell Halmai on 20/10/2026.
//

import SwiftUI

enum Tabs: Hashable {
    case artists, contracts, settings
}

struct LandlordHomeView: View {
    
    @Environment(AppData.self) private var appData
    @State var selectedTab: Tabs = .artists
    @State private var tapped = false
    
    var body: some View {
        TabView(selection: $selectedTab){
            Tab("Artists", systemImage: "paintpalette",value: .artists){
                ArtistTabView()
            }
            
            Tab("Contracts",systemImage: "text.document",value:.contracts){
                LContractsTabView()
            }
            
            Tab("Settings",systemImage: "gear",value:.settings){
                LSettingsTabView()
            }
        }
        .background(appData.backgroundGradient.ignoresSafeArea())
    }
    
}

#Preview {
    LandlordHomeView()
        .environment(AppData())
}
