//
//  SecondViewController.swift
//  PushTest
//
//  Created by KimHyoung on 2016. 5. 19..
//  Copyright © 2016년 KimHyoung. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var switchVal:Bool = false
    var textFieldVal:String = ""
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstLabel.text = textFieldVal
        
        if switchVal == true{
            secondLabel.text = "True"
        }
        else {
            secondLabel.text = "False"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        print("viewDidDisappear")
    }
    
    override func viewDidAppear(animated: Bool) {
        print("viewDidAppear")
    }
    
    
//    @IBAction func nextViewController(sender: AnyObject) {
//        if let svc = self.storyboard?.instantiateViewControllerWithIdentifier("etcview") {
//            self.navigationController?.pushViewController(svc, animated: true)
//        }
//    }
    @IBAction func nextViewController(sender: AnyObject) {
        if let svc = self.storyboard?.instantiateViewControllerWithIdentifier("thirdview") {
            self.navigationController?.pushViewController(svc, animated: true)
            
            let tvc = svc as! ThirdViewController
            tvc.textVal = "TEST2"
        }
        

    }
    
    @IBAction func nextWithSegue(sender: AnyObject) {
        performSegueWithIdentifier("thirdsegue", sender: self)
    }
}
