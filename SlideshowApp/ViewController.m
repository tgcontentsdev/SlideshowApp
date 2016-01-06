//
//  ViewController.m
//  SlideshowApp
//
//  Created by tgaiacontentsdev on 2016/01/05.
//  Copyright (c) 2016年 tgaiacontentsdev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSInteger countNumber;
    UIImageView *aImageView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    countNumber = 0;
    [self setupBackground];
    [self setupButton];
    
}

-(void)setupBackground{
    aImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 414, 736)];
    aImageView.image = [UIImage imageNamed:@"MJ1.jpg"];
    
    [self.view addSubview:aImageView];
    
}

-(void)setupButton{
  //戻るボタン
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(0, 0, 50, 50);
    button1.center = CGPointMake(35, 630);
    [button1 setImage:[UIImage imageNamed:@"left1.png"] forState:UIControlStateNormal];
    [button1 setImage:[UIImage imageNamed:@"left2.png"] forState:UIControlStateHighlighted];
    [button1 addTarget:self action:@selector(changeImage1:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button1];
    
   //進むボタン
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(0, 0, 50, 50);
    button2.center = CGPointMake(340, 630);
    [button2 setImage:[UIImage imageNamed:@"right1"] forState:UIControlStateNormal];
    [button2 setImage:[UIImage imageNamed:@"right2"] forState:UIControlStateHighlighted];
    [button2 addTarget:self action:@selector(changeImage2:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button2];
    
}

-(void)changeImage1:(id)sender{
    //戻る動作
    if (countNumber==0) {
        countNumber = 7;
    }
    countNumber--;
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"MJ%ld.jpg",(long)countNumber]];
    if (countNumber==1) {
        countNumber = 7;
    }
}

-(void)changeImage2:(id)sender{
    //進む動作
    if (countNumber==7) {
        countNumber = 0;
    }
    countNumber++;
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"MJ%ld.jpg",(long)countNumber]];
    if (countNumber==6) {
        countNumber = 0;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
