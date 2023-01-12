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

struct NameText: View{
    
    var text: String
    
    var body: some View{
        Text(text)
            .font(.body)
            .multilineTextAlignment(.leading)
            .foregroundColor(.black)
            .frame(maxWidth: 210, alignment: .leading)
            .bold()
    }
}

struct BirthdayText: View{
    
    var date: Date
    
    var body: some View{
        Text(date, style: .date)
            .font(.body)
            .multilineTextAlignment(.leading)
            .foregroundColor(.black)
            .frame(maxWidth: 210, alignment: .leading)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TextView()
            HeaderText(text: "hello")
            NameText(text: "jen")
            BirthdayText(date: Date())
        }
    }
}
