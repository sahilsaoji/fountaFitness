import SwiftUI

struct ConnectAppsView: View {
    @State private var googleFit = false
    @State private var appleHealth = false
    @State private var strava = false

    var body: some View {
        Form {
            Section(header: Text("Connect Your Apps")) {
                Toggle(isOn: $googleFit) {
                    Label("Google Fit", systemImage: "figure.walk")
                }

                Toggle(isOn: $appleHealth) {
                    Label("Apple Health", systemImage: "heart.fill")
                        .foregroundColor(.red)
                }

                Toggle(isOn: $strava) {
                    Label("Strava", systemImage: "bicycle")
                }
            }

            Section {
                Button(action: {
                    print("Connected: GoogleFit=\(googleFit), AppleHealth=\(appleHealth), Strava=\(strava)")
                }) {
                    HStack {
                        Spacer()
                        Text("Save Connections")
                            .bold()
                        Spacer()
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
            }
        }
        .navigationTitle("Connect Apps")
    }
}
