//
//  OrderSummaryView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct OrderSummaryView: View {
    @Query var orderItems: [MenuItem]
    
    var body: some View {
        VStack {
            List {
                Section(header: Text("Food")) {
                    ForEach(orderItems.filter { $0.isAddedToOrder && $0.type == "Food" }) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price, specifier: "%.2f")")
                        }
                    }
                }
                
                Section(header: Text("Drinks")) {
                    ForEach(orderItems.filter { $0.isAddedToOrder && $0.type == "Drink" }) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price, specifier: "%.2f")")
                        }
                    }
                }
            }
            
            Text("Total: $\(calculateOrderTotal(), specifier: "%.2f")")
                .font(.headline)
                .padding()
        }
        .listStyle(InsetGroupedListStyle())
    }
    
    private func calculateOrderTotal() -> Double {
        var total: Double = 0
        for item in orderItems.filter({ $0.isAddedToOrder }) {
            total += item.price
        }
        return total
    }
}

#Preview {
    OrderSummaryView()
}

