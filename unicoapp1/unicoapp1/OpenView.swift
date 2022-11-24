//
//  OpenView.swift
//  unicoapp1
//
//  Created by Tullio Boccardo on 21/11/22.
//

import SwiftUI

struct OpenView: View {
    
    var ticket: Ticket
    
    var body: some View {
        ZStack{
            Color(.systemGray6)
                .ignoresSafeArea()
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(16)
                .frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.height*0.8)
                .shadow(radius: 7)
            VStack{
                HStack{
                    Spacer()
                    Image(ticket.logo)
                        
                        .resizable()
                        .accessibilityRemoveTraits(.isImage)
                        .accessibilityLabel(Text("\(ticket.logo) logo"))
                        .frame(width: UIScreen.main.bounds.width*0.32, height: UIScreen.main.bounds.height*0.1)
                    Spacer()
                }
                
                Text(ticket.name).fontWeight(.bold)
                    .padding(.horizontal, 25)
                
                Image("qrcode")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .accessibilityRemoveTraits(.isImage)
                    .accessibilityLabel("QR code")
                VStack{
                    HStack{
                        Text("Route").fontWeight(.bold)
                        Spacer()
                    }
                    HStack{
                        Text(ticket.fromto)
                        Spacer()
                    }
                }
                .padding(.horizontal, 25)
                .padding(.bottom)
                VStack{
                    HStack{
                        Text("Status").fontWeight(.bold)
                        Spacer()
                    }
                    HStack{
                        Text(ticket.active)
                        Spacer()
                    }
                }
                .padding(.horizontal, 25)
                .padding(.bottom)
                VStack{
                    HStack{
                        Text("Day of purchase").fontWeight(.bold)
                        Spacer()
                    }
                    HStack{
                        Text(ticket.whenbought)
                        Spacer()
                    }
                }
                .padding(.horizontal, 25)
                .padding(.bottom)
                VStack{
                    HStack{
                        Text("Price").fontWeight(.bold)
                        Spacer()
                    }
                    HStack{
                        Text(ticket.price)
                        Spacer()
                    }
                }
                .padding(.horizontal, 25)
            }
            .frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.height*0.8, alignment: .top)
            
        }
    }
}

struct OpenView_Previews: PreviewProvider {
    static var previews: some View {
        OpenView(ticket: Ticket(name: "Primo", logo: "unico", fromto: "from NAPLES to NAPLES", whenbought: "October 13, 2022", active: "Da attivare", price: "2,10€"))
    }
}
