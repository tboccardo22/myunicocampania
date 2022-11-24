//
//  TicketView.swift
//  unicoapp1
//
//  Created by Tullio Boccardo on 18/11/22.
//

import SwiftUI

struct TicketView: View {
    var ticket:Ticket
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .frame( height: UIScreen.main.bounds.height*0.22)
                .cornerRadius(10)
                .shadow(radius: 4)
            VStack{
                ZStack{
                    NavigationLink( destination : OpenView(ticket: ticket)){
                    }.opacity(0)
                    VStack{
                        HStack{
                            Image(ticket.logo)
                                .resizable()
                                .scaledToFit()
                                .padding(.leading)
                                .padding(.top, 3.0)
                            Spacer()
                                .accessibilityHidden(true)
                        }
                        HStack{
                            Text(ticket.name)
                                .accessibilityHidden(true)
                                .multilineTextAlignment(.leading)
                                .fontWeight(.bold)
                            
                            Spacer()
                        }.padding(.horizontal)
                        Spacer(minLength: 15)
                        HStack{
                            Text(ticket.fromto).accessibilityHidden(true)
                                .fontWeight(.light)
                            Spacer()
                        }.padding(.horizontal)
                        Spacer(minLength: 15)
                    }.frame(height: UIScreen.main.bounds.height*0.147)
                    
                }.accessibilityElement(children: .combine)

                .frame(height: UIScreen.main.bounds.height*0.147)
                
                //                NavigationLink {
                //                    OpenView(ticket: ticket)
                //                } label: {
                //                    VStack{
                //                        HStack{
                //                            Image(ticket.logo)
                //                                .resizable()
                //                                .scaledToFit()
                //                                .padding(.leading)
                //                                .padding(.top, 3.0)
                //                            Spacer()
                //                                .accessibilityHidden(true)
                //                        }
                //                        HStack{
                //                            Text(ticket.name)
                //                                .accessibilityHidden(true)
                //                                .multilineTextAlignment(.leading)
                //                                .fontWeight(.bold)
                //
                //                            Spacer()
                //                        }.padding(.horizontal)
                //                        Spacer(minLength: 15)
                //                        HStack{
                //                            Text(ticket.fromto).accessibilityHidden(true)
                //                                .fontWeight(.light)
                //                            Spacer()
                //                        }.padding(.horizontal)
                //                        Spacer(minLength: 15)
                //                    }.frame(height: UIScreen.main.bounds.height*0.147)
                //                }
                .accessibilityLabel(Text(" this is a \(ticket.logo) ticket  \(ticket.fromto)"))
                
                HStack{
                    ForEach(1..<31){i in
                        Rectangle().frame(width: UIScreen.main.bounds.height*0.003, height: UIScreen.main.bounds.height*0.003)
                            
                    }
                }                    .padding(.horizontal)
                HStack{
                    Spacer()
                    ZStack{
                        Rectangle()
                            .foregroundColor(.green)
                            .frame(width: UIScreen.main.bounds.width*0.35)
                            .cornerRadius(5)
                        HStack{
                            Text("Buy Again")
                                .foregroundColor(.white)
                            Image(systemName: "cart")
                                .foregroundColor(.white)
                        }
//                        Button(action: {
//                            print("Bought")
//                        }, label: {
//                            Label("Buy Again", systemImage: "cart")
//                                .foregroundColor(Color.white)
//                                .accessibilityLabel("buy again this ticket")
//                        })
                    }
                    .accessibilityElement(children: .combine)
                    .onTapGesture {
                        print("Bought")
                    }
                    .accessibilityLabel("buy again this ticket")
                    .padding(.horizontal)
                }
                Spacer()
            }
        }.frame( height: UIScreen.main.bounds.height*0.22)
            .padding([.top, .bottom], 10)
    }
}
    

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView(ticket: Ticket(name: "SITA SUD - U SA D CORSA SINGOLA AZIENDALE", logo: "unico", fromto: "from NAPLES to NAPLES", whenbought: "October 13, 2022", active: "Da attivare", price: "2,10€"))
    }
}
