//
//  File.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/23.
//
import SwiftUI
import AVKit


struct Wind: View {
    @Binding var NaviLinkActive14: Bool
    var body: some View {
        VStack{
            Text("Brass wind")
                .font(.system(size:40,weight:.medium))
            Spacer()
                .frame(height:10)
            ZStack{
                
            Image("Wind")
                    .resizable()
                    .frame(width:880,height:350)
                
    }
            Spacer()
                .frame(height:10)
            
            VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "Wind",withExtension: "mp4")!))
                .frame(width:550,height: 296)
                .border(Color.gray)

        }
        .background(
            Image("Back")
                .resizable()
                .frame(width: 2000, height:2000))
        .padding([.leading, .bottom, .trailing], 100.0)
    }
            
}
            
