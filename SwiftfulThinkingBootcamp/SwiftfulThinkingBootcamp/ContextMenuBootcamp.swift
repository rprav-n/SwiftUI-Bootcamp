//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 29/06/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .padding()
        .foregroundColor(.white)
        .background(.blue)
        .cornerRadius(15)
//        .contextMenu {
//            Text("Menu Item 1")
//            Text("Menu Item 2")
//        }
        .contextMenu {
            Button {
                    
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }
            
            Button {
                    
            } label: {
                Text("Report Post")
                    .foregroundColor(.red)
            }
            
            Button {
                    
            } label: {
                Label("Like Post", systemImage: "heart.fill")
            }

        } preview: {
            Image(systemName: "house.fill")
                .foregroundColor(.blue)
                .font(.title)
                .padding()
        }

    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
