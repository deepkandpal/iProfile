//
//  ProfileListProtocols.swift
//  iProfile
//
//  Created by Deep on 13/09/19.
//  Copyright © 2019 Deep. All rights reserved.
//
import Foundation
import UIKit

protocol ProfileViewToPresenterProtocol:class{
    
    var view: PresenterToProfileViewProtocol? {get set};
    var interactor: PresenterToInteractorProtocol? {get set};
    var router: PresenterToRouterProtocol? {get set}
    func startFetchingProfileData()
}

protocol PresenterToProfileViewProtocol:class{
  func showProfileData(modelArray:Array<Profile>)
  func showError()
}

protocol PresenterToRouterProtocol:class{
  static func createModule()-> UITableViewController
}

protocol InteractorToPresenterProtocol:class{
    func profileDataFetchedSuccess(profileModelArray:Array<Profile>)
    func profileDataFetchedFailed()
}

protocol PresenterToInteractorProtocol:class{
  var presenter: InteractorToPresenterProtocol? {get set}
  func fetchProfileData()
}




