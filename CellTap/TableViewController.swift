import UIKit

class TableViewController: UITableViewController {
    var myItems = ["TEST1", "TEST2", "TEST3"]
    var list = ["https://pbs.twimg.com/media/DFVMcBQUIAAVymK.jpg", "https://pbs.twimg.com/media/DFYrlUeVoAAwLLx.jpg", "https://pbs.twimg.com/media/DFZCE9-XoAITns1.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 20
        tableView.rowHeight = UITableViewAutomaticDimension

    }
 
    
    @IBAction func foo(_ sender: UITapGestureRecognizer) {
        let tappedLocation = sender.location(in: tableView)
        let tappedIndexPath = tableView.indexPathForRow(at: tappedLocation)
        let tappedRow = tappedIndexPath?.row
        print(tappedRow)
    }
    
    
    @IBAction func bar(_ sender: UITapGestureRecognizer) {
            let tappedLocation = sender.location(in: tableView)
            let tappedIndexPath = tableView.indexPathForRow(at: tappedLocation)
            let tappedRow = tappedIndexPath?.row
            print(tappedRow)
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if self.myItems[indexPath.row] == "TEST1" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "testCell") as! CustomTableViewCell
            
            cell.testCell(test: myItems[indexPath.row] , list: list[indexPath.row] )
            cell.layoutIfNeeded()
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "fooCell") as! CustomTableViewCell
            cell.fooCell(test: myItems[indexPath.row] , list: list[indexPath.row] )
            cell.layoutIfNeeded()
            return cell
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems.count
    }
    
}
