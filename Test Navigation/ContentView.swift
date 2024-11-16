import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                NavigationLink(destination: ViewOne()) {
                    Text("Navigate to View 1")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.blue.opacity(0.2))
                }
                .tabItem {
                    Label("View 1", systemImage: "1.circle")
                }
                
                NavigationLink(destination: ViewTwo()) {
                    Text("Navigate to View 2")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.green.opacity(0.2))
                }
                .tabItem {
                    Label("View 2", systemImage: "2.circle")
                }
            }
            .navigationTitle("Main Menu")
        }
    }
}

struct ViewOne: View {
    var body: some View {
        TabView {
            TabContentView(text: "Tab 1 Content", label: "Tab 1", iconName: "1.circle")
            TabContentView(text: "Tab 2 Content", label: "Tab 2", iconName: "2.circle")
            
            NavigationLink(destination: ContentView()) {
                VStack {
                    Text("Return to Main Menu")
                        .font(.headline)
                        .padding()
                }
            }
            .tabItem {
                Label("Main", systemImage: "house")
            }
            
            TabContentView(text: "Tab 4 Content", label: "Tab 4", iconName: "4.circle")
        }
    }
}

struct ViewTwo: View {
    var body: some View {
        TabView {
            NavigationLink(destination: ContentView()) {
                VStack {
                    Text("Return to Main Menu")
                        .font(.headline)
                        .padding()
                }
            }
            .tabItem {
                Label("Main", systemImage: "house")
            }
            
            TabContentView(text: "Tab 10 Content", label: "Tab 10", iconName: "10.circle")
            TabContentView(text: "Tab 11 Content", label: "Tab 11", iconName: "11.circle")
            TabContentView(text: "Tab 12 Content", label: "Tab 12", iconName: "12.circle")
            TabContentView(text: "Tab 13 Content", label: "Tab 13", iconName: "13.circle")
        }
    }
}

// Reusable tab content view
struct TabContentView: View {
    let text: String
    let label: String
    let iconName: String
    
    var body: some View {
        VStack {
            Text(text)
                .font(.largeTitle)
                .padding()
        }
        .tabItem {
            Label(label, systemImage: iconName)
        }
    }
}
