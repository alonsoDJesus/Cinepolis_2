//
//  MovieDetail.swift
//  cinepolito
//
//  Created by IMAC18 on 09/05/23.
//

import UIKit

class MovieDetail: UIViewController {
    
    var m: Movie?
    
    @IBOutlet weak var sinopsis: UITextView!
    @IBOutlet weak var movieTitle: UITextView!
    @IBOutlet weak var hero: UIImageView!
    @IBOutlet weak var sinopsisView: UIView!
    @IBOutlet weak var clasificacion: UIButton!
    @IBOutlet weak var genero: UILabel!
    @IBOutlet weak var duracion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: m!.url_portada_hero!)
        hero.kf.setImage(with: url)
        hero.backgroundColor = UIColor(white: 1.0, alpha: 0.3)
        
        movieTitle.text = m!.titulo!
        sinopsis.text = m!.sinopsis!
        clasificacion.setTitle(m!.clasificacion!, for: UIControl.State.normal)
        genero.text = m!.genero!
        duracion.text = m!.duracion!
        
        sinopsisView.layer.cornerRadius = 20
    }
    

}
