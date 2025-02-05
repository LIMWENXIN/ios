//
//  ProfileView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct ProfileView: View {
    @Query var allItems: [MenuItem]
    @Environment(\.modelContext) private var modelContext
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmpassword = ""
    
    var body:some View{
        Text("Register Page")
            .font(.title)
        VStack {
            HStack {
                Text("Email:")
                TextField("email", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
            }
            HStack {
                Text("Password:")
                SecureField("password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
            }
            HStack {
                Text("Confirm Password:")
                SecureField("confirmpassword", text: $confirmpassword)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
            }
            
            Button("Register") {}
            
            Button(action:{clearAllMenuItems()}){
                Text("Clear All Menu Items")
            }
        }
        .padding()
        
    }
    private func clearAllMenuItems(){
        for item in allItems {
            modelContext.delete(item)
        }
        try? modelContext.save()
    }
}

#Preview {
    ProfileView()
}
