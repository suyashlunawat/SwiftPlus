//
//  TextView.swift
//  SwiftPlus
//
//  Created by Alessandro Airlangga Hariadi on 12/01/23.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct HeaderText: View{
    
    var text: String
    
    var body: some View{
        Text(text)
            .font(.title)
            .bold()
            .foregroundColor(.black)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TextView()
            HeaderText(text: "hello")
        }
    }
}
