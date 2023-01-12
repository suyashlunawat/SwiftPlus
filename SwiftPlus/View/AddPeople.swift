//
//  ContentView.swift
//  SwiftPlus
//
//  Created by Giulio Ammendola on 12/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date = Date.now
    @State private var name: String = ""

    var body: some View {
        
        VStack {
                            
            //Name
            VStack(alignment: .leading) {
                Text("Name").font(.title2)
                HStack {
                    TextField("Search...", text: $name)
                    Image(systemName: "x.circle.fill")

                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Spacer()
                    
            //Calendar
            VStack(alignment: .leading) {
                
                Text("Birthday")
                    .font(.title)
                
                DatePicker("Enter your birthday", selection: $date, displayedComponents: [.date])
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .frame(maxHeight: 400)
                
            }
            
            Spacer()
            Spacer()

            

            
        }
        .padding()

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

