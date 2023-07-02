//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 02/07/23.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    let data = ["Apple", "Orange", "Banana"]
    
    @State var showAlert = false
    
    // MARK: BODY
    
    // Working copy - things to do. 1) Fix title
    // Opt + Cmd + left arrow -> To fold the block of codes
    // Opt + Cmd + right arrow -> To Unfold the block of codes
    /*
     TODOS:
     1. Foo
     2. Bar
    */
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.red
                    .ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(leading:
                                        Button("Alert", action: {
                                        showAlert.toggle()
                                    })
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
            }
            }
        }
    }
    
    /// This is the foreground layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            
            ForEach(data, id:\.self) { name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    
    // MARK: FUNCTIONS
    /// Gets an alert with a specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    ///```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}


// MARK: PREVIEWS
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
