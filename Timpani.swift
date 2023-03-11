//
//  File 2.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/22.
//

import SwiftUI
import AVKit

struct Timpani: View {
    @Binding var NaviLinkActive3: Bool
    var body: some View {
        VStack{
            VStack(alignment: .leading)
            {
            HStack(alignment: .bottom){
                Text("Timpani")
                    .font(.system(size:80,weight:.medium))
                Spacer()
                    .frame(width:20)
                Text("Percussion")
                    .font(.system(size:20,weight:.medium))
                    .padding(.bottom)
                Spacer()
                    .frame(width:50)

            }
            .padding(.trailing)
                Spacer()
                    .frame(height:50)
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width:1000,height: 210)
            HStack(alignment: .bottom){
            Text("A second conductor\nIt can be tuned and can play accurate notes\nA percussion instrument indispensable to an orchestra\n\n")
                .font(.system(size:20,weight:.medium))
                .background()
                .frame(width:800,height:190)

            Image("Timpani1")
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
        VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "Timpani",withExtension: "mp4")!))
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
