//
//  UIView+Frame.swift
//  PhotoPuzzle
//
//  Created by hua on 2019/2/4.
//  Copyright © 2019 com.foxStudio. All rights reserved.
//

import UIKit

extension UIView {
    var width:CGFloat {
        get {
            return self.bounds.size.width
        }
    }
    
    var height:CGFloat {
        get {
            return self.bounds.size.height
        }
    }
    
    var top:CGFloat {
        get {
            return self.frame.origin.y
        }
    }
    
    var left:CGFloat {
        get {
            return self.frame.origin.x
        }
    }
    
    var bottom:CGFloat {
        get {
            return self.frame.maxY
        }
    }
    
    var right:CGFloat {
        get {
            return self.frame.maxX
        }
    }
    
    var safeTopSpace:CGFloat {
        if #available(iOS 11, *) {
            return self.safeAreaInsets.top
        }
        return 0
    }
    
    var safeBottomSpace:CGFloat {
        if #available(iOS 11, *) {
            return self.safeAreaInsets.bottom
        }
        return 0
    }
}
