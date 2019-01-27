//
//  GridDetailsViewController.swift
//  Movie
//
//  Created by apple on 2019/1/27.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit
import AlamofireImage
class GridDetailsViewController: UIViewController {

    @IBOutlet weak var back: UIImageView!
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var synopsisL: UILabel!
    
    var movie:[String:Any]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleL.text = movie["title"] as? String
        titleL.sizeToFit()
        synopsisL.text = movie["overview"] as? String
        synopsisL.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        poster.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        back.af_setImage(withURL: backdropUrl!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
