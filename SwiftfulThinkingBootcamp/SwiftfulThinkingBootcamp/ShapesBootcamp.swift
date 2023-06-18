//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 18/06/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
        //.fill(.blue)
        //.foregroundColor(.red)
        //.stroke(.red)
        //.stroke(.red, lineWidth: 30)
            //.stroke(.red, style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .bevel, dash: [30]))
            //.trim(from: 0.2, to: 1)
            //.stroke(.red, lineWidth: 10)
//        Ellipse()
//            .frame(width: 200, height: 100)
//            .foregroundColor(.red)
//        Capsule(style: .circular
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 200, height: 100)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
