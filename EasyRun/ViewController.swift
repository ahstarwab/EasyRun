//
//  ViewController.swift
//  EasyRun
//
//  Created by sgcs on 2018. 4. 4..
//  Copyright © 2018년 sgcs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doExecuteOtherApp(_ sender: UIButton) {
        //openKakao()
        openMaps()
        //openMessenger()
        //openGoogleWebsite()
    }
    
    func openKakao() {
        let kakaoStory = "kakaostory://"
        let kakaoStoryURL = NSURL(string: kakaoStory)
        
        if UIApplication.shared.canOpenURL(kakaoStoryURL! as URL) {
            UIApplication.shared.openURL(kakaoStoryURL! as URL)
        }
        else {
            print("No kakaostory installed.")
        }
    }
    
    func openMessenger(){
        let myUrl = "sms:"
        
        if let url = URL(string: "\(myUrl)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    func openMaps() {
        //let myUrl = "http://maps.apple.com/?q=newyork"
        //let myUrl = "http://maps.apple.com/?q"
        let myUrl = "comapplemaps://"
        
        if let url = URL(string: "\(myUrl)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    func openGoogleWebsite(){
        let myUrl = "http://www.google.com"
        
        if let url = URL(string: "\(myUrl)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}

