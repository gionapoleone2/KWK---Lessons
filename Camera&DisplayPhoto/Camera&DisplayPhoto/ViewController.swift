//
//  ViewController.swift
//  Camera&DisplayPhoto
//
//  Created by Giovanna Napoleone on 7/28/20.
//  Copyright © 2020 Giovanna Napoleone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagePicker.delegate = self
    }
    
    @IBAction func takeSelfieTapped(_ sender: UIButton) {
        
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion:nil)
    }
    
    @IBAction func photoLibraryTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet weak var displayImage: UIImageView!
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            displayImage.image = selectedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
}

