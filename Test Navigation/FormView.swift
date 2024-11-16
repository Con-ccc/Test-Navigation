struct FormView: View {
    var formNumber: Int

    var body: some View {
        Form {
            Text("This is Form \(formNumber)")
            // Add form fields and UI elements as needed
        }
        .navigationTitle("Form \(formNumber)")
    }
}