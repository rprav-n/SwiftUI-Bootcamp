//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Praveen R on 20/01/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is a swiftful thinking bootcamp. I'm learning a lot")
//            .font(.largeTitle)
//            .foregroundStyle(.red)
//            .fontWeight(.bold)
//            .fontDesign(.monospaced)
//            .underline()
//            .underline(true, color: .green)
//            .italic()
//            .font(.system(size: 30.0, weight: .bold, design: .serif))
            .multilineTextAlignment(.leading)
            .baselineOffset(20) // This is line height or line spacing
            .kerning(2) // Letter spacing
            .frame(width: 200, height: 250, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
