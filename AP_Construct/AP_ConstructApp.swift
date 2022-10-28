//
//  AP_ConstructApp.swift
//  AP_Construct
//
//  Created by Logan Snopek on 2022-10-28.
//

import SwiftUI

@main
struct AP_ConstructApp: App {
    
    @State var equations: [Equation] = []
    
    var body: some Scene {
        WindowGroup {
            
            TabView {
                
            AddEquationView(equations: $equations)
                    .tabItem {
                        Image(systemName: "suit.heart.fill")
                        Text("Couculater")
                    }
           
            ContentView(equations: $equations)
                    .tabItem {
                        Image(systemName: "suit.heart.fill")
                        Text("History")
                    }
            }
            
        }
    }
}
