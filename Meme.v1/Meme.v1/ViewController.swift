//
//  ViewController.swift
//  Meme.v1
//
//  Created by Alexis Laston on 6/5/20.
//  Copyright © 2020 Lillie VotBot. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    
    @IBOutlet weak var imagePickerView: UIBarButtonItem!
    
     override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        override func viewWillAppear(_ animated: Bool) {
    cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
        }
    
        @IBAction func album(_ sender: UIButton){
            let nextController = UIImagePickerController()
            present(nextController, animated: true, completion: nil)
        }
    @IBAction func pickAnImageFromCamera(_ sender: Any) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            present(imagePicker, animated: true, completion: nil)
       }
    }


    



