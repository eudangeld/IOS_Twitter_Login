//
//  ViewController.swift
//  IOS_Twitter_Login

import UIKit
import TwitterKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        let logbutton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        logbutton.setTitle("Log on twitter", for: .normal)
        logbutton.addTarget(self, action: #selector(log), for: .touchUpInside)
        logbutton.backgroundColor = .black
        self.view.addSubview(logbutton)
    }
    
    
     @objc func log(){
        TWTRTwitter.sharedInstance().logIn(completion: { (session, error) in
            if (session != nil) {
                print("signed in as \(String(describing: session?.authToken))");
            } else {
                print("error: \(error?.localizedDescription)");
            }
        })
    }
    
    
    
    

}

