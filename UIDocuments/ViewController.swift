//
//  ViewController.swift
//  UIDocuments
//
//  Created by ibrahim doğan on 1.04.2019.
//  Copyright © 2019 ibrahim doğan. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController, UIDocumentPickerDelegate {

    
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
            print(url)
    }
    
    func documentMenu(_ documentMenu: UIDocumentPickerViewController, didPickDocumentPicker documentPicker: UIDocumentPickerViewController) {
        print("didpicker")
    }
    
    func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
        print("cancelled")
    }
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func openDocuments(_ sender: UIButton) {
        
        let importMenu = UIDocumentPickerViewController(documentTypes: [String(kUTTypePDF)], in: .import)
        importMenu.delegate = self
        importMenu.modalPresentationStyle = .formSheet
        present(importMenu, animated: true, completion: nil)
    }
    
}

