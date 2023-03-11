//
//  File.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/22.
//

import SwiftUI
import AVKit

struct Oboe: View {
    @State var NaviLinkActive16: Bool = false
    @Binding var NaviLinkActive7: Bool
    var body: some View {
        
        VStack{
            VStack(alignment: .leading)
            {
            HStack(alignment: .bottom){
                Text("Oboe")
                    .font(.system(size:80,weight:.medium))
                Spacer()
                    .frame(width:20)
                NavigationLink(destination: Woodwind(NaviLinkActive16: $NaviLinkActive16), isActive : $NaviLinkActive16){
                Text("Wood wind")
                    .font(.system(size:20,weight:.medium))
                    .padding(.bottom)
                Spacer()
                    .frame(width:50)
                }
            }
            .padding(.trailing)
                Spacer()
                    .frame(height:50)
   
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width:1000,height: 210)
            HStack(alignment: .bottom){
            Text("A musical instrument that holds the foremost position\nIt can play a powerful and clean sound\nIn the orchestra , it plays the role if tuning the instrument\n\n")
                    .font(.system(size:20,weight:.medium))
                    .background()
                    .frame(width:800,height:190)
                 
            Image("Oboe1")
                .resizable()
                .frame(width:200,height: 200)
                Spacer()
                        .frame(width: 20)
            }
    }
    }
            ZStack(alignment: .center)
            {
                VStack{
                Spacer()
                    .frame(height: 50)
        VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "Oboe",withExtension: "mp4")!))
            .frame(width:680,height: 100)
            .border(Color.gray)
                }
            }
        }
        .background(
            Image("Back")
                .resizable()
                .frame(width: 2000, height:2000))
        .padding()
      
}
       
}
