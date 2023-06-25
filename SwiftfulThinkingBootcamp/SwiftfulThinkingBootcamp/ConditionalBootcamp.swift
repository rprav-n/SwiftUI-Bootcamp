//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 25/06/23.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle = false
    @State var showRectangle = false
    
    @State var isLoading = true
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Load: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            } else {
                Button("Circle Button: \(showCircle.description)") {
                    //showCircle = true
                    showCircle.toggle()
                }
                
                Button("Rectangle Button: \(showRectangle.description)") {
                    //showCircle = true
                    showRectangle.toggle()
                }
                
                if showCircle {
                    Circle()
                        .frame(width: 100, height: 100)
                }
                if showRectangle {
                    Rectangle()
                        .frame(width: 100, height: 100)
                }
                
                if !showCircle && !showRectangle {
                    Text("Nothing to show...")
                }
            }
            
            
            
            Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
