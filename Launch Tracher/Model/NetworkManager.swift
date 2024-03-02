//
//  NetworkManager.swift
//  API
//
//  Created by idriss on 2/29/24.
//
import SwiftUI

// Network Manager for the API
final class NetworkManager: ObservableObject {
    
    static let shared = NetworkManager()
    // Use the base URL
    static let baseURL = "http://localhost:3002/"
    // Inpute the api path
    private let vandenbergApiURL = baseURL + "api"
    
    private init() {}

    // fuction
    func getvandenbergAPI(completed: @escaping(Result<[Appetizer], VandenbergError>)->Void){
        // URL
        guard let url = URL(string: vandenbergApiURL) else {
            completed(.failure(.invalidURL))
            return
        }
        // Task session (_The reason why is not work ing because of no connection_)
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            // Http code status code (_Htpp code_)
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            // Define the data
            guard let data = data else {
                completed(.failure(.invalidData))
//                print(error?.localizedDescription)
                return
            }
            // Debug print the received JSON data
//            if let jsonString = String(data: data, encoding: .utf8) {
//                    print("Received JSON data: \(jsonString)")
//                }
            // Remove the code above if the data is not been fetch
            
            // Decoder
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(ApiUrl.self, from: data)
                completed(.success(decodedResponse.request))
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type mismatch error: \(type) - \(context)")
                completed(.failure(.decodeFail))
            } catch DecodingError.valueNotFound(let type, let context) {
                print("Value not found error: \(type) - \(context)")
                completed(.failure(.decodeFail))
            } catch DecodingError.keyNotFound(let key, let context) {
                print("Key not found error: \(key) - \(context)")
                completed(.failure(.decodeFail))
            } catch DecodingError.dataCorrupted(let context) {
                print("Data corrupted error: \(context)")
                completed(.failure(.decodeFail))
            } catch {
                print("Error: \(error)")
                completed(.failure(.invalidData))
            }
        }
        // resume the task
        task.resume()
    }
}

