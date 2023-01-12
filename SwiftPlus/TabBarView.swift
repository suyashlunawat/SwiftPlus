//
//  TabBarView.swift
//  SwiftPlus
//
//  Created by leila najar on 12/01/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        
        TabView{
            
            mainScreenView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            contactView()
                .tabItem{
                    Image(systemName: "person.crop.circle")
                }
        }
        .accentColor(.black)
    }
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
