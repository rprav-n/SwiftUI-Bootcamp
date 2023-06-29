//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 29/06/23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2022)) ?? Date()
    let endingDate: Date = Date()

    // Computing property
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        
        return formatter
    }
    
    var body: some View {
        VStack {
//            DatePicker(selection: $date) {
//                Text("Pick Date")
//            }
            
            Text("Selected Date is: ".capitalized)
//            Text(date.description)
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Date", selection: $selectedDate)
                .datePickerStyle(
                    .compact // default
                    //.graphical
                    //.wheel
                )
            
            DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.hourAndMinute])
            
            DatePicker("Date 2", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
        }
        .padding()
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
