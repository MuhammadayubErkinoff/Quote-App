//
//  JsonParser.swift
//  Quote App
//
//  Created by Muhammadayubxon on 30/12/21.
//

import Foundation

class JsonParser{
    static func parse(fileName:String)->[Author]{
        let pathString=Bundle.main.path(forResource: fileName, ofType: "json")
        if let path=pathString {
            let url=URL(fileURLWithPath: path)
            do{
                let data=try Data(contentsOf: url)
                do{
                    let decoder=JSONDecoder()
                    let  decodedFile=try decoder.decode([Author].self,from:data)
                    
                    for r in decodedFile{
                        r.id=UUID()
                    }
                    return decodedFile
                }
                catch{
                    print(error)
                }
            }
            catch{
                print(error)
            }
            
            return [Author]()
        }
        else{
            return [Author]()
        }
    }
}
