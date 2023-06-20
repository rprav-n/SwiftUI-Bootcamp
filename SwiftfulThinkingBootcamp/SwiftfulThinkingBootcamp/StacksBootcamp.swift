//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 20/06/23.
//

import SwiftUI

struct StacksBootcamp: View {
    // Stacks
    // VStack - Vertical
    // HStack - Horizontal
    // ZStack - ZIndex (back to front)
    var body: some View {
        //        VStack {
        //            Rectangle()
        //                .fill(.red)
        //                .frame(width: 100, height: 100)
        //
        //            Rectangle()
        //                .fill(.green)
        //                .frame(width: 100, height: 100)
        //
        //            Rectangle()
        //                .fill(.blue)
        //                .frame(width: 100, height: 100)
        //        }
        
        //        ZStack(alignment: .topLeading) {
        //            Rectangle()
        //                .fill(.red)
        //                .frame(width: 200, height: 200)
        //
        //            Rectangle()
        //                .fill(.green)
        //                .frame(width: 150, height: 150)
        //
        //            Rectangle()
        //                .fill(.blue)
        //                .frame(width: 100, height: 100)
        //        }
//        ZStack(alignment: .leading) {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack(alignment: .leading) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150, alignment: .center)
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100, alignment: .center)
//
//                HStack(alignment: .top, spacing: 0) {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50, alignment: .center)
//
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(.white)
//            }
//            .background(.black)
//        }
        
//        VStack(alignment: .center, spacing: 10) {
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//
//            Text("Items in your cart:")
//                .font(.title)
//                .foregroundColor(.gray)
//        }
        
        
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
        
        
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
