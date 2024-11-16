// Expense View with its own TabView
struct ExpenseView: View {
    @Binding var path: [Screen]  // Bind the path to maintain navigation state

    var body: some View {
        TabView {
            // Navigate back to MainView
            Button(action: {
                path.append(.mainView)  // Push MainView onto the navigation path
            }) {
                Text("Back to Main View")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.orange.opacity(0.2))
                    .cornerRadius(10)
            }
            .tabItem {
                Label("Main", systemImage: "house")
            }
            
            Text("Add Expense Content")
                .tabItem {
                    Label("Add Expense", systemImage: "plus.circle")
                }
            
            Text("Modify Expense Content")
                .tabItem {
                    Label("Modify Expense", systemImage: "pencil")
                }
            
            Text("Transfer Content")
                .tabItem {
                    Label("Transfer", systemImage: "arrow.right.arrow.left")
                }
            
            Text("Summaries Content")
                .tabItem {
                    Label("Summaries", systemImage: "doc.text.magnifyingglass")
                }
        }
        .navigationTitle("Expense View")
    }
}