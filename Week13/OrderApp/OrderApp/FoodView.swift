//
//  DrinkView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct FoodView: View {
    @Query(filter: #Predicate<MenuItem> {item in item.type == "Food"
    }, sort: \MenuItem.name) var foodItems: [MenuItem]
    
    @Environment(\.modelContext) private var modelContext
    @State private var searchText = ""
    
    private var filteredFoodItem: [MenuItem]{
        if searchText.isEmpty{
            return foodItems
        }else{
            return foodItems.filter{ $0.name.contains(searchText)}
        }
    }
    var body: some View{
        NavigationStack{
            List {
                ForEach(filteredFoodItem) {item in
                    MenuItemView(item: item)
                }
            }
            .onAppear {
                if foodItems.isEmpty {
                    preloadMenuItems()
                }
            }
        }.searchable(text: $searchText)
    }
    
    private func preloadMenuItems() {
        let sampleFoods: [(name: String, price: Double, image: String)] = [
            ("Alaska Fish n Chip Pizza", 39.95, "Alaska Fish n Chip Pizza"),
            ("Indiana BBQ Smokey Duck Pizza", 33.95, "Indiana BBQ Smokey Duck Pizza"),
            ("San Diego Golden Tempura Pizza", 39.95, "San Diego Golden Tempura Pizza"),
            ("Aloha Pizza", 33.95, "Aloha Pizza"),
            ("Aloha Deluxe Pizza", 44.95, "Aloha Deluxe Pizza"),
            ("Bolognese Pizza (Chicken)", 44.95, "Bolognese Pizza (Chicken)"),
            ("Chicken Classic Pizza", 44.95, "Chicken Classic Pizza"),
            ("Italian Aloha Pizza", 44.95,"Italian Aloha Pizza"),
            ("Italian Aloha Deluxe Pizza", 44.95, "Italian Aloha Deluxe Pizza"),
            ("Spicy Chicken Delite Pizza", 44.95, "Spicy Chicken Delite Pizza"),
            ("US Favourite Pizza (Beef)", 44.95, "US Favourite Pizza (Beef)"),
            ("US Favourite Pizza (Chicken)", 41.95, "US Favourite Pizza (Chicken)"),
            ("Spicy Veggie Lover Pizza", 44.95, "Spicy Veggie Lover Pizza"),
            ("Vegi Lover Pizza", 44.95, "Vegi Lover Pizza"),
            ("Plain Cheese Pizza", 36.95, "Plain Cheese Pizza"),
            ("Italian Way Pizza (Beef)", 39.95, "Italian Way Pizza (Beef)"),
            ("US Lasagna (Chicken))", 23.5, "US Lasagna (Chicken)"),
            ("Italiano Spaghetti", 23.5, "Italiano Spaghetti"),
            ("Spaghetti Bolognese", 16.5, "Spaghetti Bolognese"),
            ("Spaghetti Ocean Carbonara", 18.5, "Spaghetti Ocean Carbonara")
        ]
        
        for food in sampleFoods{
            let newItem = MenuItem(name: food.name, type: "Food", price: food.price, image: food.image)
            modelContext.insert(newItem)
        }
        try? modelContext.save()
    }
}
#Preview {
    FoodView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}
