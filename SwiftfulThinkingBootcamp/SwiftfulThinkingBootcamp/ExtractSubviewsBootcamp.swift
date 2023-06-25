//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 25/06/23.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            
            // background
            Color.blue
                .ignoresSafeArea(.all)
            
            // content
//            VStack {
//                myItem
//                myItem
//                myItem
//            }
            
            
            HStack {
                contentLayer
                contentLayer
            }
            
        }
    }
    
    var contentLayer: some View {
        VStack {
            MyItem(value: 34, name: "Apple", bg: .red)
            MyItem(value: 23, name: "Orange", bg: .orange)
            MyItem(value: 18, name: "Watermelon", bg: .green)
        }
    }
    
    // Extract views like the below one only when the content is static
//    var myItem: some View {
//        VStack {
//            Text("1")
//                .font(.largeTitle)
//                .underline()
//            Text("Apple")
//                .font(.title)
//        }
//        .foregroundColor(.white)
//        .padding()
//        .background(.red)
//        .cornerRadius(10)
//    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let value: Int
    let name: String
    let bg: Color
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.title)
                .underline()
            Text(name)
                .font(.headline)
        }
        .frame(width: 100)
        .foregroundColor(.white)
        .padding()
        .background(bg)
        .cornerRadius(10)
    }
}
