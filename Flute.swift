//
//  File 2.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/22.
//

import SwiftUI
import AVKit

struct Flute: View {
    @State var NaviLinkActive16: Bool = false
    @Binding var NaviLinkActive6: Bool
    var body: some View {
        VStack{
            VStack(alignment: .leading)
            {
            HStack(alignment: .bottom){
                Text("Flute")
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
            Text("The only woodwind instrument that plays without a lead\nIt makes various sounds according to diverse ranges\nIn the orchestra, it plays a clear and light feeling\n\n")
                    .font(.system(size:20,weight:.medium))
                    .background()
                    .frame(width:800,height:190)

            Image("Flute1")
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
        VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "Flute",withExtension: "mp4")!))
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
