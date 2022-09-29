//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Artur Remizov on 23.09.22.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index]).tag(filterOptions[index])
            }
        } label: {
            EmptyView()
        }
        .pickerStyle(.segmented)
//        .background(.red)
        
        
//        VStack {
//
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(selection: $selection) {
//                ForEach(18..<100) { number in
//                    Text("\(number)")
//                        .tag("\(number)")
//                        .font(.headline)
//                        .foregroundColor(.red)
//                }
//            } label: {
//                Text("Picker")
//            }
//            .pickerStyle(.wheel)
//            .background(.gray.opacity(0.3))
//        }
        
        
        
//        Form {
//            Picker(selection: $selection, content: {
//                ForEach(filterOptions, id: \.self) { option in
//                    HStack {
//                        Text(option).tag(option)
////                        Image(systemName: "heart.fill")
//                    }
//                }
//            }, label: {
//                HStack {
//                    Text("Filter:")
//                }
//                .font(.headline)
//                .padding()
//            })
//            .pickerStyle(.menu)
//        }
//        .formStyle(.columns)
//        .background(.orange)
////        .foregroundColor(.white)
////        .tint(.white)
//        .cornerRadius(10)
//        .shadow(color: Color.orange.opacity(0.3),
//                radius: 10,
//                x: 0,
//                y: 10)
      
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
