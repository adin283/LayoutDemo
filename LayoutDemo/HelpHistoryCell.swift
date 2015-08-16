//
//  HelpHistoryCell.swift
//  LayoutDemo
//
//  Created by 祝文博 on 15/8/12.
//  Copyright (c) 2015年 KevinLab. All rights reserved.
//

import UIKit

let HelpHistoryCellHeight: CGFloat = 223.0;

class HelpHistoryCell: UITableViewCell {
    var didSetupConstraints: Bool = false
    
    lazy var typeImageView: UIImageView = {
        let tmpImageView = UIImageView()
        tmpImageView.contentMode = UIViewContentMode.ScaleAspectFit
        return tmpImageView
        }()
    
    lazy var titleLabel: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.textColor = UIColor.blackColor()
        tmpLabel.font = UIFont.systemFontOfSize(15)
        tmpLabel.textAlignment = NSTextAlignment.Left
        return tmpLabel
        }()
    
    lazy var separatorLine1Label: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.backgroundColor = UIColor(hex: 0xeeeeee)
        return tmpLabel
        }()
    
    lazy var timeImageView: UIImageView = {
        let tmpImageView = UIImageView()
        tmpImageView.contentMode = UIViewContentMode.ScaleAspectFit
        return tmpImageView
        }()
    
    lazy var timeLabel: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.textColor = UIColor.blackColor()
        tmpLabel.font = UIFont.systemFontOfSize(13)
        tmpLabel.textAlignment = NSTextAlignment.Left
        return tmpLabel
        }()
    
    lazy var locationImageView: UIImageView = {
        let tmpImageView = UIImageView()
        tmpImageView.contentMode = UIViewContentMode.ScaleAspectFit
        return tmpImageView
        }()
    
    lazy var locationLabel: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.textColor = UIColor.blackColor()
        tmpLabel.font = UIFont.systemFontOfSize(13)
        tmpLabel.textAlignment = NSTextAlignment.Left
        return tmpLabel
        }()
    
    lazy var requireImageView: UIImageView = {
        let tmpImageView = UIImageView()
        tmpImageView.contentMode = UIViewContentMode.ScaleAspectFit
        return tmpImageView
        }()
    
    lazy var requireLabel: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.textColor = UIColor(hex: 0x5f97fa)
        tmpLabel.font = UIFont.systemFontOfSize(13)
        tmpLabel.textAlignment = NSTextAlignment.Left
        return tmpLabel
        }()
    
    lazy var separatorLine2Label: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.backgroundColor = UIColor(hex: 0xeeeeee)
        return tmpLabel
        }()
    
    lazy var avatorImageView: UIImageView = {
        let tmpImageView = UIImageView()
        tmpImageView.contentMode = UIViewContentMode.ScaleAspectFit
        return tmpImageView
        }()
    
    lazy var nameLabel: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.textColor = UIColor(hex: 0x6c6c6c)
        tmpLabel.font = UIFont.systemFontOfSize(11)
        tmpLabel.textAlignment = NSTextAlignment.Left
        return tmpLabel
        }()
    
    lazy var phoneLabel: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.textColor = UIColor(hex: 0x6c6c6c)
        tmpLabel.font = UIFont.systemFontOfSize(11)
        tmpLabel.textAlignment = NSTextAlignment.Left
        return tmpLabel
        }()
    
    lazy var publishTimeLabel: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.textColor = UIColor(hex: 0x6c6c6c)
        tmpLabel.font = UIFont.systemFontOfSize(11)
        tmpLabel.textAlignment = NSTextAlignment.Left
        return tmpLabel
        }()
    
    lazy var statusContainerView: UIView = {
        [weak self] in
        let wSelf = self
        let tmpView = UIView()
        tmpView.backgroundColor = UIColor(hex: 0x5f97fa)
        tmpView.addSubview(wSelf!.statusLabel)
        tmpView.addSubview(wSelf!.moneyLabel)
        tmpView.addSubview(wSelf!.amountLabel)
        return tmpView
        }()
    
    lazy var statusLabel: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.textColor = UIColor.whiteColor()
        tmpLabel.font = UIFont.systemFontOfSize(15)
        tmpLabel.textAlignment = NSTextAlignment.Left
        return tmpLabel
        }()
    
    lazy var moneyLabel: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.textColor = UIColor(hex: 0xffd200)
        tmpLabel.font = UIFont.systemFontOfSize(11)
        tmpLabel.textAlignment = NSTextAlignment.Left
        tmpLabel.text = "佣金"
        return tmpLabel
        }()
    
    lazy var amountLabel: UILabel = {
        let tmpLabel = UILabel()
        tmpLabel.textColor = UIColor(hex: 0xffd200)
        tmpLabel.font = UIFont.systemFontOfSize(18)
        tmpLabel.textAlignment = NSTextAlignment.Left
        return tmpLabel
        }()
    
    class func cellHeight() -> (CGFloat) {
        return HelpHistoryCellHeight
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(self.typeImageView)
        self.contentView.addSubview(self.titleLabel)
        self.contentView.addSubview(self.separatorLine1Label)
        self.contentView.addSubview(self.timeImageView)
        self.contentView.addSubview(self.timeLabel)
        self.contentView.addSubview(self.locationImageView)
        self.contentView.addSubview(self.locationLabel)
        self.contentView.addSubview(self.requireImageView)
        self.contentView.addSubview(self.requireLabel)
        self.contentView.addSubview(self.separatorLine2Label)
        self.contentView.addSubview(self.avatorImageView)
        self.contentView.addSubview(self.nameLabel)
        self.contentView.addSubview(self.phoneLabel)
        self.contentView.addSubview(self.publishTimeLabel)
        self.contentView.addSubview(self.statusContainerView)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        if !self.didSetupConstraints {
            
            self.typeImageView.autoPinEdgeToSuperviewEdge(ALEdge.Left, withInset: 5)
            self.typeImageView.autoPinEdgeToSuperviewEdge(ALEdge.Top, withInset: 5)
            self.typeImageView.autoSetDimensionsToSize(CGSizeMake(36, 36))
            
            self.titleLabel.autoAlignAxis(ALAxis.Horizontal, toSameAxisOfView: self.typeImageView)
            self.titleLabel.autoPinEdge(ALEdge.Left, toEdge: ALEdge.Right, ofView: self.typeImageView, withOffset: 10)
            
            self.separatorLine1Label.autoPinEdge(ALEdge.Top, toEdge: ALEdge.Bottom, ofView: self.typeImageView, withOffset: 5)
            self.separatorLine1Label.autoPinEdgeToSuperviewEdge(ALEdge.Left, withInset: 5)
            self.separatorLine1Label.autoPinEdgeToSuperviewEdge(ALEdge.Right, withInset: 5)
            self.separatorLine1Label.autoSetDimension(ALDimension.Height, toSize: 0.5)
            
            self.timeImageView.autoAlignAxis(ALAxis.Vertical, toSameAxisOfView: self.typeImageView)
            self.timeImageView.autoPinEdge(ALEdge.Top, toEdge: ALEdge.Bottom, ofView: self.separatorLine1Label, withOffset: 10)
            
            self.timeLabel.autoPinEdge(ALEdge.Left, toEdge: ALEdge.Right, ofView: self.timeImageView, withOffset: 13)
            self.timeLabel.autoAlignAxis(ALAxis.Horizontal, toSameAxisOfView: self.timeImageView)
            
            self.locationImageView.autoAlignAxis(ALAxis.Vertical, toSameAxisOfView: self.typeImageView)
            self.locationImageView.autoPinEdge(ALEdge.Top, toEdge: ALEdge.Bottom, ofView: self.timeImageView, withOffset: 10)
            
            self.locationLabel.autoPinEdge(ALEdge.Left, toEdge: ALEdge.Right, ofView: self.locationImageView, withOffset: 13)
            self.locationLabel.autoAlignAxis(ALAxis.Horizontal, toSameAxisOfView: self.locationImageView)
            
            self.requireImageView.autoAlignAxis(ALAxis.Vertical, toSameAxisOfView: self.typeImageView)
            self.requireImageView.autoPinEdge(ALEdge.Top, toEdge: ALEdge.Bottom, ofView: self.locationImageView, withOffset: 10)
            
            self.requireLabel.autoPinEdge(ALEdge.Left, toEdge: ALEdge.Right, ofView: self.requireImageView, withOffset: 13)
            self.requireLabel.autoAlignAxis(ALAxis.Horizontal, toSameAxisOfView: self.requireImageView)
            
            self.separatorLine2Label.autoPinEdge(ALEdge.Top, toEdge: ALEdge.Bottom, ofView: self.requireImageView, withOffset: 10)
            self.separatorLine2Label.autoPinEdgeToSuperviewEdge(ALEdge.Left, withInset: 5)
            self.separatorLine2Label.autoPinEdgeToSuperviewEdge(ALEdge.Right, withInset: 5)
            self.separatorLine2Label.autoSetDimension(ALDimension.Height, toSize: 0.5)
            
            self.avatorImageView.autoAlignAxis(ALAxis.Vertical, toSameAxisOfView: self.typeImageView)
            self.avatorImageView.autoPinEdge(ALEdge.Top, toEdge: ALEdge.Bottom, ofView: self.separatorLine2Label, withOffset: 10)
            self.avatorImageView.autoSetDimensionsToSize(CGSizeMake(28, 28))
            
            self.nameLabel.autoPinEdge(ALEdge.Top, toEdge: ALEdge.Top, ofView: self.avatorImageView)
            self.nameLabel.autoPinEdge(ALEdge.Left, toEdge: ALEdge.Right, ofView: self.avatorImageView, withOffset: 10)
            
            self.phoneLabel.autoPinEdge(ALEdge.Left, toEdge: ALEdge.Left, ofView: self.nameLabel)
            self.phoneLabel.autoPinEdge(ALEdge.Bottom, toEdge: ALEdge.Bottom, ofView: self.avatorImageView)
            
            self.publishTimeLabel.autoPinEdgeToSuperviewEdge(ALEdge.Right, withInset: 10)
            self.publishTimeLabel.autoAlignAxis(ALAxis.Horizontal, toSameAxisOfView: self.phoneLabel)
            
            self.statusContainerView.autoPinEdge(ALEdge.Top, toEdge: ALEdge.Bottom, ofView: self.phoneLabel, withOffset: 10)
            self.statusContainerView.autoPinEdgeToSuperviewEdge(ALEdge.Bottom)
            self.statusContainerView.autoPinEdgeToSuperviewEdge(ALEdge.Left)
            self.statusContainerView.autoPinEdgeToSuperviewEdge(ALEdge.Right)
            
            /***** when I delete the constraints below, the layout come to display correctly *****/
            self.statusLabel.autoPinEdgeToSuperviewEdge(ALEdge.Left, withInset: 10)
            self.statusLabel.autoAlignAxisToSuperviewAxis(ALAxis.Horizontal)
            
            self.amountLabel.autoAlignAxisToSuperviewAxis(ALAxis.Horizontal)
            self.amountLabel.autoPinEdgeToSuperviewEdge(ALEdge.Right, withInset: 10)
            
            self.moneyLabel.autoPinEdge(ALEdge.Right, toEdge: ALEdge.Left, ofView: self.amountLabel, withOffset: -5)
            self.moneyLabel.autoAlignAxisToSuperviewAxis(ALAxis.Horizontal)
            /********** end of the delete **********/
            
            self.didSetupConstraints = true
        }
    }
    
}