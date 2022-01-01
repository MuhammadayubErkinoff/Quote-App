//
//  ContentView.swift
//  Quote App
//
//  Created by Muhammadayubxon on 30/12/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model=QuoteModel()
    var body: some View {
        NavigationView{
            List(model.authors){a in
                NavigationLink(destination: Quote_view(a: a),
                            label:{
                    ZStack{
                        Image(a.image).resizable().scaledToFill()
                            .frame(width: 250, height: 250, alignment: .center)
                            .clipped()
                            .cornerRadius(8)
                        VStack{
                            Text(a.mainQuote).foregroundColor(Color.orange).font(.title).padding(.horizontal)
                            HStack{
                                Spacer()
                                Text("-"+a.name).foregroundColor(Color.orange).padding()
                            }
                        }
                    }
                }
                )
        }.navigationBarTitle("Quotes")
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
