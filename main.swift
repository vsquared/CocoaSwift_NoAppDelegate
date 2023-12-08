//
//  main.swift
//  wnd_noAppDelegate
//
//  Created by vsquared.
//

import Cocoa

// **** Menu **** //
 let menuBar = NSMenu()
 let menuBarItem = NSMenuItem()
 let app = NSApplication.shared
 menuBar.addItem(menuBarItem)
 app.mainMenu = menuBar
 let appMenu = NSMenu()
 let quitMenuItem = NSMenuItem( title: "Quit", action:#selector(NSApplication.terminate), keyEquivalent: "q")
 appMenu.addItem(quitMenuItem)
 menuBarItem.submenu = appMenu

// **** Window **** //
let _wndW : CGFloat = 400
let _wndH : CGFloat = 400

let window = NSWindow(contentRect:NSMakeRect(0,0,_wndW,_wndH),styleMask:[.titled, .closable, .miniaturizable], backing:.buffered, defer:false)
window.center()
window.title = "Swift Test Window"
window.makeKeyAndOrderFront(window)

let application = NSApplication.shared
application.run()

