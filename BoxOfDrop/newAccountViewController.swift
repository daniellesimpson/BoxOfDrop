//
//  newAccountViewController.swift
//  BoxOfDrop
//
//  Created by Simpson, Danielle on 8/19/16.
//  Copyright © 2016 Simpson, Danielle. All rights reserved.
//

import UIKit

class newAccountViewController: UIViewController {
    
    let weakImage = UIImage(named: "signup_1")
    let sosoImage = UIImage(named: "signup_2")
    let goodImage = UIImage(named: "signup_3")
    let greatImage = UIImage(named: "signup_4")

    @IBOutlet weak var passwordStrength: UIImageView!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func goBack(sender: UIButton) {
        navigationController!.popViewControllerAnimated(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func passwordUpdate(sender: AnyObject) {
        let characterCount = passwordField.text?.characters.count
        
        if characterCount < 4 {
            //print("weak password")
            passwordStrength.image = weakImage
        } else if characterCount < 6 {
           // print("So-So password")
            passwordStrength.image = sosoImage
        } else if characterCount < 8 {
            //print("Good password")
            passwordStrength.image = goodImage
        } else {
            //print("Great! Password")
            passwordStrength.image = greatImage
        }
    }
    
    
    
    @IBAction func actionStarter(sender: UIButton) {
        // insert Simple UIAlertController code here
        let alertController = UIAlertController(title: "", message: "Before you can complete you registration, you must accept the Dropbox Terms of Service", preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action:UIAlertAction) in
            print("you have pressed the Cancel button");
        }
        alertController.addAction(cancelAction)
        
        let agreeAction = UIAlertAction(title: "I Agree", style: .Default) { (action:UIAlertAction) in
            print("you have pressed OK button");
            self.performSegueWithIdentifier("iAgree", sender: self)
        }
        let viewTerms = UIAlertAction(title: "View Terms", style: .Default) { (action:UIAlertAction) in
            print("you have pressed OK button");
            self.performSegueWithIdentifier("viewTerms2", sender: self)

        }
        
        alertController.addAction(agreeAction)
        alertController.addAction(viewTerms)
        
        self.presentViewController(alertController, animated: true, completion:nil)
    
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
