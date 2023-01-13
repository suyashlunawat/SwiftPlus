//
//  ContentView.swift
//  SwiftPlus
//
//  Created by Suyash Lunawat on 12/01/23.
//

import SwiftUI

struct PeopleView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            VStack {
                HStack{
                    HeaderText(text: "People")
                    Spacer()
                    Button(action: {}){
                        Image(systemName: "plus.circle")
                            .font(.system(size: 35))
                            .foregroundColor(Color("ButtonColor"))
                    }
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
                Spacer()
                List{
                    ForEach(0..<9){ list in
                        ZStack {
                            Section {
                                PeopleList()
                            }
                        }.listRowBackground(Color("BackgroundColor"))
                            .listRowSeparator(.hidden)
                    }
                }.listStyle(.plain)
                .scrollContentBackground(.hidden)
            }
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
