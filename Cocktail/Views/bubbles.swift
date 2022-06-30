import SwiftUI
struct MyParentView: View {
    @State var replay: Bool = true
    
    var body: some View {
        ZStack{
        
            
            BubbleEffectView(replay: $replay)
            
            
        }
    }
}
struct BubbleEffectView: View {
    @StateObject var viewModel: BubbleEffectViewModel = BubbleEffectViewModel()
    @Binding var replay: Bool
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                //Show bubble views for each bubble
                ForEach(viewModel.bubbles){bubble in
                    BubbleView(bubble: bubble)
                }
            }.onChange(of: replay, perform: { _ in
                viewModel.addBubbles(frameSize: geo.size)
            })
            
            .onAppear(){
                //Set the initial position from frame size
                // viewModel.viewBottom = geo.size.height
                viewModel.viewBottom = geo.size.height * 1.5
                viewModel.addBubbles(frameSize: geo.size)
            }
        }
    }
}
class BubbleEffectViewModel: ObservableObject{
    @Published var viewBottom: CGFloat = CGFloat.zero
    @Published var bubbles: [BubbleViewModel] = []
    private var timer: Timer?
    private var timerCount: Int = 100
    @Published var bubbleCount: Int = 50
    
    func addBubbles(frameSize: CGSize){
        let lifetime: TimeInterval = 7
        //Start timer
        timerCount = 0
        if timer != nil{
            timer?.invalidate()
        }
        timer = Timer.scheduledTimer(withTimeInterval: 0.7, repeats: true) { (timer) in
            let bubble = BubbleViewModel(height: 25, width: 25, x: frameSize.width/3, y: self.viewBottom, color: .indigo, lifetime: lifetime)
            //Add to array
            self.bubbles.append(bubble)
            //Get rid if the bubble at the end of its lifetime
            Timer.scheduledTimer(withTimeInterval: bubble.lifetime, repeats: true, block: {_ in
                self.bubbles.removeAll(where: {
                    $0.id == bubble.id
                })
            })
            if self.timerCount >= self.bubbleCount {
                //Stop when the bubbles will get cut off by screen
                timer.invalidate()
                self.timer = nil
            }else{
                self.timerCount += 1
            }
        }
    }
}
struct BubbleView: View {
    //If you want to change the bubble's variables you need to observe it
    @ObservedObject var bubble: BubbleViewModel
    @State var opacity: Double = 0
    var body: some View {
        Circle()
            .foregroundColor(bubble.color)
            .opacity(opacity)
            .frame(width: bubble.width, height: bubble.height)
            .position(x: bubble.x, y: bubble.y)
            .onAppear {
                
                withAnimation(.linear(duration: bubble.lifetime)){
                    //Go up
                    self.bubble.y = -bubble.height/1
                    //Go sideways
                    self.bubble.x += bubble.xFinalValue()
                    //Change size
                    let width = bubble.yFinalValue()
                    self.bubble.width = width*1.5
                    self.bubble.height = width*1.5
                }
                //Change the opacity faded to full to faded
                //It is separate because it is half the duration
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    withAnimation(.linear(duration: bubble.lifetime/2).repeatForever()) {
                        self.opacity = 1
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    withAnimation(Animation.linear(duration: bubble.lifetime/4).repeatForever()) {
                        //Go sideways
                        //bubble.x += bubble.xFinalValue()
                    }
                }
            }
    }
}
class BubbleViewModel: Identifiable, ObservableObject{
    let id: UUID = UUID()
    @Published var x: CGFloat
    @Published var y: CGFloat
    @Published var color: Color
    @Published var width: CGFloat
    @Published var height: CGFloat
    @Published var lifetime: TimeInterval = 0
    init(height: CGFloat, width: CGFloat, x: CGFloat, y: CGFloat, color: Color, lifetime: TimeInterval){
        self.height = height
        self.width = width
        self.color = color
        self.x = x
        self.y = y
        self.lifetime = lifetime
    }
    func xFinalValue() -> CGFloat {
        return CGFloat.random(in:-width*CGFloat(lifetime*2.5)...width*CGFloat(lifetime*2.5))
    }
    func yFinalValue() -> CGFloat {
        return CGFloat.random(in:0...width*CGFloat(lifetime*0.5))
    }
    
}
struct MyParentView_Previews: PreviewProvider {
    static var previews: some View {
        MyParentView()
    }
}
