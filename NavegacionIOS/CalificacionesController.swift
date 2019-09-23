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
    
    var materias: [Materia] = []
    override func viewDidLoad() {
        <#code#>
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
}
