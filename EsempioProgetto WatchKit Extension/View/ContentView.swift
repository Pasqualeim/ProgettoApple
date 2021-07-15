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
            Text("Hello, World!")
            Button(action: talking) {
                HStack {
                    Text("Start talking!")
                    Text(Image(systemName: "plus"))
                }
            }
            .buttonStyle(YellowButton())
        }
    }
}

struct YellowButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical)
            .padding(.horizontal, 25.0)
            .background(Color.yellow)
            .foregroundColor(Color.black)
            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
    }
}

func talking() {
    WKExtension.shared().visibleInterfaceController!
        .presentTextInputController(withSuggestions: nil,
                                    allowedInputMode: .plain,
            completion: { (result) -> Void in
                print(result!)
    })
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
