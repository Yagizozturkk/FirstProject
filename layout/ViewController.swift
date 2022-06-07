//
//  ViewController.swift
//  layout
//
//  Created by Yagiz Ozturk on 25.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nickname: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var sifreyanlis: UILabel!
    
    var alinannick = ""
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        nickname.text = "Nickname"
        password.text = "Password"
    }
    override func viewDidDisappear(_ animated: Bool) {
        nickname.text = ""
        password.text = ""
    }
    override func viewWillAppear(_ animated: Bool) {
        nickname.text = ""
        password.text = ""
        sifreyanlis.text = ""
        super.viewWillAppear(animated)
    }
    @IBAction func Login(_ sender: Any) {
        
        if password.text == String(1234) {
        alinannick = nickname.text!
            performSegue(withIdentifier: "tosecondpage", sender: nil)
        }else{
            sifreyanlis.text = "Sifre yanlis!"
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tosecondpage"{
            let destination = segue.destination as! secondviewcont
            destination.nick = alinannick
            destination.ciktinick = alinannick
        }
    }
    @IBAction func signup(_ sender: Any) {
    }
}
    

