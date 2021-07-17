//
//  StartView.swift
//  EsempioProgetto WatchKit Extension
//
//  Created by Pasquale Ercolino on 15/07/21.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack{
            Text("Sto cazzo")
        }
        .navigationBarBackButtonHidden(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
