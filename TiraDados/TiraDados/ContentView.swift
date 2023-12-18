//
//  ContentView.swift
//  TiraDados
//
//  Created by  on 1/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var dado1: Image = Image("dice1")
    @State var dado2: Image = Image("dice1")
    //@State var orientacion = UIDeviceOrientation.unknown
    // No se porque no funciona
    var body: some View {
        ZStack {
            Image("background").resizable().scaledToFill().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
            VStack {
                Spacer()
                Image("diceeLogo")
                HStack {
                    dado1
                    
                    dado2
                }.padding(.top, 25).padding(.bottom, 25)
                
                Button(action: aleatorio){
                    Text("Roll")
                }.font(.system(size: 60)).foregroundColor(.white).background(.red)
                
                Spacer()
                
            }
            .padding()
        }
        
    }
    
    func aleatorio() {
        dado1 = Image("dice\(Int.random(in: 1...6))")
        dado2 = Image("dice\(Int.random(in: 1...6))")
    }
}

#Preview {
    ContentView()
}
