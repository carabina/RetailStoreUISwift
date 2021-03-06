//
//  AppDelegate.swift
//  RetailStoreUISwift
//
//  Created by thierryH24 on 29/04/2018.
//  Copyright © 2018 thierryH24. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    var mainWindowController : MainWindowController?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        initializeLibraryAndShowMainWindow()
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationShouldTerminateAfterLastWindowClosed (_ sender: NSApplication) -> Bool
    {
        return true
    }
    
    func initializeLibraryAndShowMainWindow() {
        
        mainWindowController = MainWindowController()
        mainWindowController?.showWindow(self)
    }

}

