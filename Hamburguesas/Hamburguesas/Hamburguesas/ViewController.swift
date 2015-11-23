//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Saraí Aragón Benítez on 22/11/15.
//  Copyright © 2015 Saraí Aragón Benítez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let coleccionDePais = ColeccionDePaises();
    
    let coleccionDeHamburguesas = ColeccionDeHamburguesas();
    
    let colores = Colores();
    
    @IBOutlet weak var mensajePais: UILabel!
    
    @IBOutlet weak var mensajeHamburguesa: UILabel!
    
    @IBAction func dameUnaHamburguesa() {
        
    }
    
    @IBAction func seleccionaHamburguesa() {
        mensajePais.text = coleccionDePais.obtenPais();
        mensajeHamburguesa.text = coleccionDeHamburguesas.obtenHamburguesa();
        view.backgroundColor = colores.regresaColorAleatorio();
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

