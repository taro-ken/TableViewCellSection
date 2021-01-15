//
//  ViewController.swift
//  tableViewCell
//
//  Created by 木元健太郎 on 2021/01/02.
//

import UIKit

class ViewController: UIViewController {
    
    var tableviewcell = TableViewCell()
    let mySections:[String] = ["肩","胸","背中","腕","脚","腹"]
    let kata:[String] = ["ショルダープレス","サイドレイズ"]
    let mune:[String] = ["ダンベルプレス","ダンベルフライ"]
    let senaka:[String] = ["オーバーロー","ラットプル"]
    let ude:[String] = ["ハンマーカール","スカルクラッシャー"]
    let ashi:[String] = ["レッグプレス","レッグエクステンション"]
    let hara:[String] = ["レッグレイズ"]
    
    private let CELL_NIB_NAME = String(describing: TableViewCell.self)
    private let CELL_ID = String(describing: TableViewCell.self)

    @IBOutlet private weak var tableView: UITableView! {
      didSet {
        //storyboardから読み込んだ時点でセルの登録をすませる
        let cellNIB = UINib(nibName: CELL_NIB_NAME, bundle: nil)
        tableView.register(cellNIB, forCellReuseIdentifier: CELL_ID)
        
        tableView.reloadData()
        
      }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
    

extension ViewController: UITableViewDelegate{
        
    }
  
extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
           return mySections.count
       }

       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
                case 0:
                    return kata.count
                case 1:
                    return mune.count
                case 2:
                    return senaka.count
                case 3:
                    return ude.count
                case 4:
                    return ashi.count
                case 5:
                    return hara.count
                default:
                    return 0
                }
       }

       func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
           return mySections[Int(section)]
       }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID, for: indexPath)
         
        tableviewcell.nameLabel?.text = [][indexPath.row]
        return cell
      }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // Segueを使った画面遷移を行う関数
       performSegue(withIdentifier: "Segue", sender: nil)
        //選択後の背景色を消す
        tableView.deselectRow(at: indexPath, animated: true)
   }
        
}




