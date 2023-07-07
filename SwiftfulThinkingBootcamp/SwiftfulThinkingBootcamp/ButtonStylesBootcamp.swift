//
//  ButtonStylesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 07/07/23.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            
            Button("Button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("Button title") {}
            .buttonStyle(.bordered)
            .controlSize(
                //.large
                .mini
                //.small
                //.regular
            )
            
            Button("Hello this is a button") {}
            .buttonStyle(.borderedProminent)
            
            Button("Button title") {}
            .buttonStyle(.borderless)
            
            Button {
                
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(
                .capsule
                //.roundedRectangle
            )

            
        }
        .padding()
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}
