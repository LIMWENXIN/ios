//
//  ContentView.swift
//  Counter App
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0  // State variable
    
    var body: some View {
        VStack {
            Text("Counter App")
                .font(.title)
                .bold()
                .padding(10)
            
            Text("\(counter)")
                .font(.largeTitle)
                .bold()
            
            HStack {
                Button(action: {
                    if counter > 0 {
                        counter -= 1
                    }
                }) {
                    Text("-")
                        .font(.title2)
                        .bold()
                        .padding(30)
                        .background(Circle().fill(Color.red))
                        .foregroundColor(.white)
                }
                Button(action: {
                    counter += 1
                }) {
                    Text("+")
                        .bold()
                        .padding(30)
                        .background(Circle().fill(Color.green))
                        .foregroundColor(.white)
                }
            }
            .padding()
            Button(action: {
                counter = 0
            }) {
                Text("Reset")
                    .bold()
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    
            }
            
            
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
