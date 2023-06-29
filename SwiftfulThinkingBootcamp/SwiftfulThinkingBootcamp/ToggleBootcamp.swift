//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 29/06/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var isOn = true
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(isOn ? "Online" : "Offline")
            }
            .font(.headline)
            
            Toggle(isOn: $isOn) {
                Text("Show")
            }
            .toggleStyle(
                SwitchToggleStyle(tint: .red)
            )
            Spacer()
        }
        .padding()
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
