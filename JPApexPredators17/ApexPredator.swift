//
//  ApexPredator.swift
//  JPApexPredators17
//
//  Created by Mark Santoro on 9/25/24.
//

import Foundation
import SwiftUI

struct ApexPredator: Decodable, Identifiable {
    let id: Int
    let name: String
    let type: PredatorType
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScene] // spelling differs from json data because.....
    let link: String
    
    var image: String {
        name.lowercased().replacingOccurrences(of: " ", with: "")
        
    }
    
    
    struct MovieScene: Decodable {
        let id: Int
        let movie: String
        let sceneDescription: String // spelling differs from json data because......
    }
    
    enum PredatorType: String, Decodable {
        case land
        case air
        case sea
        
        var background: Color {
            switch self {
            case .land:
                .brown
            case .air:
                .teal
            case .sea:
                .blue
            }
        }
        
    }
    
    
}
