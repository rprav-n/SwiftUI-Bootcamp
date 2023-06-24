//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 24/06/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        ZStack {
//            // background
//            Color(.blue)
//                .edgesIgnoringSafeArea(.all)
//
//            // foreground
//            VStack {
//                Text("Hello, World!")
//                    .foregroundColor(.white)
////                    .padding(.top, 50)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
////            .background(.red)
//        }
//        .edgesIgnoringSafeArea(.all)
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .shadow(radius: 10)
                        .frame(height: 150)
                        .padding(20)
                }
            }
            .background(.blue)
        }
        .background(
            Color.red
//                .edgesIgnoringSafeArea(.all) // OLD
                .ignoresSafeArea(.all)
            
        )
        // .edgesIgnoringSafeArea(.all) // DONOT use it here
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
