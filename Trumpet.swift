//
//  File 2.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/22.
//

import SwiftUI
import AVKit

struct Trumpet: View {
    @Binding var NaviLinkActive2: Bool
    @State var NaviLinkActive14: Bool = false
    var body: some View {
        VStack{
            VStack(alignment: .leading)
            {
            HStack(alignment: .bottom){
                Text("Trumpet")
                    .font(.system(size:80,weight:.medium))
                Spacer()
                    .frame(width:20)
                NavigationLink(destination: Wind(NaviLinkActive14: $NaviLinkActive14), isActive : $NaviLinkActive14){
                Text("Brass wind")
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
            Text("a musical instrument with the highest range in a brass\nIt has a brilliant and bright tone\nIn the orchestra, it plays a powerful and bright feeling\n\n")
                    .font(.system(size:20,weight:.medium))
                    .background()
                    .frame(width:800,height:190)
                    
            Image("Trumpet1")
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
        VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "Trumpet",withExtension: "mp4")!))
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
