//
//  BirthdayCardView.swift
//  SwiftPlus
//
//  Created by Suyash Lunawat on 12/01/23.
//

import SwiftUI

struct BirthdayCardView: View {
    var person: Person

    
    var body: some View {
        
     
        
        
        
        HStack{
            Image(person.photo)
                .resizable()
            VStack{
                Text(person.name)
                Text(person.birthDate,style: .date)
            }
            Text("\(person.daysRemaining) days left")
        }
        .frame(width: 334, height: 70)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(Color.black, lineWidth: 2)
        )
        
        //        }
    }
}

struct BirthdayCardView_Previews: PreviewProvider {
    static var previews: some View {
        BirthdayCardView(person: Person(photo: "cube", name: "Alessandro", birthDate: Date(), daysRemaining: 20))
    }
}
