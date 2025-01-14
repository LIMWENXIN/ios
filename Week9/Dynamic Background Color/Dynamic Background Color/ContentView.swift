//
//  ContentView.swift
//  Dynamic Background Color
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var isRed = true
    
    var body: some View {
        if isRed == true{
            ZStack{
                Color.red
                ZStack {
                    Button("Change Color",action: {
                        isRed.toggle()
                    })
                    .foregroundStyle(Color.black)
                }
            }
            .ignoresSafeArea(.all)
        }
        else{
            Button("Change Color",action: {
                isRed.toggle()
            })
            .foregroundStyle(Color.black)
        }
    }
}

#Preview {
    ContentView()
}
