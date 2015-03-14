//
//  ViewController.swift
//  TableViewSimple
//
//  Created by GrownYoda on 3/13/15.
//  Copyright (c) 2015 yuryg. All rights reserved.
//

import UIKit

var deviceDict = [String:[String]]()



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       deviceDict["UUIDString"] = ["counter 1","Name: peripheralxxx","RSSI: -73 ","Services: HeartRate Service","Description 985F3EB6D5A8-416A-C692-C2C3645667C5"]
        
        println(deviceDict)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
            return 1
        } else{
           return 5
        }
        
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
     
        
        if section == 0{
            return "Control Panel"
        } else{
            return "985F3EB6D5A8-416A-C692-C2C3645667C5"
        }
    }

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    
        return 4
        
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()

        
        
        if (indexPath.section == 0)
        {
           cell.textLabel?.text = "Custom Designed Cell"
            
            
        } else {

            if indexPath.row == 0 {
            cell.textLabel?.text = deviceDict.keys.array[0]

            } else if indexPath.row == 1{
            
                for myString in deviceDict.values {
                    cell.textLabel?.text = "\(myString.first!) "
       //            println("Values: \(myString) ")
                }
                
                
            } else if indexPath.row == 2{
                for myString in deviceDict.values {
                    cell.textLabel?.text = "\(myString.last!) "
            //        println("Values: \(myString) ")
                }

            
            } else if indexPath.row == 3{

                for myString in deviceDict.values {
                    for lilString in myString{
                        cell.textLabel?.text = "\(lilString) "
                        
                    println("Values: \(lilString) ")
                    }
                    }

            } else if indexPath.row == 4{
                cell.textLabel?.text = "Fourth"
            } else {
                cell.textLabel?.text = "ELSE"
                
            }
            
        }


        
        return cell
        
    }
    
    
    
}

