//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Praveen R on 20/01/24.
//

import SwiftUI

struct StacksBootcamp: View {
    // VStack, HStack, ZStack
    var body: some View {
//        ZStack(alignment: .bottom) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150, height: 150)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//        }
        HStack {
            Text("Items in your cart:")
                .font(.body)
            Text("5")
                .font(.largeTitle)
        }
    }
}

#Preview {
    StacksBootcamp()
}
