### SwiftUI Concepts Tutorials

1. To access the symbols and features of SwiftUI, the app uses an import declaration to import the SwiftUI framework. 导入SwiftUI库使用；
2. To indicate the entry point of the SwiftUI app, the sample applies the @main attribute to the app structure. @main指定app入口，只能有一个；
3. The MyApp structure conforms to the App protocol, and provides the content of the app and its behavior. 实现App协议，提供程序内容和行为；
4. The structure implements the computed property body, which is a requirement of the App protocol. App协议，需要制定body计算属性，body遵守Scene协议；A scene contains the view hierarchy that defines the app’s user interface. SwiftUI provides different types of scenes including WindowGroup, Window, DocumentGroup, and Settings. Scene包含了应用界面，可以是WindowGroup, Window, DocumentGroup, Settings类型；
5. This sample uses a WindowGroup scene to represent the main window that the app displays. WindowGroup scene 表示应用程序现实的主窗口；
6. The scene contains ContentView, a custom view that creates a view hierarchy that consists of an image and text. ContentView 创建视图显示在window上；
7. ContentView is a structure that conforms to the View protocol. ContentView遵守View协议；
8. A view defines one or more visual elements that appear somewhere on a screen. A view is typically made up of other views, creating a view hierarchy. View定义视图元素，显示在屏幕上，视图由其他视图组成，构成视图树；
9. ContentView implements the computed property body, just like the ‘MyApp’ structure does in the previous section. 实现View协议中的body计算属性，返回View；
10. ContentView contains the SwiftUI-provided view VStack, which arranges subviews vertically. VStack 使子视图垂直排列；
11. 使用preferredColorScheme设置预览页面PreviewProvider为深色模式；
12. A VStack simultaneously renders any on- or off-screen views it contains. Using VStack is ideal when you have a small number of subviews. However, if your app needs to display many more subviews, consider using LazyVStack, which only renders the views when the app needs to display them onscreen. 使用VStack垂直排列多个子视图，很多子视图时使用LazyVStack，懒加载，只加载屏幕上显示的子视图；
13. The sample displays an image of a globe using the initializer method init(systemName:). This method creates an image view that displays a system symbol image. Symbol images like globe come from SF Symbols, a library of icons that you can use in your app. 使用init(systemName:)加载系统图片，SF Symbols可以查看所有供使用的图标，app中也可以使用；
14. ContentView applies the view modifier `imageScale(_:)` to the image view to scale the image within the view to the relative size Image.Scale.large. 使用image的`imageScale(_:)`修饰语修改图片大小；The `foregroundColor(_:)` modifier adds color to the image view. `foregroundColor(_:)`修饰语修改视图前景颜色，accentColorApp或者系统定义的强调颜色；
15. The second subview of VStack is Text, a view that displays one or more lines of read-only text. Text组件，展示一行或多行文本，类似Label；
16. ContentView applies the padding(_:_:) modifier to the VStack, adding a platform-specific default amount of padding — that is, space — to the edges of the VStack view. padding(_:_:)修饰语，在视图四周添加空白；
17. The root node of the view hierarchy is TabView, a container view that provides tabs that people can use to switch between different subviews. TabView容器，可以添加多个tabs，tabs之间可以切换；
18. Each of these views apply the `tabItem(_:)` modifier, which tells the TabView the image and text to display in each tab. view的`tabItem(_:)`修饰语，设置view对应的Tab属性；
19. NavigationView导航页面，里面的NavigationLink指定要导航的详情页面，通常配合List使用，List外面的组件是详情页面默认显示的；
20. The sample uses the secondary scene Settings to provide a Settings menu item that’s available in the app menu, which is a common feature of Mac apps. Settings scene 提供设置菜单，在Mac app中；
21. A conditional compilation block tells the Swift compiler to conditionally compile the code block depending on the value of one or more compilation conditions. Swift支持条件编译；
22. 
