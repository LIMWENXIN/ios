//
//  ContentView.swift
//  Favourite Artists
//
//  Created by labuser on 18/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            HStack {
                Spacer()
                Image(systemName: "bell.badge")
                    .imageScale(.large)
                Image(systemName:"person")
                    .imageScale(.large)
            }
            .padding()
            .foregroundColor(.bg)
        }
        HStack{
            Text("Artists")
                .padding(.leading, 15.0)
                .bold()
            Spacer()
        }
        ScrollView{
            Artists_Card(name: "Ricki Lee", image: "Ricki Lee",url:"https://en.wikipedia.org/wiki/Ricki-Lee_Coulter")
            Artists_Card(name: "Natalie Gauci", image: "Natalie Gauci",url:"https://en.wikipedia.org/wiki/Natalie_Gauci")
            Artists_Card(name: "Christie Allen", image: "christie allen",url:"https://en.wikipedia.org/wiki/Christie_Allen")
            Artists_Card(name: "Tina Arena", image: "Tina Arena",url:"https://en.wikipedia.org/wiki/Tina_Arena")
        }
    }
}
    
#Preview {
    ContentView()
}
