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
                Text(displayValue)
                    .foregroundColor(.white)
                //Hope to remove this with the buttonstyles swift file. 
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
        .padding()
        }
    }
}



#Preview 
{
    CalculatorView()
}
