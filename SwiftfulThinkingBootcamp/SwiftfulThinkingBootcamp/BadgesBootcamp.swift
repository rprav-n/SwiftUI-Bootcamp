//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 07/07/23.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        // Badges only be displayed in list rows and tab bars
        // List
        // TabView
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Hello")
//                }
//                .badge("New")
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Hello")
//                }
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(100)
//        }
        
        List {
            Text("Hello world")
                .badge("New")
                .foregroundColor(.red)
            Text("Hello world")
                .badge(100)
            Text("Hello world")
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
