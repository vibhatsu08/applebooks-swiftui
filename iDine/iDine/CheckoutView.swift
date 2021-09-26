//
//  CheckoutView.swift
//  iDine
//
//  Created by Vedant Mistry on 26/09/21.
//

import SwiftUI

struct CheckoutView: View {
    @State private var paymentType = "Cash"
    @EnvironmentObject var order: Order
    
    let paymentTypes = ["Cash", "Credit card", "iDine points"]
    
    var body: some View {
        VStack{
            Section{
                Picker("How do you want to pay?", selection: $paymentType){
                    ForEach(paymentTypes, id: \.self){
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(Order())
    }
}
