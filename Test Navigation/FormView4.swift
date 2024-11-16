//
//  FormView.swift
//  Test Navigation
//
//  Created by Con Coucoumakis on 17/11/2024.
//

import SwiftUI

struct FormView4: View {
    var formNumber: Int

    var body: some View {
        Form {
            Text("This is Form 4\(formNumber)")
            // Add form fields and UI elements as needed
        }
        .navigationTitle("Form 4 \(formNumber)")
    }
}
