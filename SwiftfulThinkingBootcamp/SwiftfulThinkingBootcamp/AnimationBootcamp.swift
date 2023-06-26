//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 26/06/23.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(
//                    Animation.default.delay(2)
                    //Animation.default.repeatCount(2)
                    //Animation.default.repeatCount(3, autoreverses: true)
//                    Animation.default.repeatForever()
                ) {
                    isAnimated.toggle()
                }
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(.degrees( isAnimated ? 0 : 20))
                .offset(y: isAnimated ? 300 : 0)
            
                //.animation(.default.repeatForever())
                
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
