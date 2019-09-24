//
//  CalificacionesController.swift
//  NavegacionIOS
//
//  Created by Alumno on 9/23/19.
//  Copyright © 2019 fer. All rights reserved.
//

import Foundation
import UIKit

class CalificacionesController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tvCalificaciones: UITableView!
    
    var materias: [Materia] = []
    override func viewDidLoad() {
        materias.append(Materia(nombre: "Matematicas", calificacionPrimerParcial: 10, calificacionSegundoParcial: 9, calificacionTercerParcial: 10, calificacionFinal: 10))
        
        materias.append(Materia(nombre: "Español", calificacionPrimerParcial: 7, calificacionSegundoParcial: 6, calificacionTercerParcial: 8, calificacionFinal: 8))
    }
    
    //numerodesecciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //numero de celdas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    //contenido
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria")
        celda?.textLabel?.text = materias[indexPath.row].nombre
        
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetallesMateria" {
            let destino = segue.destination as? DetallesMateriaController
            destino?.materia = materias[tvCalificaciones.indexPathForSelectedRow!.row]
        }
    }
}
