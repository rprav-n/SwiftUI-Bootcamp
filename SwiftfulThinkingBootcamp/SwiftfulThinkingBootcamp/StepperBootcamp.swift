//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 29/06/23.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 0
    
    var body: some View {
        VStack {
            //Stepper("Stepper: \(stepperValue)", value: $stepperValue)
            
            Stepper("Stepper: \(stepperValue)") {
                // increment
                stepperValue += 30
            } onDecrement: {
                // decrement
                stepperValue -= 50
            }

            Rectangle()
                .frame(width: 100 + CGFloat(stepperValue), height: 100)
                .animation(.default)
            
        }
        .padding(30)
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
