//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 19/06/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
//        Image("joey")
//            .resizable()
//            .scaledToFit()
//            //.frame(width: 300, height: 200)
//            .frame(width: 300, height: 300)
////            .cornerRadius(150)
//            .clipShape(
//                //Circle()
//                RoundedRectangle(cornerRadius: 20)
//                //Ellipse()
//            )
        
        Image("google")
            //.renderingMode(.template) // You can configure in assets 
            .resizable()
            .frame(width: 300, height: 300)
            .foregroundColor(.red)
        
        
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
