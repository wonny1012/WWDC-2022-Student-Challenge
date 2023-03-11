import SwiftUI
import AVKit


struct Woodwind: View {
    @Binding var NaviLinkActive16: Bool
    var body: some View {
        VStack{
            Text("Wood wind")
                .font(.system(size:40,weight:.medium))
            Spacer()
                .frame(height:10)
            ZStack{
                
            Image("Woodwind")
                    .resizable()
                    .frame(width:880,height:350)
                
    }
            Spacer()
                .frame(height:10)
            
            VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource : "Woodwind",withExtension: "mp4")!))
                .frame(width:595,height: 296)
                .border(Color.gray)

        }
        .background(
            Image("Back")
                .resizable()
                .frame(width: 2000, height:2000))
        .padding([.leading, .bottom, .trailing], 100.0)
    }
            
}
