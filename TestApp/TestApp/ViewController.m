//
//  ViewController.m
//  TestApp
//
//  Created by krisyuhao on 2017/9/30.
//  Copyright © 2017年 krisyuhao. All rights reserved.
//

#import "ViewController.h"
#import <StaticLibrary.h>
#import <StaticFramework/StaticFramework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)buttonAction:(UIButton *)sender {
    
    [SLSimpleModel consoleString:@"can you stop angry now ?"];

//    [SFSimpleLog consoleString:@"i am so sorry"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
