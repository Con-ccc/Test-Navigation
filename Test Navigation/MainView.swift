import SwiftUI

// Main View with its own TabView
struct MainView: View {
    var body: some View {
        TabView {
            Text("Main View Content")
                .tabItem {
                    Label("Main", systemImage: "house")
                }
            
            NavigationLink(destination: ExpenseView()) {
                Text("Go to Expenses")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue.opacity(0.2))
            }
            .tabItem {
                Label("Expenses", systemImage: "dollarsign.circle")
            }
            
            NavigationLink(destination: CategoryView()) {
                Text("Go to Category")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.green.opacity(0.2))
            }
            .tabItem {
                Label("Category", systemImage: "folder")
            }
            
            Text("Graphs Content")
                .tabItem {
                    Label("Graphs", systemImage: "chart.bar")
                }
        }
    }
}

// Expense View with its own TabView
struct ExpenseView: View {
    var body: some View {
        TabView {
            NavigationLink(destination: MainView()) {
                Text("Back to Main View")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.orange.opacity(0.2))
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
    }
}

// Category View with its own TabView
struct CategoryView: View {
    var body: some View {
        TabView {
            NavigationLink(destination: MainView()) {
                Text("Back to Main View")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.purple.opacity(0.2))
            }
            .tabItem {
                Label("Main", systemImage: "house")
            }
            
            Text("History Content")
                .tabItem {
                    Label("History", systemImage: "clock")
                }
            
            Text("Reconcile Content")
                .tabItem {
                    Label("Reconcile", systemImage: "checkmark.circle")
                }
            
            Text("Pay Content")
                .tabItem {
                    Label("Pay", systemImage: "creditcard")
                }
        }
    }
}

// Preview for MainView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
