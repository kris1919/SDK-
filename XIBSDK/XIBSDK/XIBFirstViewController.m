//
//  XIBFirstViewController.m
//  XIBSDK
//
//  Created by tsfa on 2018/9/21.
//  Copyright © 2018年 Marco. All rights reserved.
//

#import "XIBFirstViewController.h"

@interface XIBFirstViewController ()

@end

@implementation XIBFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"XIBSDKBundle" ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    
    UILabel *label = [UILabel new];
    label.text = NSLocalizedString(@"hello", nil);
    label.frame = CGRectMake(100, 100, 100, 30);
    [self.view addSubview:label];
}
-(instancetype)xib_init{
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"XIBSDKBundle" ofType:@"bundle"];
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"XIBStoryboard" bundle:[NSBundle bundleWithPath:bundlePath]];
    XIBFirstViewController *xibVC = [sb instantiateViewControllerWithIdentifier:@"xib_first"];
    return xibVC;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
