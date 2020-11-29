//
//  Collection+.swift
//  Cards
//
//  Created by Дарья Гапанюк on 29.11.2020.
//

extension Collection {
	subscript(safe index: Index) -> Element? {
		return indices.contains(index) ? self[index] : nil
	}
}
