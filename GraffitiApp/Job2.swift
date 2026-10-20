//
//  Job2.swift
//  GraffitiApp
//
//  Created by Marcell Halmai on 20/10/2026.
//

import SwiftUI

struct Job2: View {
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
                            Text("Job image placeholder")
                                .foregroundStyle(.secondary)
                                .font(.subheadline)
                        }
                        .padding()
                    }
                    .padding(.horizontal)

                    // Info row: time left and pay
                    HStack(spacing: 12) {
                        Label {
                            Text("Time left: 4 weeks")
                        } icon: {
                            Image(systemName: "clock")
                        }
                        .font(.subheadline)
                        .foregroundStyle(.primary)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(.ultraThinMaterial)
                        .clipShape(Capsule())

                        Label {
                            Text("Pay: £500")
                        } icon: {
                            Image(systemName: "sterlingsign.circle")
                        }
                        .font(.subheadline)
                        .foregroundStyle(.primary)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(.ultraThinMaterial)
                        .clipShape(Capsule())

                        Spacer()
                    }
                    .padding(.horizontal)

                    // Description placeholder
                    VStack(alignment: .leading, spacing: 12) {
                        Text("About this Job")
                            .font(.title2.bold())
                            .foregroundStyle(.primary)
                        Text("This is a placeholder for the job description. Scope, wall size, surface prep, style preferences and any constraints would be added here.")
                            .font(.body)
                            .foregroundStyle(.secondary)
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.horizontal)

                    Spacer(minLength: 0)
                }
                .padding(.top, 24)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        tapped.toggle()
                        dismiss()
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .font(.title2)
                            .sensoryFeedback(.success, trigger: tapped)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Get in Touch") {
                        tapped.toggle()
                    }
                    .buttonStyle(.glassProminent)
                }
            }
        }
    }
}

#Preview {
    Job2()
        .environment(AppData())
}
