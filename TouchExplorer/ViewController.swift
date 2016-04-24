//
//  ViewController.swift
//  TouchExplorer
//
//  Created by Suresh Koppisetti on 4/23/16.
//  Copyright © 2016 tybr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messagesLabel: UILabel!
    @IBOutlet weak var tapsLabel: UILabel!
    @IBOutlet weak var touchesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    /*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    */
    
    func updateLablesFromTouches(touches: NSSet!){
        let touch = touches.anyObject() as! UITouch
        let numTaps = touch.tapCount
        let tapsMessage = "\(numTaps) taps detected"
        tapsLabel.text = tapsMessage
        
        let numTouches = touches.count
        let touchMsg = "\(numTouches) touches detected"
        touchesLabel.text = touchMsg
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        messagesLabel.text = "Touches Began"
        updateLablesFromTouches(event?.allTouches())
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        messagesLabel.text = "Touches Cancelled"
        updateLablesFromTouches(event?.allTouches())
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        messagesLabel.text = "Touches Ended"
        updateLablesFromTouches(event?.allTouches())
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        messagesLabel.text = "Drag Detected"
        updateLablesFromTouches(event?.allTouches())
    }

}

