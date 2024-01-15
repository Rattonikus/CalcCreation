//
//  ContentView.swift
//  CalcCreation
//
//  Created by Cameron Elkins on 1/14/24.
//

import SwiftUI

struct CalculatorView: View 
{
    var body: some View
    {
        ZStack
        {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack
            {
                displayText
                buttonPad
                //Cleaned up using extentions. 
            }
        .padding()
        }
    }
}



#Preview 
{
    CalculatorView()
}

// MARK: COMPONENTS

extension CalculatorView
{
    private var displayText: some View
    {
        Text(displayValue)
            .padding()
            .frame(maxWidth: .infinity, alignment: .trailing)
            .foregroundColor(.white)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
        //This stops it from going above, just like in iOS
            .minimumScaleFactor(0.2)
        //This shrinks the text when it becomes too large for the display.
    }
    
    private var buttonPad: some View
    {
        ForEach(viewButtons, id: \.self)
        {
            row in
            //This will iterate over the buttons, and assign them to row i think.
            HStack
            {
                ForEach(row, id: \.self)
                {
                    item in
                    
                    Button(action: {buttonPressed(button: item)}, label: {Text(item.rawValue)})
                    
                }
            }
        }
    }
    
    
}
