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
    
    var id, name, origin, temperament, description: String
    var reference_image_id: String?
}

extension BreedElement {
    init (from service: BreedElementService){
        id = service.id
        name = service.name
        origin = service.origin
        temperament = service.temperament
        description = service.description
        reference_image_id = service.reference_image_id
    }
}
