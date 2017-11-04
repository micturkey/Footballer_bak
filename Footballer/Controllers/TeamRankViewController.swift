//
//  TeamRankViewController.swift
//  Footballer
//
//  Created by Ethan Zhai on 2017/10/14.
//  Copyright © 2017年 Ethan Zhai. All rights reserved.
//

import UIKit

var league = "csl"
private let reuseIdentifier = "Cell"

class TeamRankViewController: UIViewController {

    //var elegantSlideMenuView: ElegantSlideMenuView!
    var elegantSlideMenuViewArray: [ElegantSlideMenuDto] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // 初始化标题栏 title
        let titles = ["中超","西甲","英超","德甲","意甲"]
        var yaxis = 20
        // 初始化导航栏菜单
        if UIScreen.main.bounds.height == 812 {
            yaxis = 44
        }
        // iPhone X适配
        let elegantSlideMenuView = ElegantSlideMenuView(frame: CGRect(x: 0, y: CGFloat(yaxis), width: self.view.frame.size.width, height: self.view.frame.size.height))
        // 设置导航栏菜单的一些属性
        elegantSlideMenuView.isAutomatic = true
        elegantSlideMenuView.tabItemSelectedTitleColor = UIColor.blue
        elegantSlideMenuView.defaultSelectedIndex = 0
        let width = self.view.frame.size.width
        let height = self.view.frame.size.height - 40 - 44
        let frame = CGRect(x: 0, y: 0, width: width, height: height)

        getElegantSlideMenuView(titles: titles)
        self.view.addSubview(elegantSlideMenuView)
        elegantSlideMenuView.viewArray = elegantSlideMenuViewArray
        elegantSlideMenuView.buildUI()
        // 通过 block 获取选中的 index
        elegantSlideMenuView.refreshDataBlock = { index in
            print("\(index)")
        }
        elegantSlideMenuView.buildUI()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }
    
    func getElegantSlideMenuView(titles: [String]){
        let width = self.view.frame.size.width
        let height = self.view.frame.size.height - 40 - 44
        let delegate = UIApplication.shared.delegate as! AppDelegate
        
        for i in 0..<titles.count{
            if i == 0{
                delegate.league = "CSL"
                delegate.numbers = 16
                delegate.season = "2017"
                delegate.champ = 3
                let demoBaseView = TeamRankTab(frame: CGRect(x: 0, y: 0, width: width, height: height))
                var slideMenuDto = ElegantSlideMenuDto()
                slideMenuDto.title = titles[i]
                slideMenuDto.view = demoBaseView
                slideMenuDto.isInitial = 1
                elegantSlideMenuViewArray.append(slideMenuDto)
            }else if i == 1{
                delegate.league = "LFP"
                delegate.numbers = 20
                delegate.season = "2017/18"
                delegate.champ = 4
                let demoBaseView = TeamRankTab(frame: CGRect(x: 0, y: 0, width: width, height: height))
                var slideMenuDto = ElegantSlideMenuDto()
                demoBaseView.backgroundColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1)
                slideMenuDto.isInitial = 0
                slideMenuDto.title = titles[i]
                slideMenuDto.view = demoBaseView
                
                elegantSlideMenuViewArray.append(slideMenuDto)
            }else if i == 2{
                delegate.league = "EPL"
                delegate.numbers = 20
                delegate.season = "2017/18"
                delegate.champ = 4
                let demoBaseView = TeamRankTab(frame: CGRect(x: 0, y: 0, width: width, height: height))
                var slideMenuDto = ElegantSlideMenuDto()
                slideMenuDto.title = titles[i]
                slideMenuDto.view = demoBaseView
                slideMenuDto.isInitial = 0
                elegantSlideMenuViewArray.append(slideMenuDto)
            }else if i == 3{
                delegate.league = "Bundesliga"
                delegate.numbers = 18
                delegate.season = "2017/18"
                delegate.champ = 4
                let demoBaseView = TeamRankTab(frame: CGRect(x: 0, y: 0, width: width, height: height))
                var slideMenuDto = ElegantSlideMenuDto()
                slideMenuDto.title = titles[i]
                slideMenuDto.view = demoBaseView
                slideMenuDto.isInitial = 0
                elegantSlideMenuViewArray.append(slideMenuDto)
            }else if i == 4{
                delegate.league = "SerieA"
                delegate.numbers = 20
                delegate.season = "2017/18"
                delegate.champ = 4
                let demoBaseView = TeamRankTab(frame: CGRect(x: 0, y: 0, width: width, height: height))
                var slideMenuDto = ElegantSlideMenuDto()
                slideMenuDto.title = titles[i]
                slideMenuDto.view = demoBaseView
                slideMenuDto.isInitial = 0
                elegantSlideMenuViewArray.append(slideMenuDto)
            }
            
        }
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource



    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
