//
//  MainTabBarController.swift
//  LittlePinkPureCode
//
//  Created by Chengtszkong on 2025/1/12.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = createTabBarItem(viewController: HomeViewController(), title: "首页", imageName: "house")
        let mallVC = createTabBarItem(viewController: MallViewController(), title: "商城", imageName: "cart")
        let publishVC = createTabBarItem(viewController: PublishViewController(), title: "发布", imageName: "plus.rectangle")
        let messageVC = createTabBarItem(viewController: MessageViewController(), title: "消息", imageName: "message")
        let personVC = createTabBarItem(viewController: PersonViewController(), title: "我的", imageName: "person")
        
        // 添加子控制器
        self.viewControllers = [homeVC, mallVC, publishVC, messageVC, personVC]
        
        tabBar.tintColor = .systemPink
        tabBar.barTintColor = .white
        tabBar.backgroundColor = .white
    }
    
    private func createTabBarItem(
        viewController: UIViewController,
        title: String,
        imageName: String
    ) -> UINavigationController {
        viewController.title = title
        viewController.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: imageName), selectedImage: UIImage(systemName: "\(imageName).fill"))
        
        let navController = UINavigationController(rootViewController: viewController)
        // 自定义 UINavigationBar 样式
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .white
        
        navController.navigationBar.standardAppearance = appearance
        navController.navigationBar.scrollEdgeAppearance = appearance // 用于滚动时的外观
        
        return navController
    }
    
}
