//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 08/07/23.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @State private var username = ""
    //@FocusState private var usernameInFocus: Bool
    
    @State private var password = ""
    //@FocusState private var passwordInFocus: Bool
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack {
            Spacer()
            TextField("Add your name here", text: $username)
                //.focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(12)
            
            SecureField("Add your password here", text: $password)
                //.focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(12)
            Spacer()
            Button("Sign UP") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
//                    usernameInFocus = false
//                    passwordInFocus = true
                    fieldInFocus = .username
                } else {
//                    usernameInFocus = true
//                    passwordInFocus = false
                    
                    fieldInFocus = .password
                }
            }
            Spacer()
            
            Button("Toggle focus state") {
                //usernameInFocus.toggle()
                fieldInFocus = .username
            }
            Spacer()
        }
        .padding(40)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                //self.usernameInFocus = true
                self.fieldInFocus = .username
            }
        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
