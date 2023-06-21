//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 21/06/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack(spacing: 0) {
//            Spacer(
////                minLength: 50
//            )
//                .frame(height: 10)
//                .background(.black)
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            Spacer()
//                .frame(height: 10)
//                .background(.black)
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 200, height: 100)
//            Spacer()
//                .frame(height: 10)
//                .background(.black)
//        }
//        .frame(width: 400, height: 100)
//        .background(.green)
        
        VStack {
            HStack {
                Image(systemName: "xmark")
    //                .font(.title)
                Spacer()
                Image(systemName: "gear")
    //                .font(.title)
            }
            .padding(.horizontal)
            .padding(.bottom)
            .font(.title)
            .background(Color(UIColor.secondarySystemBackground))
            Spacer()
        }
    }
        
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
