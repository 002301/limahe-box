//
//  InComingViewController.m
//  LimaHeBox
//
//  Created by jianting on 16/3/25.
//  Copyright © 2016年 jianting. All rights reserved.
//

#import "InComingViewController.h"

@interface InComingViewController ()

@end

@implementation InComingViewController

- (void)dealloc {
    self.title = nil;
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNavigationTitle:self.title];
    //背景图
    UIImageView *imageView = [[[UIImageView alloc] initWithFrame:self.view.bounds] autorelease];
    imageView.image = [UIImage imageNamed:@"main_bg"];
    [self.view addSubview:imageView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.height-180, self.view.width, 100)];
    label.lineBreakMode = NSLineBreakByCharWrapping;
    label.numberOfLines = 2;
    label.text = @"功能测试中\n即将上线 敬请期待";
    label.font = [UIFont boldSystemFontOfSize:17];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor clearColor];
    [self.view addSubview:label];
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
