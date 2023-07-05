//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 05/07/23.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append("Joey")
        dataArray.append("Ross")
        dataArray.append("Chandler")
    }
    
}

struct EnvironmentObjectBootcamp: View {
    
    // EnvironmentObject like StateObject - This is like useContext from react where the object is available
    // across all components/files
    
    @StateObject var environmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(environmentViewModel.dataArray, id:\.self) { name in
                    NavigationLink(destination: DetailView(selectedItem: name)) {
                        Text(name)
                    }
                }
            }
            .navigationTitle("Environment Object")
        }
        // CODE
        .environmentObject(environmentViewModel)
        // CODE
    }
}

struct DetailView: View {
    let selectedItem: String
    
    //@ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea(.all)
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .padding()
                    .foregroundColor(.purple)
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(12)
            }
        }
    }
}

struct FinalView: View {
    
    //@ObservedObject var viewModel: EnvironmentViewModel
    
    // There should an environmentObject present if NOT it will throught an ERROR
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(.all)
            VStack {
                Text("Access all the friends in all views")
                
                ForEach(viewModel.dataArray, id:\.self) { name in
                    Text(name)
                }
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
