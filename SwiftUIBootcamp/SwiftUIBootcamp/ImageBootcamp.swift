//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Praveen R on 20/01/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("joey")
            .resizable()
            //.scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 300)
            //.clipped()
            //.cornerRadius(150)
            //.clipShape(Circle())
            .clipShape(
                RoundedRectangle(cornerRadius: 20)
            )
    }
}

#Preview {
    ImageBootcamp()
}
