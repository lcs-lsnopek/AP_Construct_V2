//
//  EquationModel.swift
//  LatexMathExample
//
//  Created by Logan Snopek on 2022-05-11.
//

import Foundation
import SwiftUI

struct Equation: Identifiable {
    
    let id: Int
    var anwser1: Double
    var anwser2: Double
    var varubleA: Double
    var varubleB: Double
    var varubleC: Double
    
}

let exampleEquation = [
       Equation(id: 1, anwser1: 0, anwser2: 0, varubleA: 0, varubleB: 0, varubleC: 0)
]

