//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Praveen R on 20/01/24.
//

import SwiftUI

struct ColorsBootcamp: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20.0)
            .frame(width: 300, height: 200)
            //.foregroundColor(.blue)
            //.foregroundColor(Color.purple)
            //.foregroundColor(Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)))
            //.foregroundColor(Color(UIColor.secondarySystemBackground))
            .foregroundColor(Color("CustomColor"))
            .shadow(color: .black.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
    }
}

#Preview {
    ColorsBootcamp()
}
