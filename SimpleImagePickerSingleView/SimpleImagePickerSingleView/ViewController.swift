//
//  ViewController.swift
//  SimpleImagePickerSingleView
//
//  Created by Bronson Dupaix on 3/3/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let imagePicker = UIImagePickerController()

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Step 1 -- Add protocols 
        
        // Step 2 -- create instance of UI Controller 
        
        // Step 3 -- assign delegate to self
        imagePicker.delegate = self 
    }
    
    @IBAction func cameraButtonTapped(sender: UIBarButtonItem) {
        
       self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        imageView.image = image
        
        
        picker.dismissViewControllerAnimated(true, completion: nil) 
        
    }
    

}

