//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 07/07/23.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits = ["Apple", "Orange", "Watermelon", "Peach"]
    
    var body: some View {
        List {
            ForEach(fruits, id:\.self) { fruit in
                Text(fruit)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button("Archive") {
                            
                        }
                        .tint(.orange)
                        Button("Save") {
                            
                        }
                        .tint(.green)
                    }
                
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }
                        .tint(.blue)
                    }
            }
            //.onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
