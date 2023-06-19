//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 19/06/23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
//        Image(systemName: "heart.fill")
//            .resizable()
//            .foregroundColor(.red)
//            //.font(.largeTitle)
//            //.font(.system(size: 100))
//            //.aspectRatio(contentMode: .fit)
//            .scaledToFill()
//            .frame(width: 300, height: 300)
//            .clipped()
        
        ZStack {
            Color(uiColor: UIColor.red)
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
        }
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
