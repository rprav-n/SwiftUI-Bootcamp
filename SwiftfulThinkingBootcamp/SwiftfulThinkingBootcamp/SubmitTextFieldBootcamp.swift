//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 08/07/23.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder", text: $text)
                .submitLabel(
                    //.done
                    .go
                )
                .onSubmit {
                    print("Hello world...")
                }
        }
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}
