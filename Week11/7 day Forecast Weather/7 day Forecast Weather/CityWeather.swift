//
//  CityWeather.swift
//  7 day Forecast Weather
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct CityWeather: Identifiable {
    let id = UUID()
    let city: String
    let weather: [Weather]
}

struct Weather: Identifiable {
    let id = UUID()
    let day: String
    let icon:String
    let temperature: Int
}

let AsiaWeatherData: [CityWeather] = [
    CityWeather(
        city: "Kajang",
        weather: [
            Weather(day: "TODAY", icon: "cloud",temperature: 32),
            Weather(day: "THU", icon: "cloud.bolt", temperature: 31),
            Weather(day: "FRI", icon: "cloud.heavyrain", temperature: 31),
            Weather(day: "SAT", icon: "cloud.bolt", temperature: 29),
            Weather(day: "SUN", icon: "cloud", temperature: 32),
        ]
    ),
    CityWeather(
        city: "Kuala Lumpur",
        weather: [
            Weather(day: "TODAY", icon: "cloud",temperature: 32),
            Weather(day: "THU", icon: "cloud.bolt", temperature: 31),
            Weather(day: "FRI", icon: "cloud.heavyrain", temperature: 31),
            Weather(day: "SAT", icon: "cloud", temperature: 30),
            Weather(day: "SUN", icon: "cloud.sun", temperature: 32),
        ]
    ),
    CityWeather(
        city: "Shanghai",
        weather: [
            Weather(day: "TODAY", icon: "cloud.sun.fill",temperature: 16),
            Weather(day: "THU", icon: "cloud.sun.fill", temperature: 16),
            Weather(day: "FRI", icon: "cloud.sun.fill", temperature: 15),
            Weather(day: "SAT", icon: "cloud.sun.fill", temperature: 17),
            Weather(day: "SUN", icon: "cloud.sun", temperature: 15),
        ]
    )
]

let EuropeWeatherData: [CityWeather] = [
    CityWeather(
        city: "Berlin",
        weather: [
            Weather(day: "TODAY", icon: "cloud.sun",temperature: 4),
            Weather(day: "THU", icon: "cloud.rain", temperature: 6),
            Weather(day: "FRI", icon: "cloud.sun.fill", temperature: 8),
            Weather(day: "SAT", icon: "cloud.sun.fill", temperature: 5),
            Weather(day: "SUN", icon: "cloud.sun", temperature:7),
        ]
    ),
    CityWeather(
        city: "Strasbourg",
        weather: [
            Weather(day: "TODAY", icon: "cloud",temperature: 3),
            Weather(day: "THU", icon: "cloud.drizzle", temperature: 8),
            Weather(day: "FRI", icon: "cloud", temperature: 10),
            Weather(day: "SAT", icon: "cloud", temperature: 3),
            Weather(day: "SUN", icon: "cloud.sun", temperature: 5),
        ]
    ),
    CityWeather(
        city: "Dublin",
        weather: [
            Weather(day: "TODAY", icon: "cloud.sun.fill",temperature: 6),
            Weather(day: "THU", icon: "cloud.drizzle", temperature: 6),
            Weather(day: "FRI", icon: "cloud.sun.fill", temperature: 8),
            Weather(day: "SAT", icon: "cloud.sun.fill", temperature: 7),
            Weather(day: "SUN", icon: "cloud.drizzle", temperature: 5),
        ]
    )
]

struct CityWeatherView: View {
    var cityWeather: CityWeather
    
    var body: some View {
        Text(cityWeather.city)
            .font(.title)
            .bold()
        HStack {
            ForEach(cityWeather.weather) { weather in
                VStack {
                    Text(weather.day)
                        .font(.headline)
                    Image(systemName: weather.icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                    Text("\(weather.temperature)°C")
                        .font(.subheadline)
                }
                .padding(.vertical)
            }
        }

        .padding()
    }
}
