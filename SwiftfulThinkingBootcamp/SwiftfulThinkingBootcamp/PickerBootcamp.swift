//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 29/06/23.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "20"
    
    let options = ["Most liked", "Most diskliked", "Most viewed"]
    
    init() {
        // This will update in all places in our app
        
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        VStack {
            
//            Picker(selection: $selection) {
//                Text("1").tag("1")
//                Text("2").tag("2")
//                Text("3").tag("3")
//            } label: {
//                Text("Picker")
//            }
//            .pickerStyle(
//                //.segmented
//                .wheel
//            )
            
            
//            Menu("Select your age") {
//                Picker(selection: $selection) {
//                    ForEach(18..<30) {number in
//                        Text("\(number)").tag("\(number)")
//                            .foregroundColor(.red)
//                    }
//                } label: {
//                    Text("Select Age")
//                }
//                .pickerStyle(
//                    //.wheel
//                    .menu
//                )
//            }
//            Text("Age picked: \(selection)")
            
                Picker(selection: $selection) {
                    ForEach(options, id: \.self) { option in
                        Text(option).tag(option)
                    }
                } label: {
                    
                }
                .pickerStyle(.segmented)
            
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
