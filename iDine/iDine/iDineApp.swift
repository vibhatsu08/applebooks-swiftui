//
//  iDineApp.swift
//  iDine
//
//  Created by Vedant Mistry on 25/09/21.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
