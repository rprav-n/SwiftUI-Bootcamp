//
//  AnimationUpdatedBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 08/07/23.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    
    @State private var animate1 = false
    @State private var animate2 = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("Action 1") {
                    animate1.toggle()
                }
                
                Button("Action 2") {
                    animate2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
            }
        }
        //.animation(.spring()) // This animation applied to all changes on the view
        .animation(.spring(), value: animate1) // The spring animation applied only to animate1
        .animation(.linear(duration: 5), value: animate2)
    }
}

struct AnimationUpdatedBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUpdatedBootcamp()
    }
}
