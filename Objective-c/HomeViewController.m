//
//  HomeViewController.m
//  PushNoticationsDemo
//
//  Created by Sudhakar on 09/01/20.
//  Copyright © 2020 Bayer. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NameManager * manager = [[NameManager alloc]initWithName:@"sudhakar"];
    NSString * name = [manager requestForName];
    NSLog(name);

    // Do any additional setup after loading the view.
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
