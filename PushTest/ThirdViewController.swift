//
//  ThirdViewController.swift
//  PushTest
//
//  Created by KimHyoung on 2016. 5. 19..
//  Copyright © 2016년 KimHyoung. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBAction func send(sender: AnyObject) {
        
        NSNotificationCenter.defaultCenter().postNotificationName("Hello", object: nil)
    }
    @IBOutlet weak var myLabel: UILabel!
    
    var textVal:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // UIApplication 을 통해 AppDelegate 타입으로 변환
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        myLabel.text = appDelegate.textValue
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
