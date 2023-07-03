//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 03/07/23.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var displayText: String?
    @State var isLoading = false
    
    @State var currentUserID: String? = "test_user"
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // DO NOT FORCE UNWRAP
                // DO NOT FORCE UNWRAP
//                Text(displayText!)
//                    .font(.title)
                // DO NOT FORCE UNWRAP
                // DO NOT FORCE UNWRAP
                
                Text(displayText ?? "NO TEXT") // Optional binding
                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                
                //loadData()
                loadDataV2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "Hello world: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error: There is no user ID"
        }
    }
    
    func loadDataV2() {
        guard let userID = currentUserID else {
            displayText = "Error: There is no user ID"
            return // Guard statement must have a 'return'
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "Hello world: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
