//
//  ViewController1.m
//  RNIntegrationDemo
//
//  Created by shuqiong on 2018/3/1.
//  Copyright © 2018年 shuqiong. All rights reserved.
//

#import "ViewController1.h"
#import <React/RCTRootView.h>

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:[NSURL URLWithString:@"http://192.168.0.244:8081/index.bundle?platform=ios"] moduleName:@"RNIntegration" initialProperties:@{} launchOptions:nil];
    self.view = rootView;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
