//
//  ProfileListTableViewController.swift
//  iProfile
//
//  Created by Deep on 13/09/19.
//  Copyright © 2019 Deep. All rights reserved.
//

import UIKit

class ProfileListTableViewController: UITableViewController {
  
  var presenter:ProfileViewToPresenterProtocol?
  
  var profileArrayList:Array<Profile> = Array()
  weak var navController: UINavigationController?
  weak var navBar: UINavigationBar?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.showSpinner(onView: self.view)
    presenter?.startFetchingProfileData()
    
    navController = self.navigationController
    navBar = navController?.navigationBar
    navBar?.isTranslucent = false
    self.navigationItem.title = kNavigationBarTitle
    
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return self.profileArrayList.count
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return kProfileItemCount;
  }
    
func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    return UITableView.automaticDimension
    }
    
func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    return UITableView.automaticDimension
    }
  
override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = "Profile of " + self.profileArrayList[section].userName + " with Profile Id as " + self.profileArrayList[section].userId
        return title
    }
  
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var textToShow:String = ""
   let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath)
    switch indexPath.row {
    case 0:
        textToShow =  "USERID - " + self.profileArrayList[indexPath.section].userId
    case 1:
        textToShow =  "USERNAME - " + self.profileArrayList[indexPath.section].userName
    case 2:
        textToShow =  "SUMMARY - " + self.profileArrayList[indexPath.section].summary
    case 3:
        textToShow =  "SKILLS - " + self.profileArrayList[indexPath.section].topics
    case 4:
        textToShow =  "COMPANY - " + self.profileArrayList[indexPath.section].company
    case 5:
        textToShow =  "ROLES - " + self.profileArrayList[indexPath.section].role
    case 6:
        textToShow =  "JOINING DATE - " + self.profileArrayList[indexPath.section].joiningDate
    case 7:
        textToShow =  "RESPONSIBILITIES - " + self.profileArrayList[indexPath.section].responsibilities
    case 8:
        textToShow =  "ACHEIVEMENTS - " + self.profileArrayList[indexPath.section].acheivements
    default:
        textToShow = "Error in reading profile data"
    }
    cell.textLabel?.lineBreakMode = .byWordWrapping
    cell.textLabel?.numberOfLines = 0
    cell.textLabel?.text=textToShow
   // Configure the cell...
   
   return cell
   }
  
}

extension ProfileListTableViewController:PresenterToProfileViewProtocol{
  
  func showProfileData(modelArray profileArray: Array<Profile>) {
    DispatchQueue.main.async {
        self.removeSpinner()
        self.profileArrayList = profileArray
        self.tableView.reloadData()
    }
  }
  
  func showError() {
    DispatchQueue.main.async {
        self.removeSpinner()
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching Profile Data", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
  }
}

var viewSpinner : UIView?
extension UIViewController {
    func showSpinner(onView : UIView) {
        let spinnerView = UIView.init(frame: onView.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let loadingActivityIndicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.gray)
        loadingActivityIndicator.startAnimating()
        loadingActivityIndicator.center = spinnerView.center
        
        DispatchQueue.main.async {
            spinnerView.addSubview(loadingActivityIndicator)
            onView.addSubview(spinnerView)
        }
        viewSpinner = spinnerView
    }
    
    func removeSpinner() {
        DispatchQueue.main.async {
            viewSpinner?.removeFromSuperview()
            viewSpinner = nil
        }
    }
}
