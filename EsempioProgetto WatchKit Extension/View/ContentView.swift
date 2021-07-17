//
//  ContentView.swift
//  EsempioProgetto WatchKit Extension
//
//  Created by Pasquale Ercolino on 13/07/21.
//

import SwiftUI
import WatchKit

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Press the button to listen!")
                .multilineTextAlignment(.center)
                .padding(/*@START_MENU_TOKEN@*/.bottom, 5.0/*@END_MENU_TOKEN@*/)
            Button(action: talking) {
                HStack {
//                    Text("Start talking")
                    Image(systemName: "mic")
                        .resizable()
                        .frame(width: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                }
            }
            .buttonStyle(YellowButton())
            
        }
//        .navigationBarHidden(false)
        .navigationTitle("Listen")
    }
}

struct YellowButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
//            .padding(.vertical)
//            .padding(.horizontal, 25.0)
            .frame(width: 90, height: 90)
            .background(Color.yellow)
            .foregroundColor(Color.black)
//            .cornerRadius(10.0)
            .clipShape(Circle())

    }
}

func talking() {
    WKExtension.shared().visibleInterfaceController!
        .presentTextInputController(withSuggestions: nil,
                                    allowedInputMode: .plain,
            completion: { (result) -> Void in
                print()
    })
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
