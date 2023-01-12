//
//  TestButton.swift
//  SwiftPlus
//
//  Created by Giulio on 12/01/23.
//

import SwiftUI


struct Person {
    let id = UUID()
    let name: String
}



struct ContentView: View {
    
    @State private var people: [Person] = [Person(name: "John Doe"),
                                           Person(name: "Jane Smith"),
                                           Person(name: "Bob Johnson")
    ]   
    
    @State private var isSheetShowing = false

    var body: some View {
        
        NavigationStack {
            
            List {
                ForEach(people, id: \.id) { person in
                    Text(person.name)
                }
            }
            .navigationBarTitle("People")
            
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button(action: {
//                        isSheetShowing.toggle()
//                    }) {
//                        Image(systemName: "plus")
//                    }
//                    .sheet(isPresented: $isSheetShowing) {
//                        AddPeople().environmentObject(self.people)
//                    }
//                }
//            }
            
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isSheetShowing.toggle()
                    }) {
                        Image(systemName: "plus")
                    }
                    .sheet(isPresented: $isSheetShowing) {
                        AddPeople()
                    }
                }
            }
            
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
