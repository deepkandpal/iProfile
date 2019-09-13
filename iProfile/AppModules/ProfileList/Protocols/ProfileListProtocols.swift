//
//  ProfileListProtocols.swift
//  iProfile
//
//  Created by Deep on 13/09/19.
//  Copyright © 2019 Deep. All rights reserved.
//

import UIKit

protocol ViewToPresenterProtocol{
  func startFetchingProfileData()
  
}

protocol PresenterToViewProtocol{
  func showProfileData(modelArray:Array<ProfileModel>)
  func showError()
}

protocol PresenterToRouterProtocol{
  static func createModule()-> ProfileListTableViewController
 // func pushToProfileDetailsScreen(navigationConroller:UINavigationController)
}

protocol PresenterToInteractorProtocol{
  func fetchProfileData()
}

protocol InteractorToPresenterProtocol{
  func profileDataFetchedSuccess(profileModelArray:Array<ProfileModel>)
  func profileDataFetchedFailed()
}

