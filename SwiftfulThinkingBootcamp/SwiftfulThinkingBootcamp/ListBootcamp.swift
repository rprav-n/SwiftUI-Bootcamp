//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 28/06/23.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits = ["Apple", "Orange", "Watermelon", "Peach"]
    
    @State var veggies = ["Tomato", "Carrot", "Potato"]
    
    var body: some View {
        NavigationView {
            List {
                //            ForEach(fruits.indices) { index in
                //                Text(fruits[index])
                //            }
                
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .padding()
                    }
                    //                .onDelete { indexSet in
                    //                    delete(indexSet)
                    //                }
                    //                .onDelete(perform: delete(_:))
                    .onDelete(perform: delete)
                    .onMove(perform: move(indexSet:index:))
                    .listRowBackground(Color.blue)
                } header: {
                    Text("Fruits")
                        //.font(.title)
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie)
                    }
                } header: {
                    Text("Veggies")
                }

            }
            .accentColor(.red)
            .listStyle(.sidebar)
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        add()
                    }
                }
            }
        }
        //.accentColor(.red)
    }
    
    func delete(_ indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, index: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: index)
    }
    
    func add() {
        fruits.append("Starwberry 🍓")
    }
    
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
