//
//  ContentView.swift
//  Forecast Weather
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(
                colors:[.white,.blue]),
                           startPoint: .top,
                           endPoint: .bottom
            )
            VStack {
                Text("Setapak, Kuala Lumpur")
                    .font(.title)
                    .bold()
                Spacer()
                Text("TODAY")
                    .bold()
                Image(systemName: "cloud.sun.bolt")
                Text("33")
                Spacer()
                HStack{
                    day(day: "THU", icon: "cloud.sun.bolt", num: "33°C")
                    day(day: "FRI", icon: "cloud.sun.fill", num: "34°C")
                    day(day: "SAT", icon: "sun.rain.fill", num: "33°C")
                    day(day: "SUN", icon: "cloud.sun.fill", num: "30°C")
                    day(day: "MON", icon: "sun.rain.fill", num: "31°C")
                }
                Spacer()
                ZStack {
                    Color.white
                        .cornerRadius(10)
                        .frame(width: 280, height: 40)
                        Text("Change Day Time")
                            .foregroundStyle(.blue)
                            .bold()
                            .font(.system(size: 18))
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
