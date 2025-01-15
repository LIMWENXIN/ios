//
//  ContentView.swift
//  Favourite Artists
//
//  Created by labuser on 18/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedList: ArtistsL? = nil
    
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
        
        List(list) { list in
                    Button(action: {
                        selectedList = list
                    }) {
                        HStack {
                            Text(list.name)
                            Spacer()
                            Image(list.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                        }
                    }
                }
        .sheet(item: $selectedList) { list in
            Artists_Card(name: list.name, image: list.image,url:list.url,born:list.born,Years_active: list.Years_active)
                .presentationDetents([.medium])
        }
    }
}
    
#Preview {
    ContentView()
}
