//
//  RegisterViewController.swift
//  Pro3
//
//  Created by R95 on 02/02/24.
//

import UIKit

class RegisterViewController: UIViewController,
                              UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    @IBOutlet weak var textFildeOutlet: UITextField!
    @IBOutlet weak var textFildeOutlet1: UITextField!
    @IBOutlet weak var textFildeOutlet2: UITextField!
    @IBOutlet weak var textFildeOutlet3: UITextField!
    @IBOutlet weak var textFildeOutlet4: UITextField!
    @IBOutlet weak var imageOutlet: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        textFilde()
    }
    
    func textFilde() {
        textFildeOutlet.backgroundColor = UIColor(red: 249/255, green: 250/255, blue: 250/255, alpha: 1)
        textFildeOutlet.layer.cornerRadius = 10
        
        textFildeOutlet1.backgroundColor = UIColor(red: 249/255, green: 250/255, blue: 250/255, alpha: 1)
        textFildeOutlet1.layer.cornerRadius = 10
        
        textFildeOutlet2.backgroundColor = UIColor(red: 249/255, green: 250/255, blue: 250/255, alpha: 1)
        textFildeOutlet2.layer.cornerRadius = 10
        
        textFildeOutlet3.backgroundColor = UIColor(red: 249/255, green: 250/255, blue: 250/255, alpha: 1)
        textFildeOutlet3.layer.cornerRadius = 10
        
        textFildeOutlet4.backgroundColor = UIColor(red: 249/255, green: 250/255, blue: 250/255, alpha: 1)
        textFildeOutlet4.layer.cornerRadius = 10
        
        imageOutlet.layer.cornerRadius = 10
    }
    
    func signupButton(title: String,message: String) {
        let a = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        present(a, animated: true)
    }
    
    func signupButton(title1: String,message1: String) {
        let a = UIAlertController(title: title1, message: message1, preferredStyle: .actionSheet)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        present(a, animated: true)
    }
    
    @IBAction func signupAction(_ sender: Any) {
        if textFildeOutlet.text == "" && textFildeOutlet1.text == "" && textFildeOutlet2.text == "" && textFildeOutlet3.text == "" && textFildeOutlet4.text == "" {
            signupButton(title: "Error!", message: "Fill All Detail")
        }
        else if textFildeOutlet.text == "" {
            signupButton(title: "Error!", message: "Enter the Fst Name")
        }
        else if textFildeOutlet1.text == "" {
            signupButton(title: "Error!", message: "Enter the Lst Name")
        }
        else if textFildeOutlet2.text == "" {
            signupButton(title: "Error!", message: "Enter the Email")
        }
        else if textFildeOutlet3.text == "" {
            signupButton(title: "Error!", message: "Enter the Password")
        }
        else if textFildeOutlet4.text == "" {
            signupButton(title: "Error!", message: "Enter the ConformPassword")
        }
        else {
            signupButton(title: "''Save''", message: "All Data Save")
        }
        
        if textFildeOutlet3.text == textFildeOutlet4.text {
            
        }
        else {
            signupButton(title1: "Error!", message1: "Enter the Same Password")
        }
    }
    
    
    @IBAction func uploadPhotoAction(_ sender: Any) {
        upload()
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageOutlet.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        dismiss(animated: true)
    }
    
    func upload() {
        let b = UIAlertController(title: "Upload Photo", message: "", preferredStyle: .alert)
        b.addAction(UIAlertAction(title: "Camara", style: .default))
        b.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
            let b = UIImagePickerController()
            b.sourceType = .photoLibrary
            b.delegate = self
            b.allowsEditing = true
            self.present(b, animated: true)
        }))
        b.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        present(b, animated: true)
        
    }
}
