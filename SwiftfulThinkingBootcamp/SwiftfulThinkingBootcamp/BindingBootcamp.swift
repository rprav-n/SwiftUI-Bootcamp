//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 25/06/23.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor = Color.green
    @State var title = "Title"
    
    var body: some View {
        ZStack {
            
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(bgColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var bgColor: Color
    @Binding var title: String
    @State var buttonColor = Color.blue
    
    var body: some View {
        Button {
            bgColor = .orange
            buttonColor = .pink
            title = "Button is pressed"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
