//
//  APIServiceProtocol.swift
//  PruebaTecnicaGatos
//
//  Created by victor tique on 7/12/21.
//

import Foundation

protocol APIServiceProtocol {
    func fetchBreeds(url: URL?, completion: @escaping(Result<[Breed], APIError>) -> Void)
}
