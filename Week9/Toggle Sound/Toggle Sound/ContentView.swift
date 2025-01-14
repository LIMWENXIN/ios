//
//  ContentView.swift
//  Toggle Sound
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var soundOn = true
    
    var body: some View {
        VStack {
            if soundOn == true{
                Toggle("",isOn: $soundOn)
                    .padding()
                Image(systemName: "speaker.wave.1")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .frame(alignment: .center)
            }
            else{
                Toggle("",isOn: $soundOn)
                    .padding()
                Image(systemName: "speaker.slash.fill")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .frame(alignment: .center)
            }
        }
        .frame(width: 0, alignment: .center)
        Spacer()
    }

}

#Preview {
    ContentView()
}
