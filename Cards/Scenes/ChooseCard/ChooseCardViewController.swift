//
//  ChooseCardViewController.swift
//  Cards
//
//  Created by Дарья Гапанюк on 28.11.2020.
//

import UIKit

class ChooseCardViewController: UIViewController {
	init() {
		super.init(nibName: nil, bundle: nil)
		view.backgroundColor = .yellow
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

extension ChooseCardViewController: TabBarEmbeddable {
	func getTabBarItem() -> UITabBarItem? {
		return .init(title: "Pick a card", image: nil, tag: 0)
	}
}
