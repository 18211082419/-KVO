//
//  TestViewController.m
//  自定义KVO
//
//  Created by shifx on 2020/11/4.
//

#import "TestViewController.h"
#import "NSObject+SafeKVO.h"
#import "IFPerson.h"

@interface TestViewController ()

@property (nonatomic, strong) IFPerson *person;

@end

@implementation TestViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    self.person = [[IFPerson alloc] init];
    self.person.name = @"哈哈";
    [self.person safeAddObserver:self keyPath:@"name" options:SafeKeyValueObservingOptionNew context:NULL handleBlock:^(id  _Nonnull observer, NSString * _Nonnull keyPath, id  _Nonnull oldValue, id  _Nonnull newValue) {
        NSLog(@"keyPath = %@\n oldValue = %@\n newValue = %@",keyPath,oldValue,newValue);
    }];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.person.name = [NSString stringWithFormat:@"%@ +",self.person.name];
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"%@",change);
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
