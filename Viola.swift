//
//  File 2.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/22.
//

import SwiftUI
import AVKit

struct Viola: View {
    @State var NaviLinkActive15: Bool = false
    @Binding var NaviLinkActive11: Bool
    var body: some View {
        VStack{
            VStack(alignment: .leading)
            {
            HStack(alignment: .bottom){
                Text("Viola")
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
                        .frame(width:1000,height: 210)
            HStack(alignment: .bottom){
            Text("A instrument that looks like a violin but is larger and has a lower range\nIt can play a neutral, dark sound\nIn the orchestra, it supports middle register between the violin and the cello\n\n")
                    .font(.system(size:20,weight:.medium))
                    .background()
                    .frame(width:800,height:190)

            Image("Viola1")
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
      //  .padding()
        VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "Viola",withExtension: "mp4")!))
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
