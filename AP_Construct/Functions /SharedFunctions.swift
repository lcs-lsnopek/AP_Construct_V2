//
//  SharedFunctions.swift
//  AP_Construct
//
//  Created by Logan Snopek on 2022-11-08.
//

import Foundation

func filtered(by anwser1: Double, from list: [Equation], selectionActive: Bool) -> [Equation] {
    
    if selectionActive == false {
        return list
    } else {
        let anwser1Range = (anwser1 + 5)...(anwser1 - 5)
        
        var filteredResults: [Equation] = []
        
        for anwser in list {
            
            if anwser1Range.contains(anwser1) {
                filteredResults.append(anwser)
            }
        }
        return filteredResults
    }
}
