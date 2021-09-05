//
//  ViewController.swift
//  VentaPasajes
//
//  Created by Angelo Contreras on 5/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfDni: UITextField!
    @IBOutlet weak var tfNombres: UITextField!
    @IBOutlet weak var tfLugarSalida: UITextField!
    @IBOutlet weak var tfLugarDestino: UITextField!
    @IBOutlet weak var tfCosto: UITextField!
    @IBOutlet weak var tfCantidad: UITextField!
    @IBOutlet weak var tfTotalPagar: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tfCosto.text = "0.0"
        tfCantidad.text = "0"
        tfTotalPagar.text = "0.0"
    }
    
    //Ejecuta lo del botón "Calcular"
    @IBAction func btnCalcular_onClick(_ sender: Any) {
        var Costo : Double = 0.0
        var Cantidad : Double = 0.0
        var Total : Double = 0.0
        
        Costo = Double(tfCosto.text ?? "") ?? 0
        Cantidad = Double(tfCantidad.text ?? "") ?? 0
        Total = Costo * Cantidad
        tfTotalPagar.text = String(Total)
    }
    
    //Ejecuta lo del botón "Imprimir"
    @IBAction func btnImprimir_onClick(_ sender: Any) {
        var Nombres : String = ""
        var Dni : String = ""
        var Salida : String = ""
        var Destino : String = ""
        var Cantidad : Double = 0.0
        var Total : Double = 0.0
        
        Nombres = String(self.tfNombres.text ?? "")
        Dni = String(self.tfDni.text ?? "")
        Salida = String(self.tfLugarSalida.text ?? "")
        Destino = String(self.tfLugarDestino.text ?? "")
        Cantidad = Double(tfCantidad.text ?? "") ?? 0
        Total = Double(tfTotalPagar.text ?? "") ?? 0
        
        let alert = UIAlertController(title: "Detalle del Pasaje", message:
                                        
                                        "Nombres: \(Nombres) \r\n DNI: \(Dni) \r\n Salida / Destino: \(Salida) - \(Destino) \r\n Cantidad: \(Cantidad) \r\n Total Pagar: S/ \(Total)"
                                      
                                      
                                      , preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
        
        
    }
    
    //Ejecuta lo del botón "Limpiar"
    @IBAction func btnLimpiar_onClick(_ sender: Any) {
        tfDni.text = ""
        tfNombres.text = ""
        tfLugarSalida.text = ""
        tfLugarDestino.text = ""
        tfCosto.text = ""
        tfCantidad.text = ""
        tfTotalPagar.text = ""
    }
    

}

