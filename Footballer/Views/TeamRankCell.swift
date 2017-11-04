//
//  TeamRankCellController.swift
//  Footballer
//
//  Created by Ethan Zhai on 2016/10/14.
//  Copyright © 2016年 Ethan Zhai. All rights reserved.
//

import UIKit

class TeamRankCell: UICollectionViewCell {
    
    var imageView: UIImageView!
    var name: UILabel!
    var rank: UILabel!
    var points: UILabel!
    var goals_against: UILabel!
    var goals: UILabel!
    var matches_draw: UILabel!
    var matches_lost: UILabel!
    var matches_total: UILabel!
    var matches_won: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //单元格的宽度
        let cellWidth: CGFloat = self.frame.size.width
        
//        /// 1.添加ImageView
//        let imageViewWidth: CGFloat = 100
//        let imageViewHeight: CGFloat = 100
//        let imageViewTopView: CGFloat = 0
//
//        self.imageView = UIImageView(frame: CGRect(x: (cellWidth - imageViewWidth) / 2, y: imageViewTopView, width: imageViewWidth, height: imageViewHeight))
//
//        self.addSubview(self.imageView)
//
        
        self.name = UILabel(frame: CGRect(x: 30, y: 7.5, width: cellWidth, height: 30))
        self.points = UILabel(frame: CGRect(x: cellWidth-0.09 * cellWidth, y: 7.5, width: 30, height: 30))
//        self.goals_against = UILabel(frame: CGRect(x: cellWidth-7.50, y: 0, width: 20, height: 30))
        self.goals = UILabel(frame: CGRect(x: cellWidth-0.24 * cellWidth, y: 7.5, width: 60, height: 30))
        self.rank = UILabel(frame: CGRect(x: 0 ,y: 7.5, width: 20, height: 30))
        self.matches_lost = UILabel(frame: CGRect(x: cellWidth-0.32 * cellWidth ,y: 7.5, width: 30, height: 30))
        self.matches_draw = UILabel(frame: CGRect(x: cellWidth-0.4 * cellWidth ,y: 7.5, width: 30, height: 30))
        self.matches_won = UILabel(frame: CGRect(x: cellWidth-0.49 * cellWidth ,y: 7.5, width: 30, height: 30))
        self.matches_total = UILabel(frame: CGRect(x: cellWidth-0.57 * cellWidth ,y: 7.5, width: 30, height: 30))
        
        self.points.font = UIFont.systemFont(ofSize: 16)
        self.goals.font = UIFont.systemFont(ofSize: 16)
        self.rank.font = UIFont.systemFont(ofSize: 16)
        self.matches_lost.font = UIFont.systemFont(ofSize: 16)
        self.matches_draw.font = UIFont.systemFont(ofSize: 16)
        self.matches_won.font = UIFont.systemFont(ofSize: 16)
        self.matches_total.font = UIFont.systemFont(ofSize: 16)
        self.name.font = UIFont.systemFont(ofSize: 16)
        
        
        
//        print("1:\(cellWidth)")
        self.rank.textAlignment = .center
        
        self.addSubview(self.points)
        self.addSubview(self.name)
        self.addSubview(self.rank)
        self.addSubview(self.goals)
        self.addSubview(self.matches_lost)
        self.addSubview(self.matches_draw)
        self.addSubview(self.matches_won)
        self.addSubview(self.matches_total)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
