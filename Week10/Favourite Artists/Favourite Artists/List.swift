//
//  List.swift
//  Favourite Artists
//
//  Created by labuser on 15/01/2025.
//

import Foundation

struct ArtistsL: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var url: String
    var born: String
    var Years_active: String
}

let list = [
    ArtistsL(name: "Ricki Lee", image: "Ricki Lee",url:"https://en.wikipedia.org/wiki/Ricki-Lee_Coulter",born:"10 November 1985", Years_active: "2000–present"),
    ArtistsL(name: "Natalie Gauci", image: "Natalie Gauci",url:"https://en.wikipedia.org/wiki/Natalie_Gauci", born:"26 November 1981", Years_active:"1996–present"),
    ArtistsL(name: "Christie Allen", image: "christie allen",url:"https://en.wikipedia.org/wiki/Christie_Allen",born: "24 July 1954", Years_active:"1962–1998"),
    ArtistsL(name: "Tina Arena", image: "Tina Arena",url:"https://en.wikipedia.org/wiki/Tina_Arena",born:"1 November 1967", Years_active:"1976–present")
    ]

