//
//  GetImageFromUrlHelper.swift
//  TableViewExample
//
//  Created by Jorge luis Menco Jaraba on 3/17/19.
//  Copyright © 2019 Jorge Luis Menco. All rights reserved.
//

import Foundation
import UIKit
final class GetImageFromUrlHelper {
    
    static func getImageFromULR(urlImg:String?)-> UIImage?{
        
        guard let urlImage = urlImg else {
            return UIImage()
        }
        guard let urlData : URL = URL(string: urlImage) else {return UIImage()}
        let dataImg = try? Data.init(contentsOf: urlData)
        
        guard let imgData = dataImg else {
            return UIImage()
        }
        let dataImageFinal = UIImage(data: imgData)
        return dataImageFinal
    }
    
}
