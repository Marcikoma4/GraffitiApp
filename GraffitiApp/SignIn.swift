//
//  ContentView.swift
//  GraffitiApp
//
//  Created by Marcell Halmai on 07/10/2026.
//

import SwiftUI

struct SignIn: View {
    
    @Environment(AppData.self) private var appData
    @State private var navigateToLandlordView = false
    @State private var navigateToArtistView = false
    @State private var tapped = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                appData.backgroundGradient.ignoresSafeArea()
                VStack(spacing: 50){
                    Text("Tap 'Landlord' if you are a landlord or tap 'Artist' if you are an artist...")
                        .font(.system(size: 20))
                    Spacer()
                        .frame(height:100)
                    Button {
                        tapped = true
                        navigateToLandlordView = true
                    } label: {
                        Text("Landlord")
                    }
                    .buttonStyle(.glass)
                    .controlSize(.large)
                    .sensoryFeedback(.success, trigger: tapped)
                    .navigationDestination(isPresented: $navigateToLandlordView) {
                        LandlordHomeView()
                    }
                    Button {
                        tapped = true
                        navigateToArtistView = true
                    } label: {
                        Text("Artist")
                    }
                    .buttonStyle(.glass)
                    .controlSize(.large)
                    .sensoryFeedback(.success, trigger: tapped)
                    .navigationDestination(isPresented: $navigateToArtistView) {
                        ArtistHomeView()
                    }
                }
                .navigationTitle("Sign In")
            }
        }
    }
}

#Preview {
    SignIn()
        .environment(AppData())
}
