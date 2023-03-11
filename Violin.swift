//
//  File 2.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/22.
//

import SwiftUI
import AVKit

struct Violin: View {
    @State var NaviLinkActive15: Bool = false
    @Binding var NaviLinkActive10: Bool
    var body: some View {
        VStack{
            VStack(alignment: .leading)
            {
            HStack(alignment: .bottom){
                Text("Violin")
                    .font(.system(size:80,weight:.medium))
                Spacer()
                    .frame(width:20)
                NavigationLink(destination: String(NaviLinkActive15: $NaviLinkActive15), isActive : $NaviLinkActive15){
                Text("String")
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
                        .frame(width:1000,height: 200)
            HStack(alignment: .bottom){
            Text("The smallest stringed instrument\nIt can play plaintive and cheerful sounds\nIn the orchestra, it plays the main melody\n\n")
                    .font(.system(size:20,weight:.medium))
                    .background()
                    .frame(width:800,height:190)
                    
            Image("Violin1")
                .resizable()
                .frame(width:200,height: 200)
                Spacer()
                        .frame(width: 20)
                Text("")
                    .frame(width:20,height: 200)
            }
    }
    }
            ZStack(alignment: .center)
            {
                VStack{
                Spacer()
                    .frame(height: 50)
      //  .padding()
        VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "Violin",withExtension: "mp4")!))
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

