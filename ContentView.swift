import SwiftUI
import UIKit

struct ContentView: View {
    @State var NaviLinkActive1: Bool = false
    @State var NaviLinkActive2: Bool = false
    @State var NaviLinkActive3: Bool = false
    @State var NaviLinkActive4: Bool = false
    @State var NaviLinkActive5: Bool = false
    @State var NaviLinkActive6: Bool = false
    @State var NaviLinkActive7: Bool = false
    @State var NaviLinkActive8: Bool = false
    @State var NaviLinkActive9: Bool = false
    @State var NaviLinkActive10: Bool = false
    @State var NaviLinkActive11: Bool = false
    @State var NaviLinkActive12: Bool = false
    @State var NaviLinkActive13: Bool = false
    @State var NaviLinkActive20: Bool = false
    @Binding var NaviLinkActive0: Bool
    
        var body: some View {
            NavigationView{
                
            VStack(){
                HStack(alignment: .top){
                    NavigationLink(
                        destination: Horn(NaviLinkActive1 : $NaviLinkActive1),
                        isActive: $NaviLinkActive1){
                            Image("Horn")
                                    .resizable()
                                    .frame(width:150,height: 180)
                        }
                    
                    NavigationLink(
                        destination: Trumpet(NaviLinkActive2 : $NaviLinkActive2),
                        isActive: $NaviLinkActive2){
                    Image("Trumpet")
                            .resizable()
                            .frame(width:165,height:180)
                        }
                    
                    NavigationLink(
                        destination: Timpani(NaviLinkActive3 : $NaviLinkActive3),
                        isActive: $NaviLinkActive3){
                    Image("Timpani")
                            .resizable()
                        .frame(width:180,height:180)
                        }
                    
                    NavigationLink(
                        destination: Trombone(NaviLinkActive4 : $NaviLinkActive4),
                        isActive: $NaviLinkActive4){
                    Image("Trombone")
                            .resizable()
                        .frame(width:150,height:180)
                        }
                    
                    NavigationLink(
                        destination: Tuba(NaviLinkActive5 : $NaviLinkActive5),
                        isActive: $NaviLinkActive5){
                    Image("Tuba")
                            .resizable()
                        .frame(width:115,height:180)
                        }
                .padding(.bottom, 1.0)
                }
               
                HStack(alignment: .bottom){
                    Image("1F")
                            .resizable()
                        .frame(width:20,height: 170)
                
                    
                    NavigationLink(
                        destination: Flute(NaviLinkActive6 : $NaviLinkActive6),
                        isActive: $NaviLinkActive6){
                    Image("Flute")
                            .resizable()
                            .frame(width:220,height:170)
                        }
                    
                    NavigationLink(
                        destination: Oboe(NaviLinkActive7 : $NaviLinkActive7 ),
                        isActive: $NaviLinkActive7 ){
                    Image("Oboe")
                        .resizable()
                        .frame(width:220,height:170)
                        }
                    
                    NavigationLink(
                        destination: Clarinet(NaviLinkActive8 : $NaviLinkActive8),
                        isActive: $NaviLinkActive8){
                    Image("Clarinet")
                        .resizable()
                        .frame(width:260,height:170)
                        }
                    
                    NavigationLink(
                        destination: Basson(NaviLinkActive9 : $NaviLinkActive9),
                        isActive: $NaviLinkActive9){
                    Image("Basson")
                        .resizable()
                        .frame(width:240,height:170)
                        }
//                    Image("1F")
//                            .resizable()
//                        .frame(width:10,height: 150)
                    
                    }
                .padding()
                    Spacer()
                            .frame(height:20)
                HStack(alignment: .bottom){
                    Image("1F")
                            .resizable()
                        .frame(width:70,height: 320)
                    NavigationLink(
                        destination: Violin(NaviLinkActive10 : $NaviLinkActive10),
                        isActive: $NaviLinkActive10){
                    Image("Violin")
                            .resizable()
                        .frame(width:320,height:320)
                        }
                        VStack{
                            NavigationLink(
                                destination: Viola(NaviLinkActive11 : $NaviLinkActive11),
                                isActive: $NaviLinkActive11){
                    Image("Viola")
                            .resizable()
                        .frame(width:270,height:160)
                                }
                            NavigationLink(
                                destination: Master(NaviLinkActive20 : $NaviLinkActive20),
                                isActive: $NaviLinkActive20){
                    Image("Master")
                            .resizable()
                        .frame(width:280,height:160)
                                }
                        }
                    NavigationLink(
                        destination: Cello(NaviLinkActive12 : $NaviLinkActive12),
                        isActive: $NaviLinkActive12){
                    Image("Cello")
                            .resizable()
                        .frame(width:220,height:320)
                        }
                    NavigationLink(
                        destination: Contra(NaviLinkActive13 : $NaviLinkActive13),
                        isActive: $NaviLinkActive13){
                    Image("Contra")
                            .resizable()
                        .frame(width:200,height:320)
                        }
//                    Image("1F")
//                            .resizable()
//                        .frame(width:10,height: 300)
                    }
                
                
                }
                .background(
                Image("Stage")
                    
                    .resizable()
                    .frame(width: 1800.0, height: 1100.0)
                )
                
                .padding([.leading, .bottom, .trailing], 100.0)
        
                
            }

            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
            

            
        }
        
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .previewInterfaceOrientation(.landscapeLeft)
//    }
//}
            
    
