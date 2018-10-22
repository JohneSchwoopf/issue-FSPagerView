//
//  BannerViewController.swift
//  Test Banner
//
//  Created by Jaja Yting on 22/10/2018.
//  Copyright © 2018 Jaja Yting. All rights reserved.
//

import UIKit
import FSPagerView

class BannerViewController: UIViewController, FSPagerViewDataSource, FSPagerViewDelegate {

    @IBOutlet private var pagerView: FSPagerView!
    @IBOutlet private var pagerViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet private var pageControl: FSPageControl!
    
    private var pagerViewHeight: CGFloat = 221.0
    
    public class func newInstance(height: CGFloat) -> BannerViewController {
        
        /*
        let storyboard = UIStoryboard(name: "Banner", bundle: nil)
        let bannerViewController = storyboard.instantiateViewController(withIdentifier: "BannerViewController") as! BannerViewController
         */
        
        let bannerViewController = BannerViewController()
        bannerViewController.pagerViewHeight = height
        
        return bannerViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.pagerView.dataSource = self
        self.pagerView.delegate = self
        self.pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "Cell")
        
        self.pageControl.numberOfPages = 10
        
        self.pagerView.reloadData()
    }
    
    // MARK: - FSPagerViewDataSource Methods
    
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return 10
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        
        let dequeuedCell = pagerView.dequeueReusableCell(withReuseIdentifier: "Cell", at: index)
        
        dequeuedCell.textLabel?.text = "Cell #\(index)"
        
        return dequeuedCell
    }
    
    // MARK: - FSPagerViewDelegate Methods
    
    func pagerView(_ pagerView: FSPagerView, willDisplay cell: FSPagerViewCell, forItemAt index: Int) {
        
    }
}
