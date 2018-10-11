//
//  ViajesModel.swift
//  enelviaje
//
//  Created by Cosmonautas on 09/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

class ViajesModel {
    
    var id: String?
    var nombreViaje: String?
    var nombreDestino: String?
    var nombreOrigen: String?
    var fechaIda: String?
    var fechaVuelta: String?
    
    init(dictionary: [String: AnyObject], key: String) {
    self.id = dictionary["id"] as? String
    self.nombreViaje = dictionary["nombre viaje"] as? String
    self.nombreDestino = dictionary["nombre destino"] as? String
    self.nombreOrigen = dictionary["nombre origen"] as? String
    self.fechaIda = dictionary["fecha ida"] as? String
    self.fechaVuelta = dictionary["fecha vuelta"] as? String
 
    }
    
   
    
    
}
