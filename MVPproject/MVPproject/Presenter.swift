import Foundation

protocol PresentView {
    func updateLabel()
}

class Presenter {
    var ourView: PresentView?
    
    var timesTapped = 0
    
    init(ourView: PresentView) {
        self.ourView = ourView
    }
    
    func buttonTapped() {
        timesTapped += 1
        
        if timesTapped >= 3 {
            self.ourView?.updateLabel()
        }
    }
}
