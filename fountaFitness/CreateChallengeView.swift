import SwiftUI

struct CreateChallengeView: View {
    @State private var challengeName = ""
    @State private var duration = 7
    @State private var selectedCategory = "Fitness"

    let categories = ["Fitness", "Mindfulness", "Nutrition", "Reading", "Custom"]

    var body: some View {
        Form {
            Section(header: Text("Challenge Info")) {
                TextField("Challenge name", text: $challengeName)

                Picker("Category", selection: $selectedCategory) {
                    ForEach(categories, id: \.self) { category in
                        Text(category)
                    }
                }

                Stepper(value: $duration, in: 1...60) {
                    Text("Duration: \(duration) days")
                }
            }

            Section {
                Button(action: {
                    print("Created challenge: \(challengeName) in \(selectedCategory) for \(duration) days")
                    challengeName = ""
                }) {
                    HStack {
                        Spacer()
                        Text("Create Challenge")
                            .bold()
                        Spacer()
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.orange)
            }
        }
        .navigationTitle("Create a Challenge")
    }
}
