//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 24/06/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.vertical, showsIndicators: true) {
//            VStack {
//                ForEach(0..<20) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//                }
//
//            }
//        }
//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack {
//                ForEach(0..<20) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 300, height: 300)
//                }
//
//            }
//        }
        
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<5) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                    
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
