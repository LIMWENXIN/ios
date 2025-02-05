//
//  DrinkView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct DrinkView: View {
    @Query(filter: #Predicate<MenuItem> {item in item.type == "Drink"
    }, sort: \MenuItem.name) var drinkItems: [MenuItem]
    
    @Environment(\.modelContext) private var modelContext
    @State private var searchText = ""
    
    private var filteredDrinkItem: [MenuItem]{
        if searchText.isEmpty{
            return drinkItems
        }else{
            return drinkItems.filter{ $0.name.contains(searchText)}
        }
    }
    
    var body: some View{
        NavigationStack{
            List {
                ForEach(filteredDrinkItem) {item in
                    MenuItemView(item: item)
                }
            }
            .onAppear {
                if drinkItems.isEmpty {
                    preloadMenuItems()
                }
            }
        }.searchable(text: $searchText)
        
    }
    
    private func preloadMenuItems() {
        let sampleDrinks: [(name: String, price: Double, image: String)] = [
            ("Chocolate Milkshake", 13.95, "Chocolate Milkshake"),
            ("American Iced Tea With Lemon (1.5litre)", 13.95,"American Iced Tea With Lemon (1.5litre)"),
            ("American Iced Tea (1.5litre)", 10.5, "American Iced Tea (1.5litre)"),
            ("American Iced Tea With Lemon (500ml)", 8.95, "American Iced Tea With Lemon (500ml)"),
            ("American Iced Tea (500ml)", 6.55, "American Iced Tea (500ml)"),
            ("Belgian's Dark Chocolate Lava Cake", 10.9, "Belgian's Dark Chocolate Lava Cake"),
            ("Coca-Cola Original", 5.9, "Coca-Cola Original"),
            ("Cool Breeze Frappe Strawberry", 13.95, "Cool Breeze Frappe Strawberry"),
            ("Sprite", 5.9, "Sprite"),
            ("Apple Juice", 10.9, "Apple Juice")
        ]
        
        for drink in sampleDrinks{
            let newItem = MenuItem(name: drink.name, type: "Drink", price: drink.price, image: drink.image)
            modelContext.insert(newItem)
        }
        try? modelContext.save()
    }
}
#Preview {
    DrinkView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}
