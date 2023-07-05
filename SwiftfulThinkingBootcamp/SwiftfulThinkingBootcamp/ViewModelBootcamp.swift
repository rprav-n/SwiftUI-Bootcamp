//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 05/07/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    // @Published is same as @State but for classes
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(FruitModel(name: "Orange", count: 3))
            self.fruitArray.append(FruitModel(name: "Banana", count: 8))
            self.fruitArray.append(FruitModel(name: "Watermelon", count: 2))
            self.isLoading = false
        }
    }
    
    func deleteFruit(_ indexSet: IndexSet) {
        fruitArray.remove(atOffsets: indexSet)
    }
    
}

struct ViewModelBootcamp: View {
    
//    @State var fruitArray: [FruitModel] = []
    
    /*
     @ObservedObject does not persist data when view gets rendered
     but @StateObject do PERSIST data
     */
    //@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    
    /*
        @StateObject -> USE THIS ON CREATION / INIT
        @ObservedObject -> USE THIS FOR SUBVIEWS
     */
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .navigationBarItems(trailing:
                                    NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel),
                                                         label: {
                Image(systemName: "arrow.right")
            }))
            .navigationTitle("Fruit List")
//            .onAppear {
//                fruitViewModel.getFruits()
//            }
        }
    }

}

struct RandomScreen: View {
    
    @Environment(\.presentationMode)  var presentationMode
    
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(.all)
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                }
            }

        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
