//
//  ContentView.swift
//  LatexMathExample
//
//  Created by Russell Gordon on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Proprotys
    
    @State var anwser1: Double = 0.0
    
    @Binding var equations: [Equation]
    
    @State private var selectionMade = false
    
    //MARK: Computed Proprotys
    
    var body : some View {
        
        NavigationView{
        
        VStack {
            
            Text("History")
                .font(.title2)
            
          List(equations) { currentItem in
              VStack {
                  Text("x = \(currentItem.anwser1.formatted(.number.rounded()))")
                  Text("x = \(currentItem.anwser2.formatted(.number.rounded()))")
                  Text("a = \(currentItem.varubleA.formatted(.number.rounded()))")
                  Text("b = \(currentItem.varubleB.formatted(.number.rounded()))")
                  Text("c = \(currentItem.varubleC.formatted(.number.rounded()))")
                    }
                }
            
            List(filtered(by: anwser1,
                          from: equations,
                          selectionActive: selectionMade)) { equations in

                
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
