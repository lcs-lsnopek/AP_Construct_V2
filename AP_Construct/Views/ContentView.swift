//
//  ContentView.swift
//  LatexMathExample
//
//  Created by Russell Gordon on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Proprotys
    
    @Binding var equations: [Equation]
    
    //MARK: Computed Proprotys
    
    var body : some View {
        
        NavigationView{
        
        VStack {
            
            Text("History")
                .font(.title2)
            
            List(equations) { currentItem in
                VStack {
                    Text("x = \(currentItem.anwser1)")
                    Text("x = \(currentItem.anwser2)")
                    Text("a = \(currentItem.varubleA)")
                    Text("b = \(currentItem.varubleB)")
                    Text("c = \(currentItem.varubleC)")
                }
            }
            
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(equations: .constant(exampleEquation))
    }
}
