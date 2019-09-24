//
//  DetallesMateriaController.swift
//  NavegacionIOS
//
//  Created by Alumno on 9/24/19.
//  Copyright © 2019 fer. All rights reserved.
//

import Foundation
import UIKit

class DetallesMateriaController: UIViewController{
    var materia: Materia?
    
    @IBOutlet weak var lblCalificacionPrimerParcial: UILabel!
    @IBOutlet weak var lblCalificacionSegundoParcial: UILabel!
    @IBOutlet weak var lblCalificacionTercerParcial: UILabel!
    @IBOutlet weak var lblCalificacionFinal: UILabel!
    
    
    override func viewDidLoad() {
        self.title = materia!.nombre!
        //Se quita un error de optional con los simbolos de admiracion
        lblCalificacionPrimerParcial.text = "\(materia!.calificacionPrimerParcial!)"
        lblCalificacionSegundoParcial.text = "\(materia!.calificacionSegundoParcial!)"
        lblCalificacionTercerParcial.text = "\(materia!.calificacionTercerParcial!)"
        lblCalificacionFinal.text = "\(materia!.calificacionFinal!)"
    }
}
