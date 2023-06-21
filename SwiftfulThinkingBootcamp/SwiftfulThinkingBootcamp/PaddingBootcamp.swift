//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 21/06/23.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .padding(.bottom, 10)
    //            .background(.yellow)
    //            //.padding()
    //            .padding(.all, 10)
    //            .padding(.leading, 30)
    //            .background(.red)
                .font(.largeTitle)
            .fontWeight(.semibold)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        //.background(.blue)
        .padding()
        .padding(.vertical, 10)
        .background(
//            .red
            Color.white
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        
        .padding(.horizontal, 10)
        //.background(.green)
        
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(.red)
//            .padding(.leading)
            
    }
}

struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
