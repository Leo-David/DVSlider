//
//  ViewController.swift
//  DVSlider
//
//  Created by jacob on 2018/3/24.
//  Copyright © 2018年 david. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dataSource = ["title","title2","title2","title2","title2","title2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initWitFrame()
    }
    
    private func initWitFrame(){
        let tableview = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 700))
        tableview.delegate = self;
        tableview.dataSource = self;
        DVSliderManager.sharedInstance.creatSlideView(vc:self,title:["商品1","商品2","商品3"])
        //        self.view.addSubview(tableview)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let iderntify:String = "swiftCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: iderntify)
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCellStyle.default
                , reuseIdentifier: iderntify);}
        cell?.textLabel?.text = self.dataSource[indexPath.section]
        cell?.backgroundColor = UIColor.gray
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("你选中了" )
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
}

