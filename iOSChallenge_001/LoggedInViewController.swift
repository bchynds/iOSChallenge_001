//
//  LoggedInViewController.swift
//  iOSChallenge_001
//
//  Created by Brian Hynds on 8/16/14.
//  Copyright (c) 2014 Brian C. Hynds. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {

    @IBAction func goBackButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView.userInteractionEnabled = true
        
        var tapGesture = UITapGestureRecognizer(target:self, action:"myTapMethod")
        myImageView.addGestureRecognizer(tapGesture)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func myTapMethod() {
        var helloWorldAlert: UIAlertView = UIAlertView(title:nil , message: "Hello World!", delegate: self, cancelButtonTitle: "Close")
        helloWorldAlert.show()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
