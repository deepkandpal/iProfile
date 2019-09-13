//
//  ProfileListPresenter.swift
//  iProfile
//
//  Created by Deep on 13/09/19.
//  Copyright © 2019 Deep. All rights reserved.
//

import UIKit

class ProfileListPresenter:NSObject {
  
  var view: PresenterToViewProtocol?
  
  var interactor: PresenterToInteractorProtocol?
  
  var router: PresenterToRouterProtocol?
  

  
  
}

extension ProfileListPresenter : ViewToPresenterProtocol{
  func startFetchingProfileData() {
    interactor?.fetchProfileData()
  }
  
}

extension ProfileListPresenter: InteractorToPresenterProtocol{
  
  func profileDataFetchedSuccess(profileModelArray: Array<ProfileModel>) {
    view?.showProfileData(modelArray: profileModelArray)
  }
  
  func profileDataFetchedFailed() {
    view?.showError()
  }
  
  
}

