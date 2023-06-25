//
//  TernaryOperatorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 25/06/23.
//

import SwiftUI

struct TernaryOperatorBootcamp: View {
    
    @State var isStartingState = true
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State" : "Ending State")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(width: isStartingState ? 200 : 50,
                       height: isStartingState ? 400 : 50)
            
            Spacer()
        }
    }
}

struct TernaryOperatorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorBootcamp()
    }
}
