//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 08/07/23.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, World!")
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundColor(.green)
            .font(.largeTitle)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
