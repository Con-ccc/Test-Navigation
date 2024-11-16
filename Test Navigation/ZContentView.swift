//
//  ContentView.swift
//  Test Navigation
//
//  Created by Con Coucoumakis on 17/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedForm = 1
    
    var body: some View {
        VStack {
            Picker("Select Form", selection: $selectedForm) {
                ForEach(1...10, id: \.self) { index in
                    Text("Form \(index)").tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            FormView(formNumber: selectedForm)
        }
    }
}
#Preview {
    ContentView()
}
