//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Praveen R on 20/01/24.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(.red)
//            //.frame(width: 300, height: 100, alignment: .topLeading)
//            //.background(.green)
//            .frame(maxWidth: .infinity, alignment: .leading)
        Text("Hello world")
            .background(.red)
            .frame(height: 100, alignment: .top)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.yellow)
            
    }
}

#Preview {
    FrameBootcamp()
}
