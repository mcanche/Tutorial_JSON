//
//  ViewController.swift
//  Tutorial_JSON_Alamofire
//
//  Created by Luis Cua Catzin on 23/06/15.
//  Copyright (c) 2015 Luis Cua Catzin. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    
    @IBOutlet weak var fecha: UILabel!
    @IBOutlet weak var ipAddress: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getFecha()
        //getIP()
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func getFecha()
    {
        Alamofire.request(.GET, "http://date.jsontest.com").responseJSON()
        {
            (_, _, JSON, error) in
            if error == nil
            {
                let info =  JSON as! NSDictionary
                self.fecha.text = info["date"] as? String
                 println(JSON)
            }
                
            else
            {
                println(error)
            }
        }
    }
    
    
}

