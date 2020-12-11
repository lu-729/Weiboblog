//
//  SignInOrSignUpView.m
//  Weiboblog
//
//  Created by chengpiao on 2020/12/11.
//

#import "SignInOrSignUpView.h"

@implementation SignInOrSignUpView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self loadSubView];
    }
    return self;
}

- (void)loadSubView {
    self.SignInWithAppleIDBtn = [[UIButton alloc] init];
    [self.SignInWithAppleIDBtn setTitle:@"SignInWithAppleID " forState:UIControlStateNormal];
    [self.SignInWithAppleIDBtn addTarget:self action:@selector(SignInWithAppleIDBtn) forControlEvents:UIControlEventTouchUpInside];
}

// AppleID 登陆按钮点击事件
- (void)SignInWithAppleID {
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
