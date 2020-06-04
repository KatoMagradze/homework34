//
//  PageViewController.swift
//  Homework34
//
//  Created by Kato on 6/4/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {

    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [self.newPageViewController(page: "First"),
                self.newPageViewController(page: "Second"),
                self.newPageViewController(page: "Third")]
    }()

    private func newPageViewController(page: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil) .
            instantiateViewController(withIdentifier: "\(page)ViewController")

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        if let firstViewController = orderedViewControllers.first { setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {return nil}
            
        let previousIndex = viewControllerIndex - 1
            
        guard previousIndex >= 0 else {return nil}
            
        guard orderedViewControllers.count > previousIndex else {return nil}
            
        return orderedViewControllers[previousIndex]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {return nil}
            
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count

        guard orderedViewControllersCount != nextIndex else {return nil}
            
        guard orderedViewControllersCount > nextIndex else {return nil}
            
        return orderedViewControllers[nextIndex]
    }
}



