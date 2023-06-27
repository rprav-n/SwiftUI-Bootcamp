//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 27/06/23.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(.all)
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.title)
                Spacer()
            }
            // Method 1 - Sheet
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            // Method 2 - Transition
//            ZStack {
//                if showNewScreen {
//                    NewScreen2(showScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            // Method 3 - Animation Offset
            NewScreen2(showScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.easeInOut)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea(.all)
            
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
            .foregroundColor(.white)
        }
    }
}

struct NewScreen2: View {
    
    @Binding var showScreen: Bool
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea(.all)
            
            Button("Close") {
                showScreen.toggle()
            }
            .foregroundColor(.white)
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
        //NewScreen()
    }
}
