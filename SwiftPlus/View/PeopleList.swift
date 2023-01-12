//
//  PeopleList.swift
//  SwiftPlus
//
//  Created by Alessandro Airlangga Hariadi on 12/01/23.
//

import SwiftUI

struct PeopleList: View {
    var body: some View {
        Section{
            HStack{
                Image("profile-picture")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 70)
                    .clipped()
                    .padding(.trailing)
                VStack(spacing: 5){
                    NameText(text: "Jane Wilden")
                    BirthdayText(date: Date())
                }
            }.frame(width: 334.0, height: 85.0)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 2.0))
                .foregroundColor(Color.black)
        }
    }
}

struct PeopleList_Previews: PreviewProvider {
    static var previews: some View {
        PeopleList()
    }
}
