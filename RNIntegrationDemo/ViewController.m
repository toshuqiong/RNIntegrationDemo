//
//  ViewController.m
//  RNIntegrationDemo
//
//  Created by shuqiong on 2018/3/1.
//  Copyright © 2018年 shuqiong. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"
#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button1 = [self addButtonWithText:@"button1"];
    [button1 mas_updateConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.view).offset(-44);
    }];
    [button1 addTarget:self action:@selector(goNext:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2 = [self addButtonWithText:@"button2"];
    [button2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(button1.mas_bottom).offset(10);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIButton *)addButtonWithText:(NSString *)text {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:text forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    button.layer.cornerRadius = 5;
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(44);
        make.centerX.mas_equalTo(self.view);
//        make.centerY.mas_equalTo(self.view).offset(-44);
    }];
    return button;
}

- (void)goNext:(id)sender {
    ViewController1 *vc = [[ViewController1 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
