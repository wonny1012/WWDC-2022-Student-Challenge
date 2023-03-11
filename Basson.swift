//
//  File.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/22.
//

import SwiftUI
import AVKit

struct Basson: View {
    @State var NaviLinkActive16: Bool = false
    @Binding var NaviLinkActive9: Bool
    var body: some View {
       
        VStack{
            VStack(alignment:.leading)
            {
                HStack(alignment: .bottom){
                Text("Basson")
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
            Text("The lowest-pitched woodwind instrument \nIt has a pitch similar to a person's low voice\nIn the orchestra, it plays a tragic and serious feeling\n\n")
                    .font(.system(size:20,weight:.medium))
                   .frame(width:800,height:190)
//                   .padding()
                    
            Image("Basson1")
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
        VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "Basson",withExtension: "mp4")!))
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
