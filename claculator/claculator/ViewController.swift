//
//  ViewController.swift
//  claculator
//
//  Created by Ryan Park on 1/26/23.
//

import Cocoa
import Foundation

class ViewController: NSViewController {
    @IBOutlet weak var number1: NSTextFieldCell!
    @IBOutlet weak var number2: NSTextFieldCell!
    @IBOutlet weak var answer: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func addition(_ sender: Any) {
        let int1=Int(number1.stringValue) ?? 0
        let int2=Int(number2.stringValue) ?? 0
        answer.stringValue=String(int1+int2)
    }
    @IBAction func subtraction(_ sender: Any){
        let int1=Int(number1.stringValue) ?? 0
        let int2=Int(number2.stringValue) ?? 0
        answer.stringValue=String(int1-int2)
    }
    @IBAction func multiplication(_ sender: Any) {
        let int1=Int(number1.stringValue) ?? 0
        let int2=Int(number2.stringValue) ?? 0
        answer.stringValue=String(int1*int2)
    }
    @IBAction func divison(_ sender: Any) {
        let int1=Double(number1.stringValue) ?? 0
        let int2=Double(number2.stringValue) ?? 0
        answer.stringValue=String(format:"%f",int1/int2)
    }
    @IBAction func NOT(_ sender: Any) {
        let int1=Int(number1.stringValue) ?? 0
        answer.stringValue=String(~int1)
    }
    @IBAction func OR(_ sender: Any) {
        let int1=Int(number1.stringValue) ?? 0
        let int2=Int(number2.stringValue) ?? 0
        answer.stringValue=String(int1|int2)
    }
    @IBAction func XOR(_ sender: Any) {
        let int1=Int(number1.stringValue) ?? 0
        let int2=Int(number2.stringValue) ?? 0
        answer.stringValue=String(int1^int2)
    }
    @IBAction func AND(_ sender: Any) {
        let int1=Int(number1.stringValue) ?? 0
        let int2=Int(number2.stringValue) ?? 0
        answer.stringValue=String(int1&int2)
    }
    @IBAction func shiftleft(_ sender: Any) {
        let int1=Int(number1.stringValue) ?? 0
        let int2=Int(number2.stringValue) ?? 0
        answer.stringValue=String(int1<<int2)
    }
    
    @IBAction func shiftright(_ sender: Any) {
        let int1=Int(number1.stringValue) ?? 0
        let int2=Int(number2.stringValue) ?? 0
        answer.stringValue=String(int1>>int2)
    }
    @IBAction func sqroot(_ sender: Any) {
        let int1=Double(number1.stringValue) ?? 0
        answer.stringValue=String(format:"%f",sqrt(int1))
    }
    @IBAction func logg10(_ sender: Any) {
        let int1=Double(number1.stringValue) ?? 0
        answer.stringValue=String(log10(int1))
    }
    @IBAction func logxy(_ sender: Any) {
        let int1=Double(number1.stringValue) ?? 0
        let int2=Double(number2.stringValue) ?? 0
        answer.stringValue=String(log(int1)/log(int2))
    }
    @IBAction func ln(_ sender: Any) {
        let int1=Double(number1.stringValue) ?? 0
        let int2=2.718281828459045
        answer.stringValue=String(log(int1)/log(int2))
    }
    @IBAction func xtopowerofy(_ sender: Any) {
        let int1=Double(number1.stringValue) ?? 0
        let int2=Double(number2.stringValue) ?? 0
        answer.stringValue=String(pow(int1,int2))
    }
    @IBAction func xsquared(_ sender: Any) {
        let int1=Double(number1.stringValue) ?? 0
        answer.stringValue=String(pow(int1,2))
    }
    @IBAction func nthroot(_ sender: Any) {
        let int1=Double(number1.stringValue) ?? 0
        let int2=Double(number2.stringValue) ?? 0
        answer.stringValue=String(pow(int2, (1/int1)))
    }
    
    
}
