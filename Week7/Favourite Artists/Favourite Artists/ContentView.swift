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
        VStack{
                Color.grey
                    .cornerRadius(15)
                    .padding(10)
                    .overlay(
                        HStack{
                            VStack{
                                Spacer()
                                Text("Ricki Lee")
                                    .foregroundColor(.text)
                            }
                            .padding([.leading, .bottom])
                            Spacer()
                            Image("Ricki Lee")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 140)
                                .padding(.trailing, 20.0)
                                .clipShape(Rectangle())
                        }
                    )
                Color.pink
                    .cornerRadius(15)
                    .padding(10)
                    .overlay(
                        HStack{
                            VStack{
                                Spacer()
                                Text("Natalie Gauci")
                                    .foregroundColor(.text)
                            }
                            .padding([.leading, .bottom])
                            Spacer()
                            Image("Natalie Gauci")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 140)
                                .padding(.trailing, 20.0)
                                .clipShape(Rectangle())
                                
                        }
                    )
                Color.green
                    .cornerRadius(15)
                    .padding(10)
                    .overlay(
                        HStack{
                            VStack{
                                Spacer()
                                Text("Christie Allen")
                                    .foregroundColor(.text)
                            }
                            .padding([.leading, .bottom])
                            Spacer()
                            Image("christie allen")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 150)
                                .padding(.trailing, 20.0)
                                .clipShape(Rectangle())
                        }
                    )
            
            Color("Tinabg")
                    .cornerRadius(15)
                    .padding(10)
                    .overlay(
                        HStack{
                            VStack{
                                Spacer()
                                Text("Tina Arena")
                                    .foregroundColor(.text)
                            }
                            .padding([.leading, .bottom])
                            Spacer()
                            Image("Tina Arena")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 140)
                                .padding(.trailing, 20.0)
                                .clipShape(Rectangle())
                                
                        }
                    )
            
        }
    }
    
}

#Preview {
    ContentView()
}
