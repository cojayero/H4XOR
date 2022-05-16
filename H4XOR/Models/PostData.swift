//
//  PostData.swift
//  H4XOR
//
//  Created by Baldomero Fernandez Manzano on 16/5/22.
//

import Foundation

//MARK: - Segun curso de Angela Yu

struct Results: Decodable {
    let hits:[Post]
}

struct Post:Decodable, Identifiable{
    var id :String {
        return objectID
    }
    let objectID:String
    let points: Int?
    let title: String
    let url:String?
}

// MARK: - Según el protocolo de CICE


// MARK: - Results
struct Resultados {
    let hits: [Hit]?
    let nbHits, page, nbPages, hitsPerPage: Int?
    let exhaustiveNbHits, exhaustiveTypo: Bool?
    let query, params: String?
    let processingTimeMS: Int?
}

// MARK: - Hit
struct Hit {
    let createdAt, title: String?
    let url: String?
    let author: String?
    let points: Int?
    let storyText: String?
    let commentText: NSNull?
    let numComments: Int?
    let storyid, storyTitle, storyurl, parentid: NSNull?
    let createdAtI: Int?
    let tags: [String]?
    let objectID: String?
    let highlightResult: HighlightResult?
}

// MARK: - HighlightResult
struct HighlightResult {
    let title, url, author, storyText: Author?
}

// MARK: - Author
struct Author {
    let value: String?
    let matchLevel: MatchLevel?
    let matchedWords: [Any?]?
}

enum MatchLevel {
    case none
}
