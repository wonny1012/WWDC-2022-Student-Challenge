//
//  File 2.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/22.
//

import SwiftUI
import AVKit

struct Cello: View {
    @State var NaviLinkActive15: Bool = false
    @Binding var NaviLinkActive12: Bool
    var body: some View {
       
        VStack{
            VStack(alignment: .leading)
            {
            HStack(alignment: .bottom){
                Text("Violoncello")
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
                Text("The most resembles a human voice\nIt can play soft, stable and warm sound\nIn the orchestra, it plays baritone tone\n\n")
                        .font(.system(size:30,weight:.medium))
                        .frame(width:800,height:190)
                    
            Image("Cello1")
                .resizable()
                .frame(width:200,height: 200)
                        Text("")
                            .frame(width:10,height: 200)
            }
    }
    }
            ZStack(alignment: .center)
            {
                VStack{
                    Spacer()
                        .frame(height: 50)
                                    
        VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "Cello",withExtension: "mp4")!))
            .frame(width:680,height: 100)
            .border(Color.gray)
        }
}
}
    .background(
        Image("Back")
            .resizable()
            .frame(width: 2000, height: 2000))
    .padding()

}
}
