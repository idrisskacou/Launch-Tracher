//
//  VandError.swift
//  Launch Tracher
//
//  Created by idriss on 2/28/24.
//

import Foundation

// case for error
enum VandenbergError: Error{
    case invalidURL
    case unableToComplete
    case invalidResponse
    case invalidData
    case decodeFail
}
