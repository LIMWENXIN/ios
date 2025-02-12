//
//  ContentView.swift
//  Profile
//
//  Created by labuser on 17/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top){
            Image("background")
                .resizable()
                .frame(height: UIScreen.main.bounds.height/4)
                .ignoresSafeArea()
            VStack{
                Image("LWX")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .overlay(Circle().stroke(Color.white,lineWidth:4))
                    .padding(.all)
                    .frame(width: 250, height: 250)
                Text("LIM WEN XIN")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.color)
                Text("IOS Developer")
                    .font(.title)
                Text("ACSS is a digital agency company and website studio specializing in products, E-commerce, and SaaS website.")
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    .frame(width: 400, height:100)
                Spacer()
                HStack{
                    Image("IG")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Image("facebook")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Image("Linkedln")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Image("tiktok")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
