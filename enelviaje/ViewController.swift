//
//  ViewController.swift
//  enelviaje
//
//  Created by Cosmonautas on 01/10/18.
//  Copyright © 2018 Cosmonautas. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FBSDKLoginKit


class ViewController: UIViewController {
    
    @IBOutlet weak var loginUser: UITextField!
    @IBOutlet weak var loginPass: UITextField!
    @IBOutlet weak var signInSelector: UISegmentedControl!
    
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var signInButton: UIButton!
    
    var isSignIn: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // configureGoogleSignInButton()
    }
    
   /* //creating the Google sign in button
    fileprivate func configureGoogleSignInButton() {
        let googleSignInButton = GIDSignInButton()
        googleSignInButton.frame = CGRect(x: 120, y: 200, width: view.frame.width - 240, height: 50)
        view.addSubview(googleSignInButton)
        GIDSignIn.sharedInstance().uiDelegate = self
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  /*  @IBAction func logIn(_ sender: UIButton) {
        
        Auth.auth().createUser(withEmail: self.loginUser.text!, password: self.loginPass.text!) { (user, error) in
            if user != nil {
                print("El Usuario fue Logueado")
                
                
            } else {
                print(":/")
                
            }
        }
        
        
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        
        Auth.auth().createUser(withEmail: self.loginUser.text!, password: self.loginPass.text!) { (user, error) in
            if user != nil {
                print("El Usuario fue Registrado")
                
                
            } else {
                print(":/")
                
            }
        }
        
        
       
    }
    */
    //Función para iniciar sesión con facebook
    @IBAction func facebookLogin(sender: UIButton) {
        let fbLoginManager = FBSDKLoginManager()
        fbLoginManager.logIn(withReadPermissions: ["public_profile", "email"], from: self) { (result, error) in
            if let error = error {
                print("Failed to login: \(error.localizedDescription)")
                return
            }
            
            guard let accessToken = FBSDKAccessToken.current() else {
                print("Failed to get access token")
                return
            }
            
            
            let credential = FacebookAuthProvider.credential(withAccessToken: accessToken.tokenString)
            
            // Perform login by calling Firebase APIs
            Auth.auth().signIn(with: credential, completion: { (user, error) in
                if let error = error {
                    print("Login error: \(error.localizedDescription)")
                    let alertController = UIAlertController(title: "Login Error", message: error.localizedDescription, preferredStyle: .alert)
                    let okayAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(okayAction)
                    self.present(alertController, animated: true, completion: nil)
                    
                    return
                }
                
                // Present the main view
               let viewController =   self.performSegue(withIdentifier: "goToHome", sender: self)
            })
            
        }
    }
    
    //Función para hacer el switch en el segmentedControl
    @IBAction func signInSelectorChanged(_ sender: UISegmentedControl) {
        
        isSignIn = !isSignIn
        
        if isSignIn {
            signInLabel.text = "Entrar"
            signInButton.setTitle("Entrar", for: .normal)
        } else {
            signInLabel.text = "Registrarse"
            signInButton.setTitle("Registrarse", for: .normal)
            
        }
        
     }
    
    //Función para iniciar sesión
    @IBAction func signInButton(_ sender: UIButton) {
        
        if let email = loginUser.text, let pass = loginPass.text {
            
            if isSignIn {
                
                Auth.auth().signIn(withEmail: email, password: pass, completion: { (user, error) in
                    
                    if let u = user{
                        self.performSegue(withIdentifier: "goToHome", sender: self)
                        
                    } else {
                        
                     }
                    
                })
                
            } else {
                Auth.auth().createUser(withEmail: email, password: pass, completion: { ( user, error) in
                    
                    if let u = user {
                        self.performSegue(withIdentifier: "goToHome", sender: self)
                        
                    }
                })
                
            }
        }
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        loginUser.resignFirstResponder()
        loginPass.resignFirstResponder()
    }

}
