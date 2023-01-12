//
//  mainScreenView.swift
//  SwiftPlus
//
//  Created by leila najar on 12/01/23.
//

import SwiftUI



struct mainScreenView: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                ZStack {

                    Color.init(uiColor: .systemGray6).edgesIgnoringSafeArea(.all)
                    

                    VStack {
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(.white))
                                .frame(height: 250)
                                .cornerRadius(30)
                                .padding(.horizontal)
                                .contrast(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)
                                .shadow(radius: 10)
                               
                            
                            VStack{
                                
                                HStack{
                                    Spacer()
                                    Image("icon")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                    Spacer()
                                }
                                
                                
                                Text ("It’s Helen 27th birthday! ")
                                    .fontWeight(.semibold)
                                    .padding([.leading, .bottom], 20.0)
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(Color(.gray))
                                        .frame(width: 130, height: 50)
                                        .cornerRadius(20)
                                        .padding(.horizontal)
                                    Text ("Acknowledge!")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.center)
                                        .padding(.all, 10)
                                        
                                        
                                }
                            }
                            
                        }
                    }
                    .navigationTitle("Today")
                 

                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}


           


struct mainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        mainScreenView()
    }
}
