//
//  ViewController.swift
//  Button demo_1090308
//
//  Created by Nick on 2020/3/8.
//  Copyright © 2020 NewIdea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var show: UIImageView!
    
    @IBAction func cat(_ sender: Any) {
        show.image = UIImage(named: "哆啦a夢")
    }
    
    @IBAction func girl(_ sender: Any) {
        show.image = UIImage(named: "小丸子")
    }
    
    @IBAction func pig(_ sender: Any) {
        show.image = UIImage(named: "粉紅豬小妹")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //監聽是否觸發home鍵掛起程序.
        NotificationCenter.default.addObserver(self, selector: #selector(self.applicationWillResignActive), name: UIApplication.willResignActiveNotification, object: nil)
        
        
        ///監聽是否重新進入程序程序.
        NotificationCenter.default.addObserver(self, selector: #selector(self.applicationDidBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
 
    @objc func applicationWillResignActive(){
        show.image = UIImage(named: "")
    }
    
    
    @objc func applicationDidBecomeActive(){
        show.image = UIImage(named: "")
    }
    
}

