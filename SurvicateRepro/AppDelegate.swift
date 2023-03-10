//
//  AppDelegate.swift
//  SurvicateRepro
//
//  Created by Gordon Tucker on 1/9/23.
//

import UIKit
import Survicate

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    static let janeWorkspaceKey = "SET_JANES_WORKSPACE_KEY_HERE"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        try? SurvicateSdk.shared.setWorkspaceKey(AppDelegate.janeWorkspaceKey)
        SurvicateSdk.shared.initialize()
        
        setTableViewAppearance()
        
        return true
    }

    func setTableViewAppearance() {
        // We use the .appearance() APIs to set up our tableviews the way we prefer to use them. It appears Survicate does not work propertly if this property is set:
        UITableView.appearance().tableHeaderView = .init(frame: .init(x: 0, y: 0, width: 0, height: CGFloat.leastNonzeroMagnitude))
    }
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

