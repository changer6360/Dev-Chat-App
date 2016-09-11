//
//  CameraVC.swift
//  DevChat
//
//  Created by Tihomir Videnov on 9/11/16.
//  Copyright © 2016 Tihomir Videnov. All rights reserved.
//

import UIKit
import FirebaseAuth

class CameraVC: AAPLCameraViewController, AAPLCameraVCDelegate {

    @IBOutlet weak var previewView: AAPLPreviewView!
    @IBOutlet weak var cameraBtn: UIButton!
    @IBOutlet weak var recordBtn: UIButton!
    
    
    override func viewDidLoad() {
        
        delegate = self
        
        //aassigning mine previewView to the original one by Apple
        self._previewView = previewView
        
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        guard FIRAuth.auth()?.currentUser != nil else {
            //load login vc
            performSegue(withIdentifier: "LoginVC", sender: nil)
            return
        }
    }
    
    func shouldEnableCameraUI(_ enable: Bool) {
        
        cameraBtn.isEnabled = enable
        print("Should enable CameraUI: \(enable)")
    }
    
    func shouldEnableRecordUI(_ enable: Bool) {
        
        recordBtn.isEnabled = enable
        print("Should enable record UI: \(enable)")
    }
    
    func recordingHasStarted() {
        print("Recording has started")
    }
    
    func canStartRecording() {
        print("Can start recording")
    }


    @IBAction func recordBtnPressed(_ sender: AnyObject) {
        toggleMovieRecording()
    }
    
    
    @IBAction func changeCameraBtnPressed(_ sender: AnyObject) {
        changeCamera()
    }

}

