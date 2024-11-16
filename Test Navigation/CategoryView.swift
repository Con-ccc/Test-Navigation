//
//  CategoryView.swift
//  Test Navigation
//
//  Created by Con Coucoumakis on 17/11/2024.
//
import SwiftUI

// Category View with its own TabView
struct CategoryView: View {
    @Binding var path: [Screen]  // Bind the path to maintain navigation state

    var body: some View {
        TabView {
            // Navigate back to MainView
            Button(action: {
                path.removeAll()
                //path.append(.mainView)  // Push MainView onto the navigation path
            }) {
                Text("Back to Main View")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.purple.opacity(0.2))
                    .cornerRadius(10)
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
        .navigationTitle("Category View")
    }
}
