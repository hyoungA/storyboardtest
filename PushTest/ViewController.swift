//
//  ViewController.swift
//  PushTest
//
//  Created by KimHyoung on 2016. 5. 18..
//  Copyright © 2016년 KimHyoung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var switchValue: Bool = false;

    @IBOutlet weak var myTextField: UITextField!
    // 스토리 보드에서 이 함수를 찾아낼 수 있다.
    @IBAction func unwindToViewController(segue: UIStoryboardSegue){
    }
    
    @IBAction func onSwitch(sender: AnyObject) {
        let updateSwitch = sender as! UISwitch
        
        if (updateSwitch.on) {
            switchValue = true
        }
        else {
            switchValue = false
        }
    }
    
    // 백그라운드를 빨간색으로 변경한다.
    func method(notification: NSNotification) {
        self.view.backgroundColor = UIColor.redColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // noti 를 observe 하고 있다가 발생하면 method 를 호출해서 배경색을 바꿔준다.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(method(_:)), name: "Hello", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let svc = segue.destinationViewController as? SecondViewController {
            svc.textFieldVal = myTextField.text!
            svc.switchVal = switchValue
        }
    }

}

