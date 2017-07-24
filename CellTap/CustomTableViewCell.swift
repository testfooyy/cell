import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var testImageView: UIImageView!
    @IBOutlet weak var testLabel: UILabel!
    
    @IBOutlet weak var fooImageView: UIImageView!
    @IBOutlet weak var fooLabel: UILabel!
    
    
    func testCell(test: String, list: String) {
        testLabel.text = test
        let session = URLSession(configuration: URLSessionConfiguration.default, delegate: nil, delegateQueue: OperationQueue.main)
        let req = NSURLRequest(url: NSURL(string: list)! as URL)
        let task = session.dataTask(with: req as URLRequest, completionHandler: { (data, response, error) in
            if let imageData = data , let image = UIImage(data: imageData) {
                self.testImageView.image = image
                
            } else {
                print("Error!")
            }
        })
        task.resume()
        
        
    }
    
    func fooCell(test: String, list: String) {
        fooLabel.text = test
        let session = URLSession(configuration: URLSessionConfiguration.default, delegate: nil, delegateQueue: OperationQueue.main)
        let req = NSURLRequest(url: NSURL(string: list)! as URL)
        let task = session.dataTask(with: req as URLRequest, completionHandler: { (data, response, error) in
            if let imageData = data , let image = UIImage(data: imageData) {
                self.fooImageView.image = image
            } else {
                print("Error!")
            }
        })
        task.resume()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
