//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 27/06/23.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.green)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            }
            //NOTE: sheet can be added ONLY once Per View.
            //            .sheet(isPresented: $showSheet) {
            //                // DO NOT add any conditional LOGICS
            //                    SecondScreen()
            //            }
            //NOTE: You can either use .screen or .fullScreenCover ONLY once Per View
            .fullScreenCover(isPresented: $showSheet) {
                // DO NOT add any conditional LOGICS
                
                SecondScreen()
            }
            
        }
    }
}

struct SecondScreen: View {
    
    // Memorize
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea(.all)
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                    .padding(.all, 8)
                    .background(.white)
                    .cornerRadius(10)
                    .padding(.all, 8)
            }
            
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
        //        SecondScreen()
    }
}
