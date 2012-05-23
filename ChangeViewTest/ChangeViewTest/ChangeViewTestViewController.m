//
//  ChangeViewTestViewController.m
//  ChangeViewTest
//
//  Created by 前川 瑠璃 on 12/05/21.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import "ChangeViewTestViewController.h"

@interface ChangeViewTestViewController ()

@end

@implementation ChangeViewTestViewController

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //＊＊＊＊アニメーション処理開始
    [UIView beginAnimations:nil context:NULL]; 

    //1回のアニメーションを0.75秒に設定
    [UIView setAnimationDuration:0.75];
    
    //左から右に回転
//    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
    //右から左に回転
//    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
    //ページをめくるように（下から上）
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
    //ページをめくるように（上から下）
//    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.view cache:YES];
    
    
    if (newView.superview){
        NSLog(@"blueView");
    //newViewが他のviewにAddされている場合、親Viewから削除
    [newView removeFromSuperview];
    }else {
        NSLog(@"pingView");
    //newViewが他のviewにAddされていない場合、self.viewにAdd
    [self.view addSubview:newView];
    }
    
    //＊＊＊＊＊アニメーション処理終了    
    [UIView commitAnimations];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
