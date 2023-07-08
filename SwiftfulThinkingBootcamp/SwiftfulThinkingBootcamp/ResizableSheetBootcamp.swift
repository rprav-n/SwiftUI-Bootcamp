//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 08/07/23.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet = false
    @State private var detent: PresentationDetent = .large
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detent: $detent)
//                .presentationDetents([
//                    .large,
//                    .medium
//                ])
                //.presentationDetents([.fraction(0.25), .medium])
                //.presentationDetents([.height(150)])
                .presentationDetents([.medium, .large], selection: $detent)
                //.presentationDragIndicator(.hidden)
                //.interactiveDismissDisabled()
        }
    }
}

struct MyNextView: View {
    
    @Binding var detent: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            VStack {
                Text("Hello world")
                
                Button("Large") {
                    detent = .large // the large should be present in the detents
                    //detent = .fraction(0.2) // This does NOT work because this detent not added in the array
                }
                Button("Medium") {
                    detent = .medium
                }
            }
            
        }
    }
}

struct ResizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootcamp()
    }
}
