//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Amit Kondhalkar on 7/21/16.
//  Copyright © 2016 AmitK. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSSpeechSynthesizerDelegate {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override var representedObject: AnyObject? {
//        didSet {
//        // Update the view, if already loaded.
//        }
//    }
    let speechSynthesizer = NSSpeechSynthesizer();

    @IBOutlet var textView : NSTextView!;
    @IBOutlet var speakButton : NSButton!;
    @IBOutlet var stopButton: NSButton!;
    
    @IBAction func speakButtonClicked(sender : NSButton){
//        print("I should speak \(textView.string)");
        if(!speechSynthesizer.speaking){
            startedSpeaking();
            if let contents = textView.string {
                speechSynthesizer.startSpeakingString(contents);
            } else {
                speechSynthesizer.startSpeakingString("The document is empty.");
            }
        }
    }
    
    optional func speechSynthesizer(sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool) {
        stoppedSpeaking();
    }
    
    func startedSpeaking(){
        speakButton.enabled = false;
        stopButton.enabled = true;
    }
    
    func stoppedSpeaking(){
        speakButton.enabled = true;
        stopButton.enabled = false;
    }
    
    @IBAction func stopButtonClicked(sender : NSButton){
//        print("The stop button was clicked");
        if(speechSynthesizer.speaking){
            stoppedSpeaking();
            speechSynthesizer.stopSpeaking();
            startedSpeaking();
        }
    }
    
    var contents : String? {
        get {
            return textView.string;
        }
        set {
            textView.string = newValue;
        }
    }
}

