//
//  BuyView.swift
//  unicoapp1
//
//  Created by Tullio Boccardo on 24/11/22.
//

import SwiftUI

struct BuyView: View {
    @State var fromplace: String = ""
    @State var toplace: String = ""
       
       var body: some View {
           VStack(alignment: .leading) {
               List{
                   TextField("From:", text: $fromplace)
                       .textFieldStyle(.plain)
                   TextField("To:", text: $toplace)
                       .textFieldStyle(.automatic)
               }
           }
       }
}

struct BuyView_Previews: PreviewProvider {
    static var previews: some View {
        BuyView()
    }
}
