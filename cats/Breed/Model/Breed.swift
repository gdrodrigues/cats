//
//  Breed.swift
//  cats
//
//  Created by Gabriel Duarte on 06/01/21.
//

import Foundation

struct Breeds: Codable {
    
    var breeds: [BreedElement]
}

struct BreedElement: Codable {
    
    var id, name, origin, temperament, description, reference_image_id: String
}
