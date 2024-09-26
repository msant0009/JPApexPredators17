//
//  ApexPredator.swift
//  JPApexPredators17
//
//  Created by Mark Santoro on 9/25/24.
//

import Foundation

struct ApexPredator: Decodable {
    let id: Int
    let name: String
    let type: String
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScene] // spelling differs from json data because.....
    let link: String
    
    
    struct MovieScene: Decodable {
        let id: Int
        let movie: String
        let sceneDescription: String // spelling differs from json data because......
    }
    
}
