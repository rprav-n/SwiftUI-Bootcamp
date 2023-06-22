//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 22/06/23.
//

import SwiftUI

struct InitAndEnumBootcamp: View {
    
    //let backgroundColor: Color = Color.green
    let backgroundColor: Color
    //let count: Int = 15
    
    let count: Int
    let title: String
    
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
            Text(title)
                .font(.headline)
        }
        .foregroundColor(.white)
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitAndEnumBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitAndEnumBootcamp(count: 75, fruit: .orange)
            InitAndEnumBootcamp(count: 15, fruit: .apple)
        }
    }
}
