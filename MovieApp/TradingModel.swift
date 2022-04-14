//
//  TradingModel.swift
//  MovieApp
//
//  Created by Никита on 14.04.2022.
//
import UIKit

struct SushiModel {
    var mainImage: UIImage
    var sushiName: String
    var smallDescription: String
    var cost: Int
    
    static func fetchSushi() -> [SushiModel] {
        let firstItem = SushiModel(mainImage: UIImage(systemName: "star.fill")!,
                               sushiName: "Jengibre",
                               smallDescription: "Original Japanese",
                               cost: 8)
        let secondItem = SushiModel(mainImage: UIImage(systemName: "star.fill")!,
                                    sushiName: "Caviar",
                                    smallDescription: "Original Japanese",
                                    cost: 10)
        let thirdItem = SushiModel(mainImage: UIImage(systemName: "star.fill")!,
                                   sushiName: "Camaron",
                                   smallDescription: "Original Japanese",
                                   cost: 7)
        
        let fouthItem = SushiModel(mainImage: UIImage(systemName: "star.fill")!,
                                   sushiName: "Salmon",
                                   smallDescription: "Original Japanese",
                                   cost: 12)
        
        let five = SushiModel(mainImage: UIImage(systemName: "star.fill")!,
                                   sushiName: "Jengibre",
                                   smallDescription: "Original Japanese",
                                   cost: 8)
        let six = SushiModel(mainImage: UIImage(systemName: "star.fill")!,
                                    sushiName: "Caviar",
                                    smallDescription: "Original Japanese",
                                    cost: 10)
        let seven = SushiModel(mainImage: UIImage(systemName: "star.fill")!,
                                   sushiName: "Camaron",
                                   smallDescription: "Original Japanese",
                                   cost: 7)
        
        let eight = SushiModel(mainImage: UIImage(systemName: "star.fill")!,
                                   sushiName: "Salmon",
                                   smallDescription: "Original Japanese",
                                   cost: 12)
        
        
        return [firstItem, secondItem, thirdItem, fouthItem, five, six, seven, eight]
    }
}
