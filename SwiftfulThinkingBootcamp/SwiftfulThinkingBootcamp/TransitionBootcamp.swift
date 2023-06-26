//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 26/06/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: UIScreen.main.bounds.height / 2)
//                    .opacity(showView ? 1.0 : 0.0)
                    .transition(
                        //.slide
                        //.move(edge: .bottom)
                        //AnyTransition.opacity.animation(.easeIn)
                        //AnyTransition.scale.animation(.easeIn)
                        .asymmetric(insertion: .move(edge: .leading),
                                    removal: .move(edge: .bottom))
                    )
                    .animation(.easeInOut)
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
