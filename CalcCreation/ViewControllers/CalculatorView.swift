//
//  ContentView.swift
//  CalcCreation
//
//  Created by Cameron Elkins on 1/14/24.
//

import SwiftUI

struct CalculatorView: View 
{
    
    let buttons: [[CalcButton]] =
    [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .add],
        [.one, .two, .three, .subtract],
        [.zero, .decimal, .equal],
    ]
    
    @State var deleteMe = false
    
    var body: some View
    {
        ZStack
        {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack
            {
                ForEach(buttons, id: \.self)
                {
                    row in
                    //This will iterate over the buttons, and assign them to row i think.
                    HStack
                    {
                        ForEach(row, id: \.self)
                        {
                            item in
                            
                            Button(action: {placeholderButton()}, label: {Text("0")})
                            
                        }
                    }
                    
                }
            }
        .padding()
        }
    }
    func placeholderButton() -> Void
    {
        if deleteMe == true
        {
            deleteMe = false
        }
        else
        {
            deleteMe = true
        }
    }
}



#Preview 
{
    CalculatorView()
}
