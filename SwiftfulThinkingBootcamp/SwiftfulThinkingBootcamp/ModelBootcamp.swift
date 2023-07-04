//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 04/07/23.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
//    let users = [
//        "Nick",
//        "Jack",
//        "Sam",
//        "Drake"
//    ]
    
    let users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick_22", followerCount: 10, isVerified: true),
        UserModel(displayName: "Jack", userName: "jackie", followerCount: 6, isVerified: false),
        UserModel(displayName: "Sam", userName: "samie", followerCount: 12, isVerified: true),
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                // If we add id: \.self - It should be "Hashable"
                // Else - It should be "Identifiable" and need a unique id
                ForEach(users) { user in
                    HStack(spacing: 20) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            HStack {
                                Text(user.displayName)
                                    .font(.headline)
                                if user.isVerified {
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundColor(.blue)
                                }
                            }
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                            //Text("Age: \(user.followerCount)")
                        }
                        Spacer()
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 2)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Model Bootcamp")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
