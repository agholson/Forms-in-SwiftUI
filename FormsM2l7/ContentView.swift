//
//  ContentView.swift
//  FormsM2l7
//
//  Created by Leone on 7/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var email = ""
    @State var darkMode = true
    
    @State var selectedOption = ""
    var options = ["option 1", "option 2", "option 3", "option 4"]
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Name", text: $name)
                    TextField("Email", text: $email)
                } header: {
                    Text("Personal Details")
                } footer: {
                    Text("We will never sell your data.")
                }
                
                Section {
                    Toggle("Dark Mode", isOn: $darkMode)
                    
                    Picker("Selected Option", selection: $selectedOption) {
                        ForEach(options, id: \.self) { option in
                            Text(option)
                        }
                    }
                } header: {
                    Text("Additional Options")
                }

                
                
                Section {
                    Button("Save") {
                        
                    }
                }
            }
            .navigationTitle("Form")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
