//
//  cources.swift
//  Bakery
//
//  Created by Abeer on 20/07/1446 AH.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

//import Foundation
//
//// MARK: - Welcome
//struct Welcome: Codable {
//    let records: [Record]
//}
//
//// MARK: - Record
//struct Record: Codable {
//    let id: String
//    let createdTime: CreatedTime
//    let fields: Fields
//}
//
//enum CreatedTime: String, Codable {
//    case the20250107T224048000Z = "2025-01-07T22:40:48.000Z"
//}
//
//// MARK: - Fields
//struct Fields: Codable {
//    let id, title: String
//    let level: Level
//    let locationName: String
//    let locationLatitude, locationLongitude: Double
//    let chefID: String
//    let startDate, endDate: Double
//    let description: String
//
//    enum CodingKeys: String, CodingKey {
//        case id, title, level
//        case locationName = "location_name"
//        case locationLatitude = "location_latitude"
//        case locationLongitude = "location_longitude"
//        case chefID = "chef_id"
//        case startDate = "start_date"
//        case endDate = "end_date"
//        case description
//    }
//}
//
//enum Level: String, Codable {
//    case advance = "advance"
//    case beginner = "beginner"
//    case intermediate = "intermediate"
//}
