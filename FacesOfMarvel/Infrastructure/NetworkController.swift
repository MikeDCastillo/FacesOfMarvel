//
//  NetworkController.swift
//  FacesOfMarvel
//
//  Created by Michael Castillo on 9/10/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import Foundation

struct NetworkController {
    
    let baseURLString = "http://gateway.marvel.com/v1/public/"
    var charactersEndpoint: String {
        return baseURLString + "/characters"
    }
    let network = Network()
    
    func characterComicsEndpoint(id: Int) -> String {
        return baseURLString + "/characters/\(id)/comics"
    }
    
    func getCharacters(completion: ([ComicCharacter]?) -> Void) {
        
        network.performRequest(for: charactersEndpoint, httpMethod: .get, urlParameters: <#T##[String : String]?#>, body: <#T##Data?#>, completion: <#T##((Result<Data>) -> Void)?##((Result<Data>) -> Void)?##(Result<Data>) -> Void#>)
    }
    
    func getComics(with characterId: Int, completion: ([Any/*Comic*/]) -> Void) {
        
    }
    
}
