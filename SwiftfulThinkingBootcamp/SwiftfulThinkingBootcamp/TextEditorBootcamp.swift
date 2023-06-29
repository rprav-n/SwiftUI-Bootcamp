//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 29/06/23.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var text = "Enter your comment"
    @State var savedText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $text)
                    .frame(height: 200)
                    .cornerRadius(12)
                Button {
                    savedText = text
                } label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(12)
                }
                Text(savedText)
                Spacer()
            
                .navigationTitle("TextEditor Bootcamp")
            }
            .padding()
            .background(.green)
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
