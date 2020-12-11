//
//  SignInOrSignUpView.h
//  Weiboblog
//
//  Created by chengpiao on 2020/12/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SignInOrSignUpView : UIView

@property (nonatomic, strong) UIButton      *AreaCodeBtn;//选择区号按钮
@property (nonatomic, strong) UITextField   *PhoneNumberTextField;//输入手机号文本框
@property (nonatomic, strong) UIView        *TheFisrtDividingLine;//分割线
@property (nonatomic, strong) UIButton      *GetVerificationCodeBtn;//获取验证码按钮
@property (nonatomic, strong) UIButton      *SignInWithAcconutBtn;//使用账号密码登陆
@property (nonatomic, strong) UIButton      *ChangePhoneNumberBtn;//更换手机号按钮
@property (nonatomic, strong) UIButton      *ProblemBtn;//遇到问题按钮
@property (nonatomic, strong) UIView        *TheSecondDividingLine;//分割线
@property (nonatomic, strong) UILabel       *OtherSignInLabel;//其他登陆方式文本
@property (nonatomic, strong) UIButton      *SignInWithSinaBtn;//新浪微博登陆按钮
@property (nonatomic, strong) UIButton      *SignInWithAppleIDBtn;//苹果账号登陆按钮

@end

NS_ASSUME_NONNULL_END
