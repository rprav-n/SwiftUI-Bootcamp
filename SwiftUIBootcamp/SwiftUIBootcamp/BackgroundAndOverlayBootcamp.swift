//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Praveen R on 20/01/24.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(
//                Circle()
//                    .fill(.red)
//                    .frame(width: 200, height: 200, alignment: .center)
//            )
//            .background(
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(.green)
//                    .frame(width: 200, height: 200, alignment: .center)
//            )
        
//        Circle()
//            .fill(.red)
//            .frame(width: 100, height: 100)
//            .overlay {
//                Text("1")
//                    .font(.title)
//                    .foregroundStyle(.white)
//            }
        
        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(.blue)
                    .frame(width: 75, height: 75)
                    .shadow(color: .black.opacity(0.5), radius: 4, x: 0.0, y: 0.0)
                    .overlay(alignment: .topTrailing) {
                        Text("6")
                            .foregroundStyle(.white)
                            .background(
                                Circle()
                                    .fill(.pink)
                                    .frame(width: 30, height: 30)
                            )
                    }
            )
            
        
            
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
