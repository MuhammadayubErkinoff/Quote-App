//
//  QuoteModel.swift
//  Quote App
//
//  Created by Muhammadayubxon on 30/12/21.
//

import Foundation
import SwiftUI
 
class QuoteModel:ObservableObject{
    @Published var authors=[Author]()
    
    init(){
        self.authors=JsonParser.parse(fileName: "Quotes")
    }
}
