//
//  DetailViewController.swift
//  DayTwo
//
//  Created by Jason Larsen on 7/10/15.
//  Copyright © 2015 Heartbit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    var entry: Entry? {
        didSet {
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let entry = entry {
            textView?.text = entry.text
            imageView?.image = entry.image
            
            let formatter = NSDateFormatter()
            formatter.dateStyle = .MediumStyle
            title = formatter.stringFromDate(entry.date)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        textView.textContainerInset = UIEdgeInsetsMake(20, 20, 20, 20)
    }
    
    @IBAction func cameraButtonTapped() {
        let alert = UIAlertController(title: "Select Post Photo", message: nil, preferredStyle: .ActionSheet)
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.modalPresentationStyle = .CurrentContext
        
        let libraryAction = UIAlertAction(title: "Photo Library", style: .Default) { _ in
            picker.sourceType = .PhotoLibrary
            self.presentViewController(picker, animated: true, completion: nil)
        }
        
        let cameraAction = UIAlertAction(title: "Take Photo", style: .Default) { _ in
            picker.sourceType = .Camera
            self.presentViewController(picker, animated: true, completion: nil)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        
        alert.addAction(libraryAction)
        alert.addAction(cameraAction)
        alert.addAction(cancelAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        entry?.image = image
        imageView.image = image
        self.dismissViewControllerAnimated(true, completion: nil)
        saveEntry()
    }
    
    func textViewDidChange(textView: UITextView) {
        entry?.text = textView.text
        saveEntry()
    }
    
    func saveEntry() {
        guard let entry = entry,
            context = entry.managedObjectContext else {
            return
        }
        
        context.performBlock {
            do {
                try context.save()
            }
            catch {
                print("Error saving: \(error)")
            }
        }
    }
}

