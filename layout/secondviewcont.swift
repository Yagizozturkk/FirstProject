//
//  secondviewcont.swift
//  layout
//
//  Created by Yagiz Ozturk on 25.05.2022.
//

import UIKit

class secondviewcont: UIViewController {
    
    @IBOutlet weak var nicksonuc: UILabel!
    
    @IBOutlet weak var girilennick: UILabel!
    
    var ciktinick = ""
    var nick = ""
    var nicklow = ""
    var harfler = ""
    var kucukharfler = ""
    override func viewDidLoad() {
        super.viewDidLoad()
           
        nicklow = nick.lowercased()
        let arrset = Set(nicklow)
        let arr = Array(nicklow)
        
        for item in arrset{
            var count = 0
            for item1 in arr{
                if item == item1 {
                    count += 1
                }
            }
            if harfler.count > 0 {
                harfler += ","
            }
            
            harfler += (String(count) + String(item))
            kucukharfler = harfler.lowercased()
        }
        
        girilennick.text = "Girilen Nickname  \n \(ciktinick)"
        nicksonuc.text! = "Characters in the nickname  \n\(kucukharfler)"
    }
    
}

