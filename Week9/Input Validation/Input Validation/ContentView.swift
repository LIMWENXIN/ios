//
//  ContentView.swift
//  Input Validation
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""

        var body: some View {
            ZStack {
                TextField("Required", text: $username)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                if username.count >= 5{
                    Text("Valid")
                        .foregroundStyle(Color.green)
                }
                else{
                    Text("Too short")
                        .foregroundStyle(Color.red)
                }
            }
            .padding()
            .background(Color.gray)
            .padding()
        }
}

#Preview {
    ContentView()
}
