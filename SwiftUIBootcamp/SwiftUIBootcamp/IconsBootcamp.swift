//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Praveen R on 20/01/24.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
//        Image(systemName: "heart.fill")
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            //.font(.largeTitle)
            .resizable()
            //.scaledToFill()
            //.scaledToFit()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 200, alignment: .center)
//            .foregroundColor(.pink)
//            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
