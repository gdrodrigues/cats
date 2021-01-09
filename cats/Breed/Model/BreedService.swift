//
//  BreedService.swift
//  cats
//
//  Created by Gabriel Duarte on 08/01/21.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let breedService = try? newJSONDecoder().decode(BreedService.self, from: jsonData)

import Foundation

// MARK: - BreedElementService
struct BreedElementService: Decodable {
    let adaptability, affectionLevel: Int?
    let altNames: String?
    let cfaURL: String?
    let childFriendly: Int?
    let countryCode, countryCodes: String?
    let dogFriendly, energyLevel, experimental, grooming: Int?
    let hairless, healthIssues, hypoallergenic: Int?
    let id: String
    let indoor, intelligence, lap: Int?
    let lifeSpan: String?
    let natural: Int?
    let origin, name, description: String
    let rare: Int?
    let reference_image_id: String?
    let rex, sheddingLevel, shortLegs, socialNeeds: Int?
    let strangerFriendly, suppressedTail: Int?
    let temperament: String
    let vcahospitalsURL: String?
    let vetstreetURL: String?
    let vocalisation: Int?
    let weight: Weight?
    let wikipediaURL: String?
}

// MARK: - Weight
struct Weight: Decodable {
    let imperial, metric: String?
}
