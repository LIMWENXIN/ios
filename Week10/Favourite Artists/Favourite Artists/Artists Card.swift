//
//  Artists Card.swift
//  Favourite Artists
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct Artists_Card: View {
    var name:String
    var image:String
    var url:String
    var born:String
    var Years_active: String
    
    var body: some View {
        HStack {
            Text("Name:")
                .bold()
            Text(name)
                .bold()
                .font(.title2)
        }
        VStack {
            ZStack {
                Color.grey
                    .overlay(
                        HStack {
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 200)
                            VStack {
                                Button(action: {
                                           if let url = URL(string: url) {
                                                UIApplication.shared.open(url)
                                          }
                                }) {
                                    HStack {
                                        Text("View")
                                        Image(systemName: "chevron.right")
                                    }
                                    .padding(5)
                                    .background(Color.white)
                                    .cornerRadius(30)
                                }
                                .padding(10)
                                
                            }
                            .frame(width: 200, height: 150, alignment: .trailing)
                        }
                    )
            }
        }
        .cornerRadius(15)
        .frame(height: 160)
        .padding()
        
        HStack {
            Text("Born:")
                .bold()
            Text(born)
                .font(.title3)
        }
        HStack {
            Text("Years Active:")
                .bold()
            Text(Years_active)
                .font(.title3)
        }
    }
}

#Preview {
    Artists_Card(name:"null",image:"Ricki Lee",url:"url",born:"born", Years_active: "years active")
}
