//
//  ContentView.swift
//  7 day Forecast Weather
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI
    
struct ContentView: View {

    @State private var isSheetPresented = false
    @State private var searchText = ""
    @State private var isBlack = false
    
    let asiacities = AsiaWeatherData
    let europecities = EuropeWeatherData
    
    var asiasearchResults: [CityWeather] {
        if searchText.isEmpty {
            return asiacities
        } else {
            return asiacities.filter { $0.city.contains(searchText) }
        }
    }
    
    var eurosearchResults: [CityWeather] {
        if searchText.isEmpty {
            return europecities
        } else {
            return europecities.filter { $0.city.contains(searchText) }
        }
    }
    
    var body: some View{
        NavigationStack{
            List{
                // Asia
                Section(header: Text("Asia")){
                    ForEach(asiasearchResults, id:\.city){ asia in
                        NavigationLink{
                            CityWeatherView(cityWeather: asia)
                            ZStack {
                                Color.white
                                    .cornerRadius(10)
                                    .frame(width: 280, height: 40)
                                Button("Change Day Time",action: {
                                    isBlack = true
                                })
                            }
                            .backgroundStyle(Color.black)
                        }label:{
                            Text(asia.city)
                        }
                    }
                }
                // Europe
                Section(header: Text("Europe")){
                    ForEach(eurosearchResults, id:\.city){ europe in
                        NavigationLink{
                            CityWeatherView(cityWeather: europe)
                            ZStack {
                                Color.white
                                    .cornerRadius(10)
                                    .frame(width: 280, height: 40)
                                Button("Change Day Time",action: {
                                    isBlack = true
                                })
                            }
                            .backgroundStyle(Color.black)
                        }label:{
                            Text(europe.city)
                        }
                    }
                }
            }
            .navigationTitle("Cities")
            .toolbar{
                ToolbarItem(placement:.navigationBarTrailing){
                    Button(action:{
                        isSheetPresented = true
                    }){
                        Image(systemName: "info.circle")
                    }
                    .sheet(isPresented: $isSheetPresented) {
                        Text("This app was created by LIM WEN XIN")
                            .presentationDetents([.height(200), .large])
                    }
                }
            }
            .searchable(text: $searchText)
        }
    }
    
    
}

#Preview {
    ContentView()
}
