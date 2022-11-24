//
//  TicketModel.swift
//  unicoapp1
//
//  Created by Tullio Boccardo on 21/11/22.
//

import Foundation
import SwiftUI

struct Ticket : Identifiable{
    
    var id = UUID()
    var name : String
    var logo : String
    var fromto : String
    var whenbought : String
    var active : String
    var price : String
}
