//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 30/06/23.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This text color is PRIMARY")
                        .foregroundColor(.primary)
                    
                    Text("This text color is SECONDARY")
                        .foregroundColor(.secondary)
                    
                    Text("This text color is BLACK")
                        .foregroundColor(.black)
                    
                    Text("This text color is WHITE")
                        .foregroundColor(.white)
                    
                    Text("This text color is RED")
                        .foregroundColor(.red)
                    
                    Text("This text color is Globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("This text color is Locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .blue )
                        
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootcamp()
                //.preferredColorScheme(.light)
//            DarkModeBootcamp()
//                .preferredColorScheme(.dark)
        }
        
    }
}
