//
//  APIMockService.swift
//  PruebaTecnicaGatos
//
//  Created by victor tique on 7/12/21.
//

import Foundation

struct APIMockService: APIServiceProtocol {
    
    var result: Result<[Breed], APIError>
    
    func fetchBreeds(url: URL?, completion: @escaping (Result<[Breed], APIError>) -> Void) {
        completion(result)
    }
}
