//
//  AppDelegate.m
//  Weiboblog
//
//  Created by chengpiao on 2020/11/18.
//

#import "AppDelegate.h"
#import "HomeViewController.h" //首页
#import "SecondViewController.h" //中间
#import "ThirdViewController.h" //个人
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //适配iOS12及以下版本
    if (@available(iOS 13,*)) {
        
    } else {
        NSLog(@"iOS12及之前版本");
        self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        self.window.backgroundColor = [UIColor yellowColor];
        
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
        
//        self.window.rootViewController = vc;
        [self.window makeKeyAndVisible];
    }
    return YES;
}




#pragma mark - UISceneSession lifecycle

- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options  API_AVAILABLE(ios(13.0)){
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions  API_AVAILABLE(ios(13.0)){
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}

/*
 - (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
     // Called when a new scene session is being created.
     // Use this method to select a configuration to create the new scene with.
     return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
 }


 - (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
     // Called when the user discards a scene session.
     // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
     // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
 }
 */

@end
