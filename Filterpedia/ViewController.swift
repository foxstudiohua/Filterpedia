//
//  ViewController.swift
//  Filterpedia
//
//  Created by Simon Gladman on 29/12/2015.
//  Copyright © 2015 Simon Gladman. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    private lazy var filterNavigator:FilterNavigator = {
        return FilterNavigator()
    }()
    
    private lazy var filterDetail:FilterDetail = {
        return FilterDetail()
    }()
    
    private lazy var bedView:UIView = {
        let view = UIView(frame: .zero)
        
        return view
    }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
        self.view.addSubview(self.bedView)
        self.bedView.addSubview(self.filterNavigator)
        self.bedView.addSubview(self.filterDetail)
        filterNavigator.delegate = self
    }

    override func viewDidLayoutSubviews()
    {
        self.bedView.frame = self.view.bounds.inset(by: self.view.safeAreaInsets)
        let span = self.bedView.width
        let vSpan = self.bedView.height
        let leftSpan:CGFloat = 300
        
        self.filterNavigator.frame = CGRect(x: 0, y: 0, width: leftSpan, height: vSpan)
        self.filterDetail.frame = CGRect(x: leftSpan, y: 0, width: span-leftSpan, height: vSpan)
    }
}

extension ViewController: FilterNavigatorDelegate
{
    func filterNavigator(_ filterNavigator: FilterNavigator, didSelectFilterName: String)
    {
        filterDetail.filterName = didSelectFilterName
    }
}


