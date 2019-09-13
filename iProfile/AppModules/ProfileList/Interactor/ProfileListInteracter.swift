//
//  ProfileListInteracter.swift
//  iProfile
//
//  Created by Deep on 13/09/19.
//  Copyright © 2019 Deep. All rights reserved.
//

import UIKit

class ProfileListInteractor: PresenterToInteractorProtocol{
  var presenter: InteractorToPresenterProtocol?
  
  func fetchProfileData()
  {
    //Fetch from server
    let resumeWebServiceHandler = NetworkManager()
    let kURL = "https://api.jsonbin.io/b/5d27724f0e09805769fec4da/1"
    guard let url = URL.init(string: kURL) else { return }
    resumeWebServiceHandler.getProfileDataFromServer(url: url, completion:({[weak self](data:ProfileModel?, error:Error?) in
      if let profileInfo = data {
        self?.presenter?.profileDataFetchedSuccess(profileModelArray: [profileInfo])
      }else {
        //No data saved in server
        if let _ = error{
          print("Error while Fetching - Initial Load")
          self?.presenter?.profileDataFetchedFailed()
        }
      }}))
  }
}
