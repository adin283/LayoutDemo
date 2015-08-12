//
//  HistoryViewController.swift
//  LayoutDemo
//
//  Created by 祝文博 on 15/8/12.
//  Copyright (c) 2015年 KevinLab. All rights reserved.
//

import UIKit

class HistoryViewController: UITableViewController {

    var didSetupConstraints: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "历史"
        
        self.tableView?.registerClass(HelpHistoryCell.self, forCellReuseIdentifier: "HelpHistoryCell")
        self.tableView?.backgroundColor = UIColor(hex: 0xf2f5f9)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 10
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 1
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return HelpHistoryCell.cellHeight()
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: HelpHistoryCell = tableView.dequeueReusableCellWithIdentifier("HelpHistoryCell") as! HelpHistoryCell
        
        cell.typeImageView.image = UIImage(named: "icon_content_buy")
        cell.titleLabel.text = "肯德基全家桶雪顶咖啡"
        
        cell.timeImageView.image = UIImage(named: "icon_time_blue")
        cell.timeLabel.text = "2015-07-31 02:16~2015-07-31 02:20"
        
        cell.locationImageView.image = UIImage(named: "icon_location_blue")
        cell.locationLabel.text = "余杭区文一西路998号海创园18号楼708室"
        
        cell.requireImageView.image = UIImage(named: "icon_require_blue")
        cell.requireLabel.text = "雪顶咖啡不要溢出来，全家桶的可乐不加冰"
        
        cell.avatorImageView.image = UIImage(named: "icon_content_buy")
        cell.nameLabel.text = "昂他妹"
        cell.phoneLabel.text = "13191491234"
        cell.publishTimeLabel.text = "发布时间 2015-08-06 01:21:30"
        
        cell.statusLabel.text = "顺利完成"
        cell.moneyLabel.text = "获得佣金"
        cell.amountLabel.text = "￥20"
        
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 5.0
        
        cell.backgroundColor = UIColor.whiteColor();
        
        cell.setNeedsUpdateConstraints()
        
        return cell
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10.0;
    }
    
    // MARK: - Private
    
    func filterButtonPressed(button: UIButton) {
        NSLog("filterButtonPressed")
    }

}
