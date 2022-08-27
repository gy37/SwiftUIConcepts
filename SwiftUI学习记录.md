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
22. A Text view displays read-only text, Text组件用来显示只读文本；
23. Symbols, such as the iconography that SF Symbols provides, can denote common app features, like folders, heart shapes for favorites, or a camera icon to access the camera. 图标可以表明常用功能；Effective symbols streamline your app’s UI, and are easily recognizable by the people who use your app. 有效的图标可以连接你的app，也让用户更容易识别；You can customize their colors and sizes using standard view modifiers provided in SwiftUI. Even though you specify a system or custom symbol in an Image, treat SF Symbols more like text. 可以使用视图的修改器来设置图标颜色和大小，和Text类似； 
24. To use both text and a symbol to represent a single element in your app, use a Label. 同时显示文字和图标，使用Label；
25. Views that people interact with come in discrete sizes, to maintain consistency when several elements of the same type appear together, like in a Settings pane. Controls also need to be large enough for people to accurately click or tap. You can use view modifiers to choose among these sizes. 一组用户交互的Control组件，可以通过Control相关的属性来统一设置，保持一致；
26. 通常使用enum Enums: String, CaseIterable, Identifiable {}定义枚举；
27. Use this modifier to differentiate among certain selectable views, like the possible values of a Picker or the tabs of a TabView. Tag values can be of any type that conforms to the Hashable protocol. tag修改器用来区分一系列选择视图，遵守Hashable协议的值都可以作为tag使用；
28. Display photos and other rich graphics in an Image. By default, an Image displays at the asset’s original size. You can add modifiers like resizable(capInsets:resizingMode:) and scaledToFit() or scaledToFill() to scale it to the available space. 使用Image显示图片，默认使用图片原始大小，可以使用修改器适配大小；
29. If you’re accessing an image asset from a server, use an AsyncImage to handle the download while keeping your app responsive. 使用AsyncImage组件异步加载网络图片；
30. Use a single shape or a composition of multiple shapes to create a background, border, or other visual element. You can define a shape’s size with a modifier like frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:), or allow it to fill all available space. 形状，可以通过修饰器修改；
31. Defining the caption inside overlay(alignment:content:) declares that the caption belongs in front of the image. The size of the primary view limits the size of the overlay(alignment:content:) that modifies the primary view. 使用(alignment:content:)声明一个视图覆盖在当前视图上；覆盖视图大小由当前视图决定；
32. Choose carefully how to combine padding with an overlay or background modifier. If you pad the primary view before modifying it with the overlay or background, the system uses the size of the padded primary view to calculate the placement of the secondary view. Apply the padding after the overlay or background to put a little space around the view that includes both layers. padding和overlay或者background修改器一起使用时，需要注意顺序；先使用padding，系统会以padding后的视图尺寸计算其他子视图；后使用padding，会在当前视图和子视图同时添加padding；
33. The TextContrast color set in this project’s asset catalog defines separate color values for light and dark appearances. 在asset中可以增加自定义颜色，用来适配夜间模式主题；
34. A background modifier like `background(_:in:fillStyle:)` is similar to an overlay modifier, in that its content bases its size on the size of the view it modifies. However, a background modifier puts its contents behind the view it modifies, rather than in front. background修改器和overlay类似，只是在视图的后面，不是前面；
35. 

