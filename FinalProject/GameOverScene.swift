import SpriteKit

class GameOverScene: SKScene {
    
    override func didMove(to view: SKView) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let homeButton = childNode(withName: "home button")
        
        if let touch = touches.first {
            let pos = touch.location(in: self)
            let node = self.atPoint(pos)
            
            // present home screen if home button was touched
            if node.name == "home button" {
                print("tapped home")
                if view != nil {
                    if let scene = SKScene(fileNamed: "StartScene") {
                        // set the scale mode to scale to fit the window
                        scene.scaleMode = .aspectFill
                        
                        // present the scene
                        let transition:SKTransition = SKTransition.doorsCloseVertical(withDuration: 2)
                        self.view?.presentScene(scene, transition: transition)
                    }
                    
                    view?.ignoresSiblingOrder = true
                    view?.showsFPS = false
                    view?.showsNodeCount = false
                }
            }
        }
    }
}
