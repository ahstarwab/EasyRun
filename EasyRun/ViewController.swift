//
//  ViewController.swift
//  EasyRun
//
//  Created by sgcs on 2018. 4. 4..
//  Copyright © 2018년 sgcs. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.white
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doExecuteCall(_ sender: UIButton) {
        openCall()
    }
    
    @IBAction func doExecuteMessage(_ sender: UIButton) {
        openMessenger()
    }
    
    @IBAction func doExecuteMap(_ sender: UIButton) {
        openMaps()
    }
    
    @IBAction func doExecuteAppstore(_ sender: UIButton) {
            openAppstore()
    }
    
    func openKakao() {
        let kakaoStory = "kakaotalk://"
        let kakaoStoryURL = NSURL(string: kakaoStory)
        
        if UIApplication.shared.canOpenURL(kakaoStoryURL! as URL) {
            UIApplication.shared.openURL(kakaoStoryURL! as URL)
        }
        else {
            print("No kakaostory installed.")
        }
    }
    
    func test(){
        let alert = UIAlertController(title: "Error..!", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        let settings = UIAlertAction(title: "settings", style: .default, handler: { (action) -> Void in
            UIApplication.shared.open(URL(string:"App-Prefs:root=GENERAL")!, options: [:], completionHandler: nil)
        })
        
        alert.addAction(settings)
        self.present(alert,animated: true, completion: nil)
    }
    
    func openMessenger(){
        let myUrl = "sms:"
        
        if let url = URL(string: "\(myUrl)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func doExecuteFacetime(_ sender: UIButton) {
        openFacetime()
    }
    
    @IBAction func doExecuteCalander(_ sender: UIButton) {
        openCalender()
    }
    
    func openFacetime(){
        let myUrl = "facetime:"
        
        if let url = URL(string: "\(myUrl)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    func openAppstore(){
        let myUrl = ""
        
        if let url = URL(string: "\(myUrl)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    func openCalender(){
        let myUrl = ""
        
        if let url = URL(string: "\(myUrl)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    func openCall(){
        let myUrl = "tel:"
        
        if let url = URL(string: "\(myUrl)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    func openMaps() {
        //let myUrl = "http://maps.apple.com/?q=newyork"
        let myUrl = "http://maps.apple.com/?q"
        //let myUrl = "comapplemaps://"
        
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
    
    @IBAction func pageChanged(_ sender: UIPageControl) {
    }
    
}

