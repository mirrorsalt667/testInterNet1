//
//  ViewController.swift
//  testInterNet
//
//  Created on 2021/5/16.
//

import UIKit

class ViewController: UIViewController {
    
    
    var lists:[Data] = []
    
    @IBOutlet weak var imageView0of1: UIImageView!
    @IBOutlet weak var imageView1of1: UIImageView!
    @IBOutlet weak var imageView2of1: UIImageView!
    @IBOutlet weak var imageView3of1: UIImageView!
    @IBOutlet weak var imageView4of1: UIImageView!
    @IBOutlet weak var imageView5of1: UIImageView!
    @IBOutlet weak var imageView6of1: UIImageView!
    @IBOutlet weak var imageView7of1: UIImageView!
    @IBOutlet weak var imageView8of1: UIImageView!
    
    @IBOutlet weak var finishLabel: UILabel!
    
    let urlSquare = "https://picsum.photos/200"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finishLabel.text = "loading"
        if let url = URL(string: urlSquare) {
            
            print("1")
            for i in 0...8 {
                URLSession.shared.dataTask(with: url) { data, response, error in
                    if let data = data {
                        print(Thread.isMainThread)
                        DispatchQueue.main.async {
                           
                            switch i {
                            case 0 : self.lists.append(data)//; self.imageView0of1.image = UIImage(data: self.lists[0])
                            case 1 : self.lists.append(data)//; self.imageView1of1.image = UIImage(data: self.lists[1])
                            case 2 : self.lists.append(data)//; self.imageView2of1.image = UIImage(data: self.lists[2])
                            case 3 : self.lists.append(data)//; self.imageView3of1.image = UIImage(data: self.lists[3])
                            case 4 : self.lists.append(data)//; self.imageView4of1.image = UIImage(data: self.lists[4])
                            case 5 : self.lists.append(data)//; self.imageView5of1.image = UIImage(data: self.lists[5])
                            case 6 : self.lists.append(data)//; self.imageView6of1.image = UIImage(data: self.lists[6])
                            case 7 : self.lists.append(data)//; self.imageView7of1.image = UIImage(data: self.lists[7])
                            case 8 : self.lists.append(data); self.finishLabel.text = "finished"
                            default:
                                break
                            }
                        }
                    }
                }.resume()
            }
        }
        /*imageView0of1.image = UIImage(data: lists[0])
        self.imageView1of1.image = UIImage(data: self.lists[1])
        self.imageView2of1.image = UIImage(data: self.lists[2])
        self.imageView3of1.image = UIImage(data: self.lists[3])
        self.imageView4of1.image = UIImage(data: self.lists[4])
        self.imageView5of1.image = UIImage(data: self.lists[5])
        self.imageView6of1.image = UIImage(data: self.lists[6])
        self.imageView7of1.image = UIImage(data: self.lists[7])
        self.imageView8of1.image = UIImage(data: self.lists[8])*/
        
        /*if let urlOne = URL(string: urlSquare) {
            URLSession.shared.dataTask(with: urlOne) { tina, reta, error in
                if let data = tina {
                    print("3")
                    DispatchQueue.main.async {
                        self.lists.append(data)
                        self.imageView2of1.image = UIImage(data: self.lists[1])
                        
                    }
                }
            }.resume()
        }*/
    }

    @IBAction func pushButton(_ sender: Any) {
        print("101")
        imageView0of1.image = UIImage(data: lists[0])
        imageView1of1.image = UIImage(data: lists[1])
        imageView2of1.image = UIImage(data: lists[2])
        imageView3of1.image = UIImage(data: lists[3])
        imageView4of1.image = UIImage(data: lists[4])
        imageView5of1.image = UIImage(data: lists[5])
        imageView6of1.image = UIImage(data: lists[6])
        imageView7of1.image = UIImage(data: lists[7])
        imageView8of1.image = UIImage(data: lists[8])
    }
    @IBAction func reloadButton(_ sender: Any) {
        lists.removeAll()
        finishLabel.text = "loading"
        if let url = URL(string: urlSquare) {
            for a in 0...8 {
                URLSession.shared.dataTask(with: url) { datas, respone, error in
                    if let data = datas {
                        switch a {
                        case 0: self.lists.append(data)
                        case 1: self.lists.append(data)
                        case 2: self.lists.append(data)
                        case 3: self.lists.append(data)
                        case 4: self.lists.append(data)
                        case 5: self.lists.append(data)
                        case 6: self.lists.append(data)
                        case 7: self.lists.append(data)
                        case 8: self.lists.append(data);
                            DispatchQueue.main.async {
                                self.finishLabel.text = "finished"
                            }
                        default:
                            break
                        }
                    }
                }.resume()
            }
        }
    }
}

