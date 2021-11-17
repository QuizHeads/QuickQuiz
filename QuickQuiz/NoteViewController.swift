//
//  NoteViewController.swift
//  QuickQuiz
//
//  Created by Pham Hieu on 11/16/21.
//

import UIKit
import Parse

class NoteViewController: UIViewController {

    @IBOutlet weak var noteTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onUpdateButton(_ sender: Any) {
        
        let note = PFObject(className:"Notes")
        noteTextView.text = note["note"] as? String
        note["note"] = noteTextView.text!
        note["author"] = PFUser.current()!
        
        note.saveInBackground{ (success, error) in
            if success{
                self.dismiss(animated: true, completion: nil)
                print("saved.")
            }
            else{
                print("error!")
            }
        }
        
    }
    

}
