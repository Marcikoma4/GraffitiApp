//
//  Landlord1.swift
//  GraffitiApp
//
//  Created by Marcell Halmai on 20/10/2026.
//

import SwiftUI

struct Landlord1: View {
    @Environment(AppData.self) private var appData
    @State private var tapped = false
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            ZStack {
                appData.backgroundGradient
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    // Image placeholder (replace with real asset later)
                    ZStack {
                        RoundedRectangle(cornerRadius: 28, style: .continuous)
                            .fill(.ultraThinMaterial)
                            .overlay(
                                RoundedRectangle(cornerRadius: 28, style: .continuous)
                                    .stroke(.white.opacity(0.15), lineWidth: 1)
                            )
                            .frame(height: 260)
                        VStack(spacing: 8) {
                            Image(systemName: "photo")
                                .font(.system(size: 48))
                                .foregroundStyle(.secondary)
                            Text("Location image placeholder")
                                .foregroundStyle(.secondary)
                                .font(.subheadline)
                        }
                        .padding()
                    }
                    .padding(.horizontal)

                    // Description placeholder
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Job description")
                            .font(.title2.bold())
                            .foregroundStyle(.primary)
                        Text("This is a placeholder for the landlord description. The landlord would explain the details of the job, say what kind of artist they are looking for and list the location.")
                            .font(.body)
                            .foregroundStyle(.secondary)
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.horizontal)

                    Spacer(minLength: 0)
                }
                .padding(.top, 24)
            }
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        tapped.toggle()
                        dismiss()
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.title2)
                            .sensoryFeedback(.success, trigger: tapped)
                    })
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Connect") {
                        tapped.toggle()
                    }
                    .buttonStyle(.glassProminent)
                }
            }
        }
    }
}

#Preview {
    Landlord1()
        .environment(AppData())
}
