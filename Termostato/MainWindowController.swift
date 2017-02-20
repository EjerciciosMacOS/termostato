//
//  MainWindowController.swift
//  Termostato
//
//  Created by Leonardo Guzman on 2/12/17.
//  Copyright © 2017 Leonardo Guzman. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    private var temperaturaPrivada = 64;
    dynamic var isOn = true;
    dynamic var temperatura : Int{
        set{
            print("Asignando la nueva temperatura \(newValue)");
            temperaturaPrivada = newValue;
        }
        
        get{
            return temperaturaPrivada;
        }
    
    }
    
    
    
    override var windowNibName: String?{
        return "MainWindowController";
    }
    
    // MARK: - Inicializacion
    
    override func windowDidLoad() {
        super.windowDidLoad();
        
        
    }
    
    
    // MARK - Eventos
    
    @IBAction func onClickWarmerBoton (sender : NSButton){
        
        temperatura += 1;
    }
    
    
    @IBAction func onClickCoolerBoton (sender : NSButton){
        
        temperatura -= 1;
        
    }
}
