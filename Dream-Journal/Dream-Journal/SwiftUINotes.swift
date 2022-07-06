
/*
 1) make a ContextView in the file
 - struct ContextView: View
 - define the body
 - HStack, VStack, ZStack
 ZStack {
 // if you want it vertical
 VStack {
 // if you want it inline horizontal
 HStack{
 
 }
 }
 }
 
 - Z Stack Layered
 ZStack {
     // very bottom
     Rectangle().fill(.ultraThinMaterial)
     // very top
     Text("Tap me")
 }
 
 
 // MARK: - Objects
 
 // IMAGE - image file
 Image("Tim") // <-- drag into Assets file and name exactly
 
 // STYLE CSS
 .clipShape(Circle())
 .aspectRatio(contentMode: .fit)
 .resizable()
 
 
 // IMAGE - System Name
 Image(systemName: "checkmark.seal.fill") // built in
 // look up in SF Symbols
 
 // TEXT:
 Text("Hello World")
 image(systemName: "checkmark.seal.fill")
 
 // TEXT FIELD:
 TextField("Placeholder", text: $text ) // <-- this is a state variable
 @State var text: String = "" // < -- this is binding

 // MARK: - View Modifiers - CSS - .changeView
 // alignment:
 alignment: .leading
 
 // padding:
 .padding(.top)
 
 // spacing
 spacing: 4
 
 // offset
 .offset(y:90)
 
 // size
 .frame(width: 150, height: 150)
 
 // aspect ratio
 .aspectRatio(contentMode: .fit)
 
 
 // background
 .foregroundColor(Color.blue)
 
 
 // image
 .clipShape(Circle())
 .imageScale(.large)
 
 // viewWillAppear
 .onAppear()
 
 // MARK: - FONT
 // .font(.title)
 
 
 // change weight:
 .fontWeight(.ultraLight)
 options: .ultraLight, .heavy
 
 // change the color: .foregroundColor(Color.blue)
 
 
 */

// MARK: Navigation
/*
NavigationView {
    List {
        forEach(1..<5) { item in
            VStack(alignment: .leading, spacing: 8) {
                Text("title")
                    .bold()
                    .font(.headline)
                Text("Body")
                    .font(.system(size:14))
                    .padding()
            }.padding(.vertical, 24)
        }
    }
}.navigationTitle("Dream Journal")
*/

// Destination - Navigation
/*
NavigationLink{
    // Destination
    Text("Hello Hackbright")
}
*/

// MARK: - List
/*
 List {
 .listStyle(.plain)
 .listStyle(.insetGroup)
 }
 */


