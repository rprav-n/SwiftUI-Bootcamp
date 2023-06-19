//
//  GradienBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 19/06/23.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //.red
//                LinearGradient(colors: [.red, .blue, .green],
//                               startPoint: .topLeading,
//                               endPoint: .bottomTrailing)
                
//                RadialGradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))],
//                               center: .leading,
//                               startRadius: 5,
//                               endRadius: 200)
                
                AngularGradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))],
                                center: .topLeading,
                                angle: .degrees(180))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradienBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
