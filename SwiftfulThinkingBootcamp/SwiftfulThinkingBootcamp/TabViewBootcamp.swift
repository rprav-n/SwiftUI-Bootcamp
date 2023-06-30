//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 30/06/23.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab = 0
    
    let icons: [String] = ["heart.fill", "globe", "house.fill"]
    
    var body: some View {
        VStack {
            //            TabView(selection: $selectedTab) {
            //                ZStack {
            //                    Color.red
            //                    VStack {
            //                        Text("Home")
            //
            //                        Button("Go to About") {
            //                            selectedTab = 1
            //                        }
            //                        .padding()
            //                        .background(.white)
            //                        .cornerRadius(12)
            //
            //                    }
            //                }
            //                .tabItem {
            //                    Image(systemName: "house.fill")
            //                    Text("Home")
            //                }.tag(0)
            //
            //                Text("About")
            //                    .tabItem {
            //                        Image(systemName: "person.fill")
            //                        Text("About")
            //                    }.tag(1)
            //
            //                Text("Browse")
            //                    .tabItem {
            //                        Image(systemName: "globe")
            //                        Text("Browse")
            //                    }.tag(2)
            //            }
            //            .tint(Color.red)
            
            
            TabView {
//                RoundedRectangle(cornerRadius: 12)
//                    .fill(.red)
//                RoundedRectangle(cornerRadius: 12)
//                    .fill(.green)
//                RoundedRectangle(cornerRadius: 12)
//                    .fill(.blue)
                
                ForEach(icons, id: \.self) { icon in
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .padding(30)
                }
            }
            .background(.red)
            .padding()
            .frame(height: 300)
            .tabViewStyle(.page)

        }
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}
