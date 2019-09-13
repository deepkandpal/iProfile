//
//  NetworkManager.swift
//  iProfile
//
//  Created by Deep on 13/09/19.
//  Copyright © 2019 Deep. All rights reserved.
//

import Foundation


class NetworkManager: NSObject, URLSessionDelegate {
  func getProfileDataFromServer(url: URL, completion: @escaping (ProfileModel?, Error?) -> Void) {
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = "GET"
    
    // set up the session
    let config = URLSessionConfiguration.default
    config.timeoutIntervalForRequest = 60
    let session = URLSession(configuration: config)
    
    // make the request
    let task = session.dataTask(with: urlRequest) {
      (data, response, error) in
      // check for any errors
      guard error == nil else {
        print(error ?? "Error in request")
        completion(nil,error)
        return
      }
      // make sure we got data
      guard let responseData = data else {
        completion(nil,error)
        return
      }
      do {
        let peronalInfoModel = try JSONDecoder().decode(ProfileModel.self, from: responseData)
        print(peronalInfoModel)
        completion(peronalInfoModel, nil)
      } catch {
        completion(nil,error)
      }
      
    }
    task.resume()
  }
}

extension NetworkManager {
  public func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Swift.Void) {
    //Handle SSL Pinning for authentication challange.
  }
  
}
