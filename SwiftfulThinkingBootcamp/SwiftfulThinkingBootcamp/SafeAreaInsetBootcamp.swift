//
//  SafeAreaInsetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 08/07/23.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<10) { _ in
                    Rectangle()
                        .frame(height: 300)
                }
            }
            .navigationTitle("Safe Area Insets")
            //            .overlay(alignment: .bottom) {
            //                Text("Hi")
            //                    .frame(maxWidth: .infinity)
            //                    .background(.red)
            //            }
            .safeAreaInset(edge: .bottom, alignment: .leading) {
                Text("Hi")
                    //.frame(maxWidth: .infinity)
                    .padding()
                    .background(.red)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

struct SafeAreaInsetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetBootcamp()
    }
}
