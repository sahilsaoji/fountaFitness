//
//  ContentView.swift
//  fountaFitness
//
//  Created by Sahil Saoji on 8/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 32) {
                // App tagline
                Text("The Best Way to Build Habits is Together!")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                Spacer()

                // Action buttons
                VStack(spacing: 20) {
                    NavigationLink(destination: JoinGroupView()) {
                        MainButton(title: "Join / Create a Group", systemImage: "person.3.fill", color: .blue)
                    }

                    NavigationLink(destination: CreateChallengeView()) {
                        MainButton(title: "Create a Challenge", systemImage: "flag.fill", color: .green)
                    }

                    NavigationLink(destination: ConnectAppsView()) {
                        MainButton(title: "Connect Apps", systemImage: "app.connected.to.app.below.fill", color: .orange)
                    }
                }

                Spacer()
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}

// MARK: - Reusable button style
struct MainButton: View {
    let title: String
    let systemImage: String
    let color: Color

    var body: some View {
        HStack {
            Image(systemName: systemImage)
                .font(.title2)
            Text(title)
                .font(.headline)
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity)
        .padding()
        .background(color)
        .cornerRadius(16)
        .shadow(radius: 5)
    }
}

#Preview {
    ContentView()
}
