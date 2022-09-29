//
//  DataPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 23.09.22.
//

import SwiftUI

struct DataPickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected date is:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
//            DatePicker("Select a Date", selection: $selectedDate)
//            DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .foregroundColor(.red)
                .datePickerStyle(.compact)
        }
    }
}

struct DataPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DataPickerBootcamp()
    }
}
