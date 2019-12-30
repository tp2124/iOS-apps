//
//  ViewController.swift
//  photo-picker
//
//  Created by Travis Primm on 12/29/19.
//  Copyright © 2019 Travis Primm. All rights reserved.
//

/*
3 I's of delegation
    1) Indicate INTENT to conform to protocol
    2) IMPLEMENT one or more methods from the protocols
    3) INTRODUCTIONS - delegator and delegatee
 */


import UIKit

class ViewController: UIViewController,
                        UINavigationControllerDelegate,
                        UIImagePickerControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!

    @IBAction func changePictureTapped(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.delegate = self // INtroduction of the two parts of the delegate
        present(vc, animated: true, completion: nil)
    }
    
    // Implementation of the delegate protocol.
    // This specific implementation and handling is to make sure this has the proper anchor and handling for the iPad display
    // of the SHARE options command.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("Got a dictionary: \(info)")
//        for kvp in info {
//            if (kvp.key.rawValue == "UIImagePickerControllerOriginalImage"){
//                imageView.image = kvp.value as! UIImage
//            }
//        }
        imageView.image = info[.originalImage] as? UIImage
        picker.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}

