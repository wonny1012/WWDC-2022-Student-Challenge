//
//  File.swift
//  WWDC_Wonny
//
//  Created by kwon ji won on 2022/04/22.
//

import SwiftUI
import AVKit

struct Master: View {
    @Binding var NaviLinkActive20: Bool
    var body: some View {
        VStack{
            VStack(alignment: .leading)
            {
            HStack(alignment: .bottom){
                Text("Conductor")
                    .font(.system(size:80,weight:.medium))
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
                Text("The leader of an orchestra\nA musician who allows the orchestra's instruments to be harmonized\nDecide how to interpret the song and play it\n\n")
                        .font(.system(size:20,weight:.medium))
                        .frame(width:800,height:190)
                    
            Image("Master1")
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

        


