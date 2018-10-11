//
//  ViajesCellVC.swift
//  enelviaje
//
//  Created by Cosmonautas on 09/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit

class ViajesCellVC: UITableViewCell {
    
    @IBOutlet weak var nombreViaje: UILabel!
    @IBOutlet weak var nombreDestino: UILabel!
    @IBOutlet weak var nombreOrigen: UILabel!
    
    @IBOutlet weak var fechaIda: UILabel!
    @IBOutlet weak var fechaVuelta: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
