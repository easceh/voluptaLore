import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customView = CustomView()
        customView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customView)
        
        // Set customView constraints
        NSLayoutConstraint.activate([
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            customView.topAnchor.constraint(equalTo: view.topAnchor),
            customView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        // Create subviews
        let subview1 = UIView()
        subview1.backgroundColor = .red
        let subview2 = UIView()
        subview2.backgroundColor = .green
        let subview3 = UIView()
        subview3.backgroundColor = .blue
        
        // Add subviews with spacing
        customView.spacing(subviews: [subview1, subview2, subview3], cache: [])
    }
}
