//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 18/06/23.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                //.red
                //Color.primary
                //Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
        
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: .red.opacity(0.5), radius: 10, x: 10, y: 20)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
