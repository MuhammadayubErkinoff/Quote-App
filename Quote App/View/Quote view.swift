//
//  Quote view.swift
//  Quote App
//
//  Created by Muhammadayubxon on 30/12/21.
//

import SwiftUI

struct Quote_view: View {
    var a:Author
    var body: some View {
        VStack(alignment: .leading){
        ForEach(a.quotes,id:\.self){quote in
            Text(quote).font(.callout).padding([.leading, .bottom])
        }
            Spacer()
        }.navigationBarTitle(a.name)
    }
}

struct Quote_view_Previews: PreviewProvider {
    static var previews: some View {
        let model=QuoteModel()
        Quote_view(a:model.authors[0])
    }
}
