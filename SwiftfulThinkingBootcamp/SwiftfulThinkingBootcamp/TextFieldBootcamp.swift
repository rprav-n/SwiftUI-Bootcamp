//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 29/06/23.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var text = ""
    @State var todos: [String] = ["Hello"]
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $text)
                    //.textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                
                Button {
                    if checkIfTextIsValid() {
                        Add()
                    }
                    
                } label: {
                    Text("Add")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .font(.headline)
                        .background(checkIfTextIsValid() ? .blue : .gray)
                        .cornerRadius(12)
                }
                .disabled(!checkIfTextIsValid())

                Spacer()
                
                List {
                    ForEach(todos, id: \.self) { todo in
                        Text(todo)
                    }
                }
                .listStyle(.plain)
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func checkIfTextIsValid() -> Bool {
        return text.count > 3
    }
    
    func Add() {
        todos.append(text)
        text = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
