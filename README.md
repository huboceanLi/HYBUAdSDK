# HYBUAdSDK

[![CI Status](https://img.shields.io/travis/li437277219@gmail.com/HYBUAdSDK.svg?style=flat)](https://travis-ci.org/li437277219@gmail.com/HYBUAdSDK)
[![Version](https://img.shields.io/cocoapods/v/HYBUAdSDK.svg?style=flat)](https://cocoapods.org/pods/HYBUAdSDK)
[![License](https://img.shields.io/cocoapods/l/HYBUAdSDK.svg?style=flat)](https://cocoapods.org/pods/HYBUAdSDK)
[![Platform](https://img.shields.io/cocoapods/p/HYBUAdSDK.svg?style=flat)](https://cocoapods.org/pods/HYBUAdSDK)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

1、配置

info.plist增加

GADIsAdManagerApp = YES

NSUserTrackingUsageDescription = "App需要请授权访问唯一标示（idfa）, 可以为您推荐更好的广告"

build setting 修改 BitCode = NO


如果打包报错尝试一下代码
https://www.jianshu.com/p/e31ceb3e83df (谢谢支持！)

2、initSDK

#import <HYBUAdADK/HYBUAdADK.h>

AppDelegate的didFinishLaunchingWithOptions中实现以下方法 

    __weak typeof(self) weakSelf = self;
    [[HYLinkManager shared] loadWithWindow:self.window recordName:@"xxxxx.xxxx.xxxx.xxxx.xxxxxx" recordID:@"iCloud.xxx.xx.x.xxxx" enter:^(BOOL pt) {
        dispatch_async(dispatch_get_main_queue(), ^{
            //跳转到原生 --
            ViewController * loginVC = [[ViewController alloc] init];
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            weakSelf.window.rootViewController = nav;
        });
    }];
    
    
   备注： netWorkTip传空或者nil则不显示net error界面
   
3、原生调用插页

//根据初始化自动适配google或buad

    [[HYExpressInsertManager shared] showVideoAD:self.navigationController State:^(BOOL sucess) {
        if (sucess) {
            dispatch_async(dispatch_get_main_queue(), ^{
                //点击事件后跳转代码
            });
        }
    }];
    
4、原生调用banner

    [[HYBannerManager shared] showBannerADWithFrame:CGRectMake(0, 0, 0, 0) VC:self];

## Requirements

## Installation

HYBUAdSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HYBUAdSDK','~> 0.1.3'
```

## Author

li437277219@gmail.com, lihaiyang@snqu.com

## License

HYBUAdSDK is available under the MIT license. See the LICENSE file for more info.
