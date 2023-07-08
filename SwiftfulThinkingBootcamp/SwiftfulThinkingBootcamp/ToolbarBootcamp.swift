//
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 08/07/23.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State var text = ""
    @State var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
//                Color.indigo
//                    .ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder", text: $text)
                    
                    ForEach(0..<20) { _ in
                        RoundedRectangle(cornerRadius: 12)
                            .fill(.blue)
                            .frame(width: 200, height: 100)
                    }
                }
            }
            .navigationTitle("Toolbar Bootcamp")
//            .navigationBarItems(leading: Image(systemName: "heart.fill"), trailing: Image(systemName: "gear"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "house.fill")
                        Image(systemName: "person.fill")
                    }
                }
                ToolbarItem(placement:
                        //.bottomBar
                    //.keyboard
                    .principal
                ) {
                    Image(systemName: "gear")
                }
            }
            //.toolbar(.hidden, for: .navigationBar)
            //.toolbarBackground(.hidden, for: .navigationBar)
            //.toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen: \(value)")
            }
        }
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}
