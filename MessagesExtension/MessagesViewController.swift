//
//  MessagesViewController.swift
//  MessagesExtension
//
//  Created by Alexander Mason on 11/5/16.
//  Copyright © 2016 Alexander Mason. All rights reserved.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    var quote: String!
    
    @IBOutlet var quoteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //When button is pressed hit API for random quote, then add that as message
    @IBAction func sendQuote(_ sender: AnyObject) {
        
        QuoteAPI.getQuotes { (dictionary) in
            
            self.quote = dictionary["quoteText"] as! String
            
            //OperationQueue.main.addOperation {
                self.activeConversation?.insertText(self.quote, completionHandler: { (error) in
                    if (error != nil) {
                        
                    }
                
                })
                
            //}
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // MARK: - Conversation Handling
    
    override func willBecomeActive(with conversation: MSConversation) {
        
    }
    
    override func didResignActive(with conversation: MSConversation) {
        
        
    }
    
    override func didReceive(_ message: MSMessage, conversation: MSConversation) {
        
        
    }
    
    override func didStartSending(_ message: MSMessage, conversation: MSConversation) {
        
    }
    
    override func didCancelSending(_ message: MSMessage, conversation: MSConversation) {
        
        
    }
    
    override func willTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        
        
    }
    
    override func didTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        
    }
    
}
