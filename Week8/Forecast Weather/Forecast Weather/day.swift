//
//  day.swift
//  Forecast Weather
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct day: View {
    var day:String
    var icon:String
    var num:String
    
    var body: some View {
        VStack {
            Text(day)
            Image(systemName: icon)
            Text(num)
        }
    }
}

#Preview {
    day(day: "-", icon: "-", num: "-")
}
