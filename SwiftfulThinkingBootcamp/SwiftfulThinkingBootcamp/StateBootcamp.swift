//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 25/06/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    // @State is called "property wrapper"
    @State var backgroundColor: Color = .red
    @State var count = 0
    @State var title = ""
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            // content
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .green
                        count += 1
                        title = "Button 1 was pressed"
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .blue
                        count += 1
                        title = "Button 2 was pressed"
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
