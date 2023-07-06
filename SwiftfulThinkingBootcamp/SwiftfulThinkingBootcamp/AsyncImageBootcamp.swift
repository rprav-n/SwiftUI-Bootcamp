//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 06/07/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://cdn.cloudflare.steamstatic.com/steam/apps/1942280/ss_d4b4c0b552e655169719e35c964765bd27d05900.jpg")
    
    var body: some View {
        VStack {
            Text("Async Image")
            
//            AsyncImage(url: url)
            
//            AsyncImage(url: url) { image in
//                image
//                    .resizable()
//                    .frame(width: 400, height: 200)
//                    .scaledToFit()
//            } placeholder: {
//                ProgressView()
//            }

            
            AsyncImage(url: url) { imagePhase in
                switch imagePhase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .frame(width: 400, height: 200)
                case .failure(_):
                    Text("Error")
                default:
                    Text("Unknown")
                }
            }
            
        }
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
