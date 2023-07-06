//
//  TextSelectionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 06/07/23.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Hello, World!")
            Spacer()
            Text("This text can be copied or shared!!")
                .textSelection(.enabled)
            Spacer()
        }
    }
}

struct TextSelectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBootcamp()
    }
}
