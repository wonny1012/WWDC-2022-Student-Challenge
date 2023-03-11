//
//  File.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/24.
//

import SwiftUI
import UIKit


struct MainView: View {
    
  
    @State var NaviLinkActive0 = false
        var body: some View {
            NavigationView{
                ZStack{
                    Image("Main")
                        .resizable()
                        .frame(width: 1450, height:1150)
                   
                        VStack{
                Text("")
                        .frame(width:100,height: 450)
                        Text("'Please play it in landscape mode'")
                                .font(.system(size:30,weight:.medium))
                            NavigationLink(destination: ContentView(NaviLinkActive0: $NaviLinkActive0), isActive : $NaviLinkActive0){
                Text("Let's start!")
                    .fontWeight(.semibold)
                    .font(.system(size:70,weight:.medium))
                    .foregroundColor(.blue)
                        }
                
            }
                }
            .foregroundColor(.white)
            
            }
            .onAppear {
            }
            
            .navigationViewStyle(StackNavigationViewStyle())
}
    
    
}

