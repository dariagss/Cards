//
//  ScoresViewController.swift
//  Cards
//
//  Created by Дарья Гапанюк on 29.11.2020.
//

import UIKit

class ScoresViewController: UIViewController {
	init() {
		super.init(nibName: nil, bundle: nil)
		view.backgroundColor = .yellow
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

extension ScoresViewController: TabBarEmbeddable {
	func getTabBarItem() -> UITabBarItem? {
		return .init(title: "Scores", image: nil, tag: 1)
	}
}
