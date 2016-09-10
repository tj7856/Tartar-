//
//  ViewController.m
//  2015-07-01-ColorfulTabBarAnimation
//
//  Created by TangJR on 7/1/15.
//  Copyright (c) 2015 tangjr. All rights reserved.
//

#import "ViewController.h"
#import "TColorfulTabBar.h"
#import "UIColor+STColorInit.h"
#import "LYTtarBTN.h"

@interface ViewController ()
@property(nonatomic,weak)LYTtarBTN *v;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//     LYTtarBTN *view = [[LYTtarBTN alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
//    [self.view addSubview:view];
//    self.v = view;
//    [view doAnimation];
    UITabBarController *tabBarController = [UITabBarController new];
    
    for (int i = 0; i < 5; i ++) {
        
        UIViewController *viewController = [UIViewController new];
        viewController.view.backgroundColor = [UIColor colorWithHex:0x212F3F];
        viewController.title = [NSString stringWithFormat:@"item %d", i];
        [tabBarController addChildViewController:viewController];
    }
    
    TColorfulTabBar *tabBar = [[TColorfulTabBar alloc] initWithFrame:tabBarController.tabBar.frame];
    [tabBarController setValue:tabBar forKey:@"tabBar"];
    
    [self.view addSubview:tabBarController.view];
    [self addChildViewController:tabBarController];
}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [self.v doAnimation];
//}

@end