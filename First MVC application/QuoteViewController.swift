//
//  QuoteViewController.swift
//  First-MVC-application
//
//  Created by Igor Shukyurov on 16/05/2019.
//  Copyright © 2019 Igor Shukyurov. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    // MARK: - Model
    var modelController: ModelController!

    // MARK: - ViewController logic
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        let quote = modelController.quote
        quoteLabel.text = quote.text
        authorLabel.text = quote.author
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let editViewController = segue.destination as? EditQuoteViewController {
            editViewController.modelController = modelController
        }
    }
}
