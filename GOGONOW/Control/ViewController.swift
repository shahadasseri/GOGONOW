import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource {

    
//UIkits:
    @IBOutlet weak var CollectionView: UICollectionView!
    

//Varebils:
    //Array of all catogries contents
    var ArrayCategories = [Categories]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //collectionView attributes:
          CollectionView.delegate = self
          CollectionView.dataSource = self

        //Fill the array:
         ArrayCategories.append(Categories(CellImage: UIImage(named: "Test1")!))//, CellButtons: UIButton()))
        ArrayCategories.append(Categories(CellImage: UIImage(named: "Test1")!))
        ArrayCategories.append(Categories(CellImage: UIImage(named: "Test1")!))
        ArrayCategories.append(Categories(CellImage: UIImage(named: "Test1")!))//, CellButtons: UIButton()))
       ArrayCategories.append(Categories(CellImage: UIImage(named: "Test1")!))
       ArrayCategories.append(Categories(CellImage: UIImage(named: "Test1")!))
    }

   //Collectionview required funcations:
    //How many cell will be appears 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ArrayCategories.count
    }
    
    //show the cell detailes:
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "CellCatoHome", for: indexPath) as! HomeCellControler
        let imageIndex = ArrayCategories[indexPath.row]
        Cell.setupCell(photo: imageIndex.CellImage)
        return Cell
    }
    
    /*to change the hige and width of the cell:
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.49, height: self.view.frame.width * 0.45)

    }*/
    
    //to reduce the line betwen the cells -:
    func collectionView(collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
            return 1.0
    }
    //to reduce the line betwen the cells |:
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    

 
}
