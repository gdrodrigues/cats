//
//  BreedListWorker.swift
//  cats
//
//  Created by Gabriel Duarte on 07/01/21.
//

import Foundation

class BreedListWorker: GenericWorker {
    
    func getBreedList(completion: @escaping completion<[BreedElement]?>) {
        
        let session: URLSession = URLSession.shared
        
        let url: URL? = URL(string: "https://api.thecatapi.com/v1/breeds")
        
        if let _url = url {
            
            let task: URLSessionTask = session.dataTask(with: _url) { (data, response, error) in
                
                
                do {
                    let decoder = JSONDecoder()
                    let serviceBreeds = try decoder.decode([BreedElementService].self, from: data ?? Data())
                    
                    let breeds = serviceBreeds.map { BreedElement(from: $0) }
                    
                    completion(breeds, nil)
                    
                }
                
                catch{
                    completion(nil, nil)
                }
            }
            
            task.resume()
            
        }
        
    }
    
}
