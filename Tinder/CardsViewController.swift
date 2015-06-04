//
//  CardsViewController.swift
//  Tinder
//
//  Created by Baris Taze on 6/3/15.
//  Copyright (c) 2015 Baris Taze. All rights reserved.
//

import UIKit
import QuartzCore

class CardsViewController: UIViewController {

    @IBOutlet var cardView: DraggableImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "nav_bar")
        let imageView = UIImageView(frame: CGRectMake(0, 0, 375, 44))
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        // set aspects to aspect-fill
        imageView.image = image
        self.navigationItem.titleView = imageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onImagePan(sender: AnyObject) {
        println("pan")
    }

    @IBAction func onImageTap(sender: AnyObject) {
        self.performSegueWithIdentifier("profile.segue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let vc = segue.destinationViewController as! ProfileViewController
        vc.profileImage = self.cardView.cardImageView.image
        // Pass the selected object to the new view controller.
    }
}

