//
//  ViewController1.m
//  Swift&OC_Mix
//
//  Created by 徐银 on 16/7/30.
//  Copyright © 2016年 徐银. All rights reserved.
//

#import "ViewController1.h"
#import "SwiftOC-swift.h"
@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view.
}

-(void)swiftTransOC:(UIViewController *)vc
{
    NSLog(@" - swiftTransOC -- %@",NSStringFromClass([self class]));
    UIAlertController *tips = [UIAlertController alertControllerWithTitle:@"Swift调用OC" message:NSStringFromClass([self class]) preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *act = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [tips addAction:act];
    [vc  presentViewController:tips animated:YES completion:nil];
}

-(void)OCTransferSwift:(UIViewController *)vc
{
    if([vc isKindOfClass:[ViewController class]])
    {
        [(ViewController *)vc forOCFuction];
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
