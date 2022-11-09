//
//  AddEquationView.swift
//  LatexMathExample
//
//  Created by Logan Snopek on 2022-05-11.
//

import SwiftUI

struct AddEquationView: View {
    //MARK: Stored Proprotys
    
    @Binding var equations: [Equation]
    
    // Is the "a" varuble in the Quadradic equation
    @State var varubleA: Double = 0
    
    // Is the "b" varuble in the Quadradic equation
    @State var varubleB: Double = 0
    
    // Is the "c" varuble in the Quadradic equation
    @State var varubleC: Double = 0
    
    //MARK: Computed Proprotys
    
    var anwser1: Double {
        return (pow(-varubleB, 2) + sqrt(pow(varubleB, 2) - 4 * varubleA * varubleC)) / (2 * varubleA)
    }
    
    var anwser2: Double {
        return (pow(-varubleB, 2) - sqrt(pow(varubleB, 2) - 4 * varubleA * varubleC)) / (2 * varubleA)
    }
    
    var body: some View {
        
        VStack{
            
            Text("x=\(anwser1.formatted(.number.rounded()))")
                .padding()
                .font(.title2)
            
            Text("x=\(anwser2.formatted(.number.rounded()))")
                .padding()
                .font(.title2)
            
            Group {
                
            Text("Varuble a")
            Slider(value: $varubleA,
                   in: -100.0...100.0,
                   label: {
                        Text("a")
            },
                   minimumValueLabel: {
                        Text("-100")
            },
                   maximumValueLabel: {
                        Text("100")
            })
                .padding()
          //  floor(varubleA * 10) / 10.0
            Text("\(varubleA.formatted(.number.rounded()))")
            
            Text("Varuble b")
            Slider(value: $varubleB,
                   in: -100.0...100.0,
                   label: {
                        Text("b")
            },
                   minimumValueLabel: {
                        Text("-100")
            },
                   maximumValueLabel: {
                        Text("100")
            })
                .padding()
            Text("\(varubleB.formatted(.number.rounded()))")
            
            Text("Varuble c")
            Slider(value: $varubleC,
                   in: -100.0...100.0,
                   label: {
                        Text("c")
            },
                   minimumValueLabel: {
                        Text("-100")
            },
                   maximumValueLabel: {
                        Text("100")
            })
            .padding()
            Text("\(varubleC.formatted(.number.rounded()))")
            }
            
            Button(action: {
                
                saveResult()
                
            }, label: {
                Text("Save")
            })
            .buttonStyle(.bordered)
            
        }

    }
        
    //MARK: Functions
    
    func saveResult() {
        
        let newResult = Equation(id: 1,
                                 anwser1: anwser1,
                                 anwser2: anwser2,
                                 varubleA: varubleA,
                                 varubleB: varubleB,
                                 varubleC: varubleC)
        
        equations.insert(newResult, at: 0)
    }
}



struct AddEquationView_Previews: PreviewProvider {
    static var previews: some View {
        AddEquationView(equations: .constant(exampleEquation))
    }
}
