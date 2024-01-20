//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Praveen R on 20/01/24.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                //RadialGradient(colors: [.red, .green], center: .center, startRadius: 1, endRadius: 50)
                AngularGradient(colors: [.red, .blue], center: .topLeading, angle: .degrees(45))
            )
            .frame(width: 300, height: 200)
            
    }
}

#Preview {
    GradientsBootcamp()
}
