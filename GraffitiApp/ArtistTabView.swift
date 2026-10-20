//
//  ArtistTabView.swift
//  GraffitiApp
//
//  Created by Marcell Halmai on 20/10/2026.
//

import SwiftUI

struct ArtistTabView: View {
    @Environment(AppData.self) private var appData
    @State private var presentArtist1 = false
    @State private var presentArtist2 = false

    var body: some View {
        NavigationStack {
            ZStack {
                appData.backgroundGradient
                    .ignoresSafeArea()

                ScrollView {
                    VStack(spacing: 24) {
                        Button(action: {
                            presentArtist1 = true
                        }) {
                            HStack(spacing: 16) {
                                Image("artist1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 96, height: 96)
                                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                                            .strokeBorder(.white.opacity(0.2), lineWidth: 1)
                                    )
                                    .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)

                                VStack(alignment: .leading, spacing: 6) {
                                    Text("John Smith")
                                        .font(.system(size: 28, weight: .semibold, design: .rounded))
                                        .foregroundStyle(.primary)
                                    Text("Tap to view profile")
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)

                                Image(systemName: "chevron.right")
                                    .font(.title3)
                                    .foregroundStyle(.secondary)
                            }
                            .padding(18)
                            .frame(maxWidth: .infinity)
                            .background(
                                .ultraThinMaterial
                                    .shadow(.drop(color: .black.opacity(0.15), radius: 12, x: 0, y: 10))
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: 28, style: .continuous)
                                    .stroke(.white.opacity(0.15), lineWidth: 1)
                            )
                        }
                        .buttonStyle(.plain)
                        .sheet(isPresented: $presentArtist1){
                            Artist1()
                        }

                        Button(action: {
                            presentArtist2 = true
                        }) {
                            HStack(spacing: 16) {
                                Image("artist2")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 96, height: 96)
                                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                                            .strokeBorder(.white.opacity(0.2), lineWidth: 1)
                                    )
                                    .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)

                                VStack(alignment: .leading, spacing: 6) {
                                    Text("Jane Doe")
                                        .font(.system(size: 28, weight: .semibold, design: .rounded))
                                        .foregroundStyle(.primary)
                                    Text("Tap to view profile")
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)

                                Image(systemName: "chevron.right")
                                    .font(.title3)
                                    .foregroundStyle(.secondary)
                            }
                            .padding(18)
                            .frame(maxWidth: .infinity)
                            .background(
                                .ultraThinMaterial
                                    .shadow(.drop(color: .black.opacity(0.15), radius: 12, x: 0, y: 10))
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: 28, style: .continuous)
                                    .stroke(.white.opacity(0.15), lineWidth: 1)
                            )
                        }
                        .buttonStyle(.plain)
                        .sheet(isPresented: $presentArtist2){
                            Artist2()
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 24)
                }
                .scrollContentBackground(.hidden)
            }
            .navigationTitle("Artists")
        }
    }
}

#Preview {
    ArtistTabView()
        .environment(AppData())
}
