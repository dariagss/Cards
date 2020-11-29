//
//  Constraints+.swift
//  Cards
//
//  Created by Дарья Гапанюк on 28.11.2020.
//

import UIKit

/// Базовый тип констреинта
public typealias Constraint = (_ child: UIView, _ parent: UIView) -> NSLayoutConstraint

extension Array where Element == Constraint {
	public static func allAnchors(top: CGFloat = 0,
								  bottom: CGFloat = 0,
								  leading: CGFloat = 0,
								  trailing: CGFloat = 0) -> [Constraint] {
		return [
			equal(\.topAnchor, constant: top),
			equal(\.bottomAnchor, constant: bottom),
			equal(\.leadingAnchor, constant: leading),
			equal(\.trailingAnchor, constant: trailing)
		]
	}

	public static func allAnchors(margin: CGFloat = 0) -> [Constraint] {
		return .allAnchors(top: margin, bottom: -margin, leading: margin, trailing: -margin)
	}

	public static var allAnchors: [Constraint] {
		return .allAnchors(margin: 0)
	}

	public static func allAnchors(to view: UIView) -> [Constraint] {
		return [
			equal(\.topAnchor, to: view),
			equal(\.bottomAnchor, to: view),
			equal(\.leadingAnchor, to: view),
			equal(\.trailingAnchor, to: view)
		]
	}
}

extension NSLayoutConstraint {
	func with(priority: UILayoutPriority) -> NSLayoutConstraint {
		self.priority = priority
		return self
	}
}
