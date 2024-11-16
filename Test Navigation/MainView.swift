import SwiftUI

// Enum to represent navigation states
enum Screen: Hashable {
    case mainView
    case expenseView
    case categoryView
}

// Main View with its own TabView
struct MainView: View {
    @State private var path = [Screen]()  // The path to manage navigation

    var body: some View {
        NavigationStack(path: $path) {
            TabView {
                Text("Main View Content")
                    .tabItem {
                        Label("Main", systemImage: "house")
                    }
                
                // Navigate to ExpenseView
                Button(action: {
                    path.append(.expenseView)  // Push ExpenseView onto the navigation path
                }) {
                    Text("Go to Expenses")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(10)
                }
                .tabItem {
                    Label("Expenses", systemImage: "dollarsign.circle")
                }
                
                // Navigate to CategoryView
                Button(action: {
                    path.append(.categoryView)  // Push CategoryView onto the navigation path
                }) {
                    Text("Go to Category")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.green.opacity(0.2))
                        .cornerRadius(10)
                }
                .tabItem {
                    Label("Category", systemImage: "folder")
                }
                
                Text("Graphs Content")
                    .tabItem {
                        Label("Graphs", systemImage: "chart.bar")
                    }
            }
            .navigationTitle("Main View")
            .navigationDestination(for: Screen.self) { screen in
                switch screen {
                case .mainView:
                    MainView()  // This will push the MainView again if needed
                case .expenseView:
                    ExpenseView(path: $path)  // Pass path as binding to ExpenseView
                case .categoryView:
                    CategoryView(path: $path)  // Pass path as binding to CategoryView
                }
            }
        }
    }
}




// Preview for MainView and other views
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
