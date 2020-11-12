//
//  MainWindowController.swift
//  TableFieldWrap
//
//  Created by Ken Morse on 11/12/2020.
//

import Cocoa

class MainWindowController: NSWindowController, NSTableViewDelegate {
    
    @objc var topics: [Topic] = []
    
    override var windowNibName: String {
        return "MainWindowController"
    }

    override func windowWillLoad() {
        super.windowWillLoad()

        // strings of different lengths to demonstrate wrapping and dynamic row heights
        let shortTopic = Topic()
        shortTopic.name = "viverra vitae"
        shortTopic.info = "imperdiet dui accumsan sit"
        topics.append(shortTopic)

        let longInfo = Topic()
        longInfo.name = "erat nam"
        longInfo.info = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        topics.append(longInfo)
        
        let longTopic = Topic()
        longTopic.name = "ultricies leo integer malesuada"
        longTopic.info = "Felis bibendum ut tristique et egestas quis. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et netus et."
        topics.append(longTopic)
    }
    
    // MARK: = NSTableViewDelegate
    
    func tableView(_ tableView: NSTableView, didAdd rowView: NSTableRowView, forRow row: Int) {
        Swift.print("row: \(row), fit: \(rowView.fittingSize.height)")
    }
    
}
