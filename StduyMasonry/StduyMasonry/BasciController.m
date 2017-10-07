//
//  BasciController.m
//  StduyMasonry
//
//  Created by 五月 on 2017/10/7.
//  Copyright © 2017年 孙凯峰. All rights reserved.
//

#import "BasciController.h"
#import "Masonry.h"
@interface BasciController ()
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label1;

@property (weak, nonatomic) IBOutlet UILabel *label0;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;
@end

@implementation BasciController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(100);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(80);
    }];
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view.mas_centerX);
        make.top.mas_equalTo(100);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(80);
    }];
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-20);// 标注右边界距离为20，用-20表示，同理到下边界
        make.top.mas_equalTo(self.label1.mas_top);
        make.width.mas_equalTo(self.label1.mas_width);
        make.height.mas_equalTo(self.label1.mas_height);
    }];
    [self.label3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.label0.mas_left);
        make.right.mas_equalTo(self.label2.mas_right);
        make.top.mas_equalTo(self.label2.mas_bottom).offset(20);
        make.height.mas_equalTo(20);
    }];
    [self.label4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.label3.mas_bottom).offset(20);
        make.left.mas_equalTo(self.label0.mas_left);
        make.right.mas_equalTo(self.label2.mas_right);
        make.height.equalTo(self.label4.mas_width).multipliedBy(0.5);
    }];
    [self.label5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.view.mas_bottom).offset(-20);
        make.left.mas_equalTo(self.label0.mas_left);
        make.right.mas_equalTo(self.label2.mas_right);
        make.height.equalTo(self.label4.mas_width).multipliedBy(0.3);
    }];
    
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
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
