//
//  CheckoutView.swift
//  iDine
//
//  Created by Liam Cashel on 11/21/23.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    
    @State private var paymentType = "Cash"
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
                Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails)
                
                if addLoyaltyDetails {
                    TextField("Enter your Idine ID", text: $loyaltyNumber)
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CheckoutView()
        .environmentObject(Order())
}
