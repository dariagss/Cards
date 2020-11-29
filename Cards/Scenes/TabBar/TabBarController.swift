//
//  TabBarController.swift
//  Cards
//
//  Created by Дарья Гапанюк on 29.11.2020.
//

import UIKit

protocol TabBarEmbeddable: UIViewController {
	func getTabBarItem() -> UITabBarItem?
}

class TabBarController: UITabBarController {
	init(viewControllers: [TabBarEmbeddable]) {
		super.init(nibName: nil, bundle: nil)
		viewControllers.forEach {
			$0.tabBarItem = $0.getTabBarItem()
		}
		setViewControllers(viewControllers, animated: false)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
