//
//  SecondViewController.swift
//  PushTest
//
//  Created by KimHyoung on 2016. 5. 19..
//  Copyright © 2016년 KimHyoung. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextViewController(sender: AnyObject) {
        if let svc = self.storyboard?.instantiateViewControllerWithIdentifier("etcview") {
            self.navigationController?.pushViewController(svc, animated: true)
        }
    }
    
    @IBAction func nextWithSegue(sender: AnyObject) {
        performSegueWithIdentifier("thirdsegue", sender: self)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}
