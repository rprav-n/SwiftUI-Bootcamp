//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 22/06/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Chandler", "Joey", "Ross"]
    
    var body: some View {
        VStack {
            ForEach(1...5, id: \.self) { index in
//                Text("Hello world \(index)")
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    Text("Index is: \(index)")
                }
            }
            
            ForEach(data.indices, id: \.self) { index in
                Text("Name is: \(data[index])")
            }
            
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
