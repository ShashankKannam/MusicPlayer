//
//  Party.swift
//  MusicPlayer
//
//  Created by Shashank Kannam on 10/10/16.
//  Copyright © 2016 Shashank Kannam. All rights reserved.
//

import Foundation

class party{

    private var _videoTitle:String!
    private var _videoURL:String!
    
    private var _ImgURL:String!
    
    var videoURL:String{
        return _videoURL
    }
    
    var videoTitle:String{
        return _videoTitle
    }
    
    var imageURL:String{
        return _ImgURL
    }
    
    init(videoTitle:String,videoURL:String, imageURL:String )
    {
        _videoURL=videoURL
        _videoTitle=videoTitle
        _ImgURL=imageURL
    }
}
