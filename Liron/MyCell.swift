//
//  MyCell.swift
//  Liron
//
//  Created by Alexandre Marcondes on 7/26/14.
//  Copyright (c) 2014 Alexandre Marcondes. All rights reserved.
//

import UIKit

class MyCell : UITableViewCell {
    var myImage = UIImageView()
    var title = UILabel()
    var hashtags = UILabel()
    
    init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        myImage.contentMode = .ScaleAspectFit
        
        title.font = UIFont(name: "Cochin-BoldItalic", size: 22)
        title.textColor = UIColor.blueColor()
        title.backgroundColor = UIColor.clearColor()
        
        hashtags = UILabel()
        hashtags.font = UIFont(name: "AmericanTypewriter", size: 12)
        hashtags.textColor = UIColor.greenColor()
        hashtags.backgroundColor = UIColor.clearColor()
        
        contentView.addSubview(myImage)
        contentView.addSubview(title)
        contentView.addSubview(hashtags)
    }
    
    func loadItem(#name: String, imageUrl: String, tags: String) {
        var url = NSURL(string: imageUrl)
        var imageData = NSData(contentsOfURL: url)
        var uiImage = UIImage(data:imageData)
        myImage.image = uiImage
        
        hashtags.text = tags
        title.text = name
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let height = self.contentView.bounds.height
        let width = UIScreen.mainScreen().bounds.width
        
        myImage.frame = CGRect(x:width - height, y:0, width:height, height:height)
        title.frame = CGRect(x:5, y:4, width:width - height, height:height)
        hashtags.frame = CGRect(x:100, y:18, width:100, height:20)
    }
}