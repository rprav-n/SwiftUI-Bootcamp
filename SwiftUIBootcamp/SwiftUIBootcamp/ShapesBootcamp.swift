//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Praveen R on 20/01/24.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 25.0)
//            .fill(.blue)
//            .foregroundColor(.red)
//            .stroke(.green, lineWidth: 20)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10.0]))
//            .trim(from: 0.2, to: 1)
//            .stroke(.purple, lineWidth: 30)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapesBootcamp()
}
