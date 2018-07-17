//
//  VideoViewContoller.swift
//  Wellspring Church
//
//  Created by Wellspring Church on 7/17/18.
//  Copyright © 2018 Wellspring Church. All rights reserved.
//

import UIKit
import WebKit

class VideoViewContoller: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var VideoWebView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        VideoWebView = WKWebView(frame: .zero, configuration: webConfiguration)
        VideoWebView.uiDelegate = self
        view = VideoWebView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "//vimeo.com/user69183688")
        let myRequest = URLRequest(url: myURL!)
        VideoWebView.load(myRequest)
    }
}
