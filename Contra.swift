//
//  File.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/23.
//

import SwiftUI
import AVKit

struct Contra: View {
    @State var NaviLinkActive15: Bool = false
    @Binding var NaviLinkActive13: Bool
    var body: some View {
       
        VStack{
            VStack(alignment: .leading)
            {
            HStack(alignment: .bottom){
                Text("Contrabass")
                    .font(.system(size:80,weight:.medium))
                Spacer()
                    .frame(width:30)
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
                        .frame(width:1000,height: 230)
            HStack(alignment: .bottom){
            Text("A string instrument that produces the highest and lowest notes\nIt can play a large, heavy sound\n In the orchestra, it plays the lowest register\n\n")
                    .font(.system(size:20,weight:.medium))
                   .frame(width:800,height:190)
                   .padding()
                
            Image("Contra1")
                .resizable()
                .frame(width:190,height: 190)
                Spacer()
                        .frame(width: 30)
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
        VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "Contra",withExtension: "mp4")!))
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

