//
//  HomeViewController.m
//  Weiboblog
//
//  Created by chengpiao on 2020/12/7.
//

#import "HomeViewController.h"
#import <WebKit/WebKit.h>

#define kAppKey         @"2802319162"
#define kRedirectURI    @"https://api.weibo.com/oauth2/default.html"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加webVeiw显示用户授权页面
//    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];  DEPRECATED
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:webView];
    //创建新浪微博OAuth认证页面URL
//    http://api.weibo.com/oauth2/default.html
    
    NSString *urlStr = [NSString stringWithFormat:@"https://api.weibo.com/oauth2/authorize&client_id=%@&redirect_uri=%@",kAppKey,kRedirectURI];
    NSURL *url = [NSURL URLWithString:urlStr];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    
}


@end
