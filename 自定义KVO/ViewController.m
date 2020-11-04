//
//  ViewController.m
//  自定义KVO
//
//  Created by shifx on 2020/11/4.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[TestViewController new] animated:YES];
//    [self.navigationController pushViewController:[[TestViewController alloc] init] animated:YES];
}


@end
