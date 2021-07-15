//
//  TextView.swift
//  EsempioProgetto WatchKit Extension
//
//  Created by Pasquale Ercolino on 15/07/21.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        WKExtension.shared().visibleInterfaceController!
            .presentTextInputController(withSuggestions: nil,
                                        allowedInputMode: .plain,
                completion: { (result) -> Void in
                    print(result!)
        })
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
