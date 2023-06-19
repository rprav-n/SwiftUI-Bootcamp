//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 19/06/23.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
//            .background(Color.green)
//            //.frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(.red)
            .background(.red)
        
            .frame(height: 100, alignment: .top)
            .background(.green)
        
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.blue)
        
            .frame(height: 300)
            .background(.orange)
        
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .background(.yellow)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
