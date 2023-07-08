//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 08/07/23.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        
        NavigationStack(path: $stackPath) {
            VStack(spacing: 20) {
                
                Button("Super segue!") {
                    //stackPath.append("Cocunut")
                    stackPath.append(contentsOf: [
                        "Pears", "Strawberry", "Mango"
                    ])
                }
                
                ForEach(fruits, id:\.self) { fruit in
                    NavigationLink(value: fruit) {
                        Text(fruit)
                    }
                }
                
                ForEach(0..<10) { x in
                    
                    NavigationLink(value: x) {
                        Text("Click me: \(x)")
                    }
                    
                }
                
                
            }
            .navigationTitle("Navigation Stack")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("Hello, \(value)")
            }
        }
    }
    
    //        NavigationStack {
    //            VStack(spacing: 20) {
    //
    //                ForEach(fruits, id:\.self) { fruit in
    //                    NavigationLink(value: fruit) {
    //                        Text(fruit)
    //                    }
    //                }
    //
    //                ForEach(0..<10) { x in
    //
    //                    NavigationLink(value: x) {
    //                        Text("Click me: \(x)")
    //                    }
    //
    ////                    NavigationLink {
    ////                        MySecondScreen(value: x)
    ////                    } label: {
    ////                        Text("Click me: \(x)")
    ////                    }
    //                }
    //
    //
    //            }
    //            .navigationTitle("Navigation Stack")
    //            .navigationDestination(for: Int.self) { value in
    //                MySecondScreen(value: value)
    //            }
    //            .navigationDestination(for: String.self) { value in
    //                Text("Hello, \(value)")
    //            }
    //        }
    
}

struct MySecondScreen: View {
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen: \(value)")
    }
}

struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}
