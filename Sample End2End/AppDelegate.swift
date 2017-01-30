//
//  AppDelegate.swift
//  Sample End2End
//
//  Created by Alan Cota on 1/30/17.
//  Copyright © 2017 CA Technologies. All rights reserved.
//

import UIKit

/**
 * The UIApplicationDelegate protocol defines methods that are called by the singleton UIApplication
 * object in response to important events in the lifetime of your app.
 *
 * The app delegate works alongside the app object to ensure your app interacts properly with the
 * system and with other apps. Specifically, the methods of the app delegate give you a chance to
 * respond to important changes. For example, you use the methods of the app delegate to respond to
 * state transitions, such as when your app moves from foreground to background execution, and to
 * respond to incoming notifications. In many cases, the methods of the app delegate are the only
 * way to receive these important notifications.
 */


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

