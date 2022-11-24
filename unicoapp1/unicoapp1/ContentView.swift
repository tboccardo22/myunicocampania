//
//  ContentView.swift
//  unicoapp1
//
//  Created by Tullio Boccardo on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var activeTickets : [Ticket] = [Ticket(name: "URB. NAPOLI - ORARIO INTEGRATO", logo: "unico", fromto: "from NAPOLI to NAPOLI", whenbought: "October 13, 2022", active: "Da attivare", price: "1,70€"), Ticket(name: "EAV - U NA A CORSA SINGOLA AZIENDALE", logo: "eav", fromto: "from NAPOLI to NAPOLI", whenbought: "November 22, 2022", active: "from 10:30 to 12:30", price: "1,40€"), Ticket(name: "SITA SUD - U SA D CORSA SINGOLA AZIENDALE", logo: "sitasud", fromto: "from TORREGAVETA to MONTESANTO", whenbought: "November 23, 2022", active: "Da attivare", price: "1,30€")]
    
    @State private var expiredTickets : [Ticket] = [Ticket(name: "Quarto", logo: "logo", fromto: "from NAPLES to NAPLES", whenbought: "October 13, 2022", active: "Da attivare", price: "2,10€"), Ticket(name: "Secondo", logo: "logo", fromto: "from SAN GIOVANNI to POMPEI" , whenbought: "September 18, 2022", active: "from 10:30 to 12:30", price: "1,90€"), Ticket(name: "Terzo", logo: "logo", fromto: "from TORREGAVETA to MONTESANTO", whenbought: "November 23, 2022", active: "Da attivare", price: "2,30€")]
    @State private var presentView: Bool = false
    
    var body: some View {
        NavigationView{
            List{
                Section{
                    ForEach(activeTickets){ticket in
                        TicketView(ticket: ticket)
                        
                        
                    }.padding(.horizontal)
                } header: {
                    Text("Active tickets")
                        .accessibilityRemoveTraits(.isHeader)
                }
                .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowSeparator(.hidden)
                
                
                Section{ForEach(expiredTickets){ticket in
                    TicketView(ticket: ticket)
                    
                }.padding(.horizontal)
                } header: {
                    Text("Expired tickets")
                        .accessibilityRemoveTraits(.isHeader)
                }
                .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowSeparator(.hidden)
                
                
            }.toolbar {
                NavigationLink(destination: BuyView(), label: {
                Text("Buy ticket")
                        .accessibilityRemoveTraits(.isButton)
                        .accessibilityLabel(Text("Buy ticket"))
                })
            }
            
            
            
            
            .scrollContentBackground(.hidden)
            
            .navigationTitle("Tickets")
            .accessibilityRemoveTraits(.isHeader)
            .accessibilityLabel("tickets")
        }
        
    }
    
    
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
