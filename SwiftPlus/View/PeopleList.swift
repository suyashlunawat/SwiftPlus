//
//  PeopleList.swift
//  SwiftPlus
//
//  Created by Alessandro Airlangga Hariadi on 12/01/23.
//

import SwiftUI

struct PeopleList: View {
    var body: some View {
            VStack {
                    HStack{
                        Image("profile-picture")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 65, height: 70)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding(.trailing, 15)
                        VStack(spacing: 5){
                            NameText(text: "Jane Wilden")
                            BirthdayText(date: Date())
                        }
                    }
                        .frame(width: 334.0, height: 85.0)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 2.0))
                        .foregroundColor(Color.black)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    }
        }
    }


struct PeopleList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.yellow).edgesIgnoringSafeArea(.all)
            VStack{
                PeopleList()
            }
        }
    }
}
