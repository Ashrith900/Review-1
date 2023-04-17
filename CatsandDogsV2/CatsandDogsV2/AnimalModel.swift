//
//  AnimalModel.swift
//  CatsandDogsV2
//
//  Created by Rajiv Mukherjee on 3/27/23.
//

import Foundation

class AnimalModel: ObservableObject{
    
    @Published var animal = Animal()
    
    func getAnimal(){
        let stringUrl = Bool.random() ? catUrl: dogUrl
        
        //1. creat the url object
        let url = URL(string: stringUrl)
        
        //2. check oif url is empty
        guard url != nil else{
            print("couldn't create url")
            return}
        
        //3.get url
        let session = URLSession.shared
        
        //4. create data task
        let dataTask = session.dataTask(with: url!) {(data, response, error) in
            if error == nil && data != nil{
                do{
                    if let json = try JSONSerialization.jsonObject(with: data!, options:[]) as?[[String: Any]] {
                        let item = json.isEmpty ? [:] : json[0]
                        
                        if let animal = Animal(json: item){
                            
                            
                            DispatchQueue.main.async { //puts it on the main thread. important
                                
                                while animal.results.isEmpty {}
                                
                                self.animal = animal
                            }//end of dispatch queue
                        }//end of if item
                    }
                }
                catch{
                    print("json parse failed")
                }
                
            }
            
            
            
        }
        
        //5. start the data task
        dataTask.resume()
    }//end of function get animal
    
}//end of class
