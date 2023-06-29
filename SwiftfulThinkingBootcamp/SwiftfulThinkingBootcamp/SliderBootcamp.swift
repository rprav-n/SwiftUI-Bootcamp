//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 29/06/23.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    
    @State var color: Color = .white
    
    let colors: [Color] = [.green, .purple, .yellow, .orange]
    
    var body: some View {
        ZStack {
            
            color
                .ignoresSafeArea(.all)
            
            VStack {
                
                Text("Rating: ")
                    .font(.title)
                Text(String(format: "%.f", sliderValue))
                
    //            Slider(value: $sliderValue) {
    //                Text("Slider")
    //            }
    //            .tint(Color.red)
                
    //            Slider(value: $sliderValue, in: 0...100)
    //            Slider(value: $sliderValue, in: 1...5, step: 1.0) {
    //                Text("Slider")
    //            }
                
                Slider(value: $sliderValue, in: 1...5, step: 1.0) {
                    Text("Slider")
                } minimumValueLabel: {
                    Text("Min")
                } maximumValueLabel: {
                    Text("Max")
                } onEditingChanged: { _ in
                    color = colors.randomElement()!
                }

            }
        .padding(30)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
