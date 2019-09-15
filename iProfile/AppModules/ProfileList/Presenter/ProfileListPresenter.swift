//
//  ProfileListPresenter.swift
//  iProfile
//
//  Created by Deep on 13/09/19.
//  Copyright © 2019 Deep. All rights reserved.
//

import Foundation

class ProfileListPresenter:ProfileViewToPresenterProtocol {
  
  var view: PresenterToProfileViewProtocol?
  
  var interactor: PresenterToInteractorProtocol?
  
  var router: PresenterToRouterProtocol?
  
    func startFetchingProfileData() {
        interactor?.fetchProfileData()
    }
  
  
}

extension ProfileListPresenter: InteractorToPresenterProtocol{
  
  func profileDataFetchedSuccess(profileModelArray: [Profile]) {
    view?.showProfileData(modelArray: profileModelArray)
  }
  
  func profileDataFetchedFailed() {
    view?.showError()
  }
  
  
}

