//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 05/07/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    // @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "NO NAME")
            
            Button("Save") {
                let name = "Joey Tribbiani"
                currentUserName = name
                //UserDefaults.standard.set(name, forKey: "name")
            }
        }
        .onAppear {
            //currentUserName = UserDefaults.standard.string(forKey: "name")
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
