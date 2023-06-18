//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 18/06/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the swiftful thinking bootcamp. I am really enjoying this course.".lowercased())
//            .font(.title)
//            //.fontWeight(.semibold)
//            .bold()
//            //.underline()
//            .underline(true, color: .red)
//            .italic()
//            //.strikethrough()
//            .strikethrough(true, color: .green)
        
//            .font(.system(size: 50, weight: .bold, design: .rounded))
//            .baselineOffset(-50.0) // line spacing
//            .kerning(10) // character spacing
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 150, height: 100, alignment: .trailing)
            .minimumScaleFactor(0.1) // Text will try to fit inside the box
        
            
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
