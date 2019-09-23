//
//  Materia.swift
//  NavegacionIOS
//
//  Created by Alumno on 9/23/19.
//  Copyright © 2019 fer. All rights reserved.
//

import Foundation

class Materia {
    var calificacionPrimerParcial : Int?
    var calificacionSegundoParcial : Int?
    var calificacionTercerParcial : Int?
    var calificacionFinal : Int?
    var nombre : String?
    
    init(nombre: String, calificacionPrimerParcial: Int,calificacionSegundoParcial: Int,calificacionTercerParcial: Int,calificacionFinal: Int) {
        self.calificacionPrimerParcial = calificacionPrimerParcial
        self.calificacionSegundoParcial = calificacionSegundoParcial
        self.calificacionTercerParcial = calificacionTercerParcial
        self.calificacionFinal = calificacionFinal
        self.nombre = nombre;
    }
}
