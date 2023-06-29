//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 29/06/23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var color: Color = .red
    
    var body: some View {
        ZStack {
            
            color
                .ignoresSafeArea(.all)
            
            ColorPicker(selection: $color, supportsOpacity: false) {
                Text("Pick a color")
                    .font(.headline)
                    .foregroundColor(.black)
            }
            .padding()
            .background(.white)
            .cornerRadius(12)
            .padding(50)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
