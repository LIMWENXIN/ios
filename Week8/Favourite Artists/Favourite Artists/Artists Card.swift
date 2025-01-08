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
    
    var body: some View {
        VStack {
            ZStack {
                Color.grey
                    .overlay(
                        HStack {
                            VStack {
                                Spacer()
                                Text(name)
                                    .bold()
                                    .font(.title2)
                                    .padding()
                            }
                            Spacer()
                            ZStack {
                                Image(image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                VStack {
                                    Spacer()
                                    Text("View")
                                        .background(.white)
                                        .padding()
                                }
                            }
                        }
                    )
            }
        }
        .cornerRadius(15)
        .frame(height: 160)
        .padding()
    }
}

#Preview {
    Artists_Card(name:"null",image:"a")
}
