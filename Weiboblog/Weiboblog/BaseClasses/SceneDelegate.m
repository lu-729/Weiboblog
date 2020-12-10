//
//  SceneDelegate.m
//  Weiboblog
//
//  Created by chengpiao on 2020/11/18.
//

#import "SceneDelegate.h"
#import "HomeViewController.h" //首页
#import "SecondViewController.h" //中间
#import "ThirdViewController.h" //个人
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions  API_AVAILABLE(ios(13.0)){
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    //适配iOS13及以上版本
    if (@available(iOS 13.0, *)) {
        NSLog(@"iOS13及之后版本");
        self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        self.window.windowScene = (UIWindowScene *)scene;
        
        //添加NavigationController和TabbarController
        HomeViewController *homeVC = [[HomeViewController alloc] init];
        SecondViewController *secondVC = [[SecondViewController alloc] init];
        ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
        
        homeVC.title = @"首页";
        secondVC.title = @"中间";
        thirdVC.title = @"个人";
        homeVC.view.backgroundColor = [UIColor yellowColor];
        secondVC.view.backgroundColor = [UIColor redColor];
        thirdVC.view.backgroundColor = [UIColor purpleColor];
        
        UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];
        UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:secondVC];
        UINavigationController *thirdNav = [[UINavigationController alloc] initWithRootViewController:thirdVC];
        
        UITabBarController *tabBarController = [[UITabBarController alloc] init];
        [tabBarController addChildViewController:homeNav];
        [tabBarController addChildViewController:secondNav];
        [tabBarController addChildViewController:thirdNav];
        
        self.window.rootViewController = tabBarController;
        [self.window makeKeyAndVisible];
    }
}


- (void)sceneDidDisconnect:(UIScene *)scene  API_AVAILABLE(ios(13.0)){
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene  API_AVAILABLE(ios(13.0)){
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene  API_AVAILABLE(ios(13.0)){
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene  API_AVAILABLE(ios(13.0)){
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene  API_AVAILABLE(ios(13.0)){
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
