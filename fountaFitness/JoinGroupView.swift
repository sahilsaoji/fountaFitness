import SwiftUI

struct JoinGroupView: View {
    @State private var groupName: String = ""
    @State private var searchText: String = ""
    @State private var groups = ["Morning Runners", "Mindful Meditators", "30-Day Pushups"]

    var body: some View {
        VStack(spacing: 24) {
            Text("Groups")
                .font(.title)
                .bold()

            // Search bar
            TextField("Search groups...", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            // List of groups
            List {
                ForEach(groups.filter {
                    searchText.isEmpty ? true : $0.localizedCaseInsensitiveContains(searchText)
                }, id: \.self) { group in
                    HStack {
                        Image(systemName: "person.3.fill")
                        Text(group)
                        Spacer()
                        Button("Join") {
                            print("Joining \(group)")
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.blue)
                    }
                }
            }

            Divider()

            // Create new group
            VStack {
                Text("Create a New Group")
                    .font(.headline)

                TextField("Enter group name", text: $groupName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                Button(action: {
                    print("Created group: \(groupName)")
                    groupName = ""
                }) {
                    Text("Create Group")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
                .padding(.horizontal)
            }

            Spacer()
        }
        .padding(.top)
    }
}
