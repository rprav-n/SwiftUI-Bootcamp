//
//  BackgroundMaterialsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 06/07/23.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 450)
            .frame(maxWidth: .infinity)
            .background(
                //Color.black.opacity(0.5)
                //.thinMaterial
                .ultraThinMaterial
            )
            .cornerRadius(20)
        }
        .ignoresSafeArea(.all)
        .background(
            Image("joey")
        )
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
