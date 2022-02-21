//
//  ViewController.swift
//  My Great App
//
//  Created by Mario Guzman on 9/6/20.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func topic1Help(_ sender: Any)
    {
        self.openHelpBookFor(anchor: "Topic1")
    }
    
    @IBAction func topic2Help(_ sender: Any)
    {
        self.openHelpBookFor(anchor: "Topic2")
    }
    
    @IBAction func topic3Help(_ sender: Any)
    {
        self.openHelpBookFor(anchor: "Topic3")
    }
    
    private func openHelpBookFor(anchor: String)
    {
        if  let bookName = Bundle.main.object(forInfoDictionaryKey: "CFBundleHelpBookName") as? String {
            NSHelpManager.shared.openHelpAnchor(NSHelpManager.AnchorName(anchor), inBook: NSHelpManager.BookName(bookName))
            
        }
    }
}

