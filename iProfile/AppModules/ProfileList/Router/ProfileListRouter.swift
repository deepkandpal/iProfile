//
//  ProfileListRouter.swift
//  iProfile
//
//  Created by Deep on 13/09/19.
//  Copyright © 2019 Deep. All rights reserved.
//

import UIKit

class ProfileListRouter: PresenterToRouterProtocol{
    
    class func createModule() ->UITableViewController{
        let view = mainstoryboard.instantiateViewController(withIdentifier: "ProfileListTableViewController") as? ProfileListTableViewController
        let presenter: ProfileViewToPresenterProtocol & InteractorToPresenterProtocol = ProfileListPresenter();
        let interactor: PresenterToInteractorProtocol = ProfileListInteractor();
        let router: PresenterToRouterProtocol = ProfileListRouter();
        
        view?.presenter = presenter;
        presenter.view = view;
        presenter.router = router;
        presenter.interactor = interactor;
        interactor.presenter = presenter;
        
        return view!;
        
        //}
        
        //return UIViewController()
    }
    
    static var mainstoryboard: UIStoryboard{
        return UIStoryboard(name:"Main",bundle: Bundle.main)
    }
}


