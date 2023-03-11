//
//  File.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/23.
//

import SwiftUI
import AVKit


struct String: View {
    @Binding var NaviLinkActive15: Bool
    var body: some View {
        VStack{
            Text("String")
                .font(.system(size:40,weight:.medium))
            Spacer()
                .frame(height:10)
            ZStack{
               
                
            Image("String")
                    .resizable()
                    .frame(width:880,height:350)
                
    }
            Spacer()
                .frame(height:10)
            
            VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "String",withExtension: "mp4")!))
                .frame(width:550,height: 290)
                .border(Color.gray)

        }
        .background(
            Image("Back")
                .resizable()
                .frame(width: 2000, height:2000))
        .padding([.leading, .bottom, .trailing], 100.0)
    }
            
}
    

