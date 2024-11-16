//
//  FormView.swift
//  Test Navigation
//
//  Created by Con Coucoumakis on 17/11/2024.
//

import SwiftUI

struct FormView3: View {
    var formNumber: Int

    var body: some View {
        Form {
            Text("This is Form 3\(formNumber)")
            // Add form fields and UI elements as needed
        }
        .navigationTitle("Form 3 \(formNumber)")
    }
}
