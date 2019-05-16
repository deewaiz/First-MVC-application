//
//  EditQuoteViewController.swift
//  First-MVC-application
//
//  Created by Igor Shukyurov on 16/05/2019.
//  Copyright © 2019 Igor Shukyurov. All rights reserved.
//

import UIKit

class EditQuoteViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorTextField: UITextField!
    
    // MARK: - Model
    var modelController: ModelController!
    
    // MARK: - ViewController logic
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let quote = modelController.quote
        quoteLabel.text = quote.text
        authorTextField.text = quote.author
    }
    
    // MARK: - Navigation
    @IBAction func saveAction(_ sender: Any) {
        let newQuote = QuoteModel(text: quoteLabel.text!, author: authorTextField.text!)
        modelController.quote = newQuote
        dismiss(animated: true, completion: nil)
    }
}
