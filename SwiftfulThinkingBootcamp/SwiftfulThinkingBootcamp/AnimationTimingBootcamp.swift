//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 26/06/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating = false
    let timing = 2.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            Spacer()
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,height: 100)
//                .animation(Animation.easeIn(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,height: 100)
//                .animation(Animation.easeOut(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,height: 100)
//                .animation(Animation.linear(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50,height: 100)
                .animation(.spring(response: 1.0,
                                   dampingFraction: 0.5,
                                   blendDuration: 1.0))
            Spacer()
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}

