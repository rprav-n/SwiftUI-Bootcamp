//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 27/06/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello world") {
                    OtherScreen()
                }
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(
                //.inline
                //.large
                .automatic
            )
            //.navigationBarHidden(true)
            
            .navigationBarItems(leading: Image(systemName: "person.fill"),
                                trailing: NavigationLink(destination: {
                Text("Settings")
            }, label: {
                Image(systemName: "gear")
                    .accentColor(.red)
            }))

        }
    }
}

struct OtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(.all)
            
            VStack(spacing: 50) {
                NavigationLink("Next Screen") {
                    Text("The End screen...")
                }
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
                
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
