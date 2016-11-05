//
//  API.swift
//  blogMessageAppTest
//
//  Created by Alexander Mason on 11/4/16.
//  Copyright © 2016 Alexander Mason. All rights reserved.
//

import Foundation


class QuoteAPI {
    
    class func getQuotes(_ completion: @escaping ([String: Any]) -> ()) {
        let quoteURL = "http://api.forismatic.com/api/1.0/?method=getQuote&format=json&lang=en"
      
        let url = URL(string: quoteURL)
        
        let session = URLSession.shared
        guard let unwrappedURL = url else { return }
        
       
        let task = session.dataTask(with: unwrappedURL) { (data, response, error) in
            
            if let data = data {
                
                do {
                let JSON = try JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                   
                    completion(JSON)
                } catch {

                }
                
            }
        }
        task.resume()
    }
    
    
}





