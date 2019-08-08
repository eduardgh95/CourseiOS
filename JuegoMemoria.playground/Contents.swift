import UIKit

for index in 0...100{
    
    
    
    
    var mResult = "";
    if index != 0 {
        if index%5 == 0 { //BINGO
            mResult = mResult + " BINGO "
        }
        if index%2 == 0{  // PAR
            mResult = mResult + " PAR "
        }else{ //BIMPAR
            mResult = mResult + " IMPAR "
        }
        if index >= 30 && index <= 40{
                mResult = mResult + " VIVA SWIFT "
        }
        
        print("\(index)" + mResult)
    }else{
        print(index)
    }
}
