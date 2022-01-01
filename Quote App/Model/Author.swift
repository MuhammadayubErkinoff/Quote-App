//
//  Author.swift
//  Quote App
//
//  Created by Muhammadayubxon on 30/12/21.
//

import Foundation

class Author:Identifiable,Decodable{
    var id : UUID?
    var name=""
    var image=""
    var mainQuote=""
    var quotes=[String]()
}
