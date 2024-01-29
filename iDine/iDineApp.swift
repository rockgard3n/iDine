//
//  iDineApp.swift
//  iDine
//
//  Created by Liam Cashel on 11/20/23.
//

import SwiftUI
import SwiftData

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

