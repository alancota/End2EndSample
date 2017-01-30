//
//  MASMainViewController.swift
//  Sample End2End
//
//  Created by Alan Cota on 1/30/17.
//  Copyright © 2017 CA Technologies. All rights reserved.
//

import UIKit


/**
 * An example view controller with a background and some suggestions
 * on what to do to get going.
 */
class MASMainViewController: UIViewController
{
    // MARK: IBOutlets
    
    @IBOutlet var activityIndicatorView : UIActivityIndicatorView!
    @IBOutlet var appNameLabel : UILabel!
    
    
    // MARK: Lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        debugPrint("viewDidLoad called")
        
        //
        // Application Name Label
        //
        let appName: String = Bundle.main.infoDictionary!["CFBundleName"] as! String
        self.appNameLabel.text = appName
        
        //
        // Start activity indicator
        //
        self.activityIndicatorView.startAnimating()
        
        //
        // Begin the MAS framework
        //
        MAS.start({(completed: Bool, error: Error?) -> () in
            
            let message = String(format: "MAS.start succeeded: %@", completed ? "Yes" : "No")
            
            debugPrint(message)
            
            //
            // Stop activity indicator
            //
            self.activityIndicatorView.stopAnimating()
            
            //
            // Handle error
            //
            if(error != nil)
            {
                let alertController = UIAlertController(title: "MAS.start Error", message: error!.localizedDescription, preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(defaultAction)
                
                let wipeAction = UIAlertAction(title: "Wipe local cache", style: .default, handler:{(alert: UIAlertAction!) in
                    
                    let currentDevice:MASDevice? = MASDevice.current()
                    if(currentDevice != nil)
                    {
                        currentDevice!.resetLocally()
                    }
                })
                
                alertController.addAction(wipeAction)
                
                self.present(alertController, animated: true, completion: nil)
                
                return
            }
            
            //
            // Handle success
            //
            
            let alertController = UIAlertController(title: "MAS.start Succeeded", message: "SDK started successfully!!", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
        })
    }
    
    
    override func didReceiveMemoryWarning()
    {
        //
        // We recommend implementing this method in all view controllers (or
        // a common UIViewController superclass of all your view controllers).
        //
        // Seeing this called can save you much time in the rare but painful case
        // that it happens.  It certainly doesn't hurt to do it.
        //
        
        debugPrint("didReceiveMemoryWarning called")
    }
    
    
    override var preferredStatusBarStyle : UIStatusBarStyle
    {
        //
        // Just making the status bar light so it can be seen against the
        // darker background
        //
        return .lightContent
    }
}
