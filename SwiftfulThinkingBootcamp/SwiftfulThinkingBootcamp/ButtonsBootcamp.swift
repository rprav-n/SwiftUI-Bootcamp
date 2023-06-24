//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 24/06/23.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(title)
            
            Button("Press me") {
                self.title = "Button pressed"
            }
            .accentColor(.red)
            
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
        
            Button {
                self.title = "Button THREE was pressed"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 74)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.pink)
                    }
            }
            
            Button {
                self.title = "Finish"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.blue)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.blue, lineWidth: 2)
                            
                    )
            }

            
        }

    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
