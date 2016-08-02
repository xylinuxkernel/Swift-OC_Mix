//
//  ViewController.swift
//  Swift&OC_Mix
//
//  Created by 徐银 on 16/7/30.
//  Copyright © 2016年 徐银. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let viewcontroller1:ViewController1 = ViewController1()
    lazy var tbVC:UITableView? = {
        let tb:UITableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
        tb.delegate = self
        tb.dataSource = self
        return tb
    }()
    let data:[String] = ["swift调OC","OC调swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tbVC!)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK --
    @objc(forOCFuction)
    func forOCFuction() ->() {
        print("OC transfer Swift success ")
        let tips:UIAlertController = UIAlertController(title: "OC调用Swift", message: "ViewController", preferredStyle: UIAlertControllerStyle.Alert)
        let act:UIAlertAction = UIAlertAction(title: "确定", style: .Default, handler: nil)
        tips.addAction(act)
        self.presentViewController(tips, animated: true, completion: nil)
    }
    
    //MARK --UITableViewDelegate--
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let ideifier = "cellIdifier"
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(ideifier)
        if cell == nil{
            cell = UITableViewCell(style: .Default, reuseIdentifier: ideifier)
        }
        cell?.textLabel?.text = data[indexPath.row]
        return cell!
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0
        {
            //构造对象
            viewcontroller1.swiftTransOC(self)
        }
        else
        {
            viewcontroller1.OCTransferSwift(self)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

