//
//  calcButtons.swift
//  CalcCreation
//
//  Created by Cameron Elkins on 1/14/24.
//

import Foundation
import SwiftUI

enum CalcButton: String
{
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "÷"
    case multiply = "×"
    case equal = "="
    case clear = "C"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
    
    //All calc buttons
    
    var buttonColor : Color
    {
        switch self
        {
        case .add, .subtract, .multiply, .divide, .equal:
            return .orange
        case .clear, .negative, .percent:
            return Color(.lightGray)
        default:
            return Color(red: 55/255.0, green: 55/255.0, blue: 55/255.0)
            //Color val from default iOS Calculator app.
        
        }
    }
    
    var textColor : Color
    {
        switch self
        {
        case .clear, .percent, .negative:
            return Color(.black)
        default:
            return Color(.white)
            //Return color based on button background.
        }
    }
}

let viewButtons: [[CalcButton]] =
[
    [.clear, .negative, .percent, .divide],
    [.seven, .eight, .nine, .multiply],
    [.four, .five, .six, .add],
    [.one, .two, .three, .subtract],
    [.zero, .decimal, .equal],
]
