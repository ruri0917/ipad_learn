//
//  FirstIViewController.h
//  AlbunNavTable
//
//  Created by 前川 瑠璃 on 12/05/23.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SecondViewController;

@interface FirstIViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong)NSArray *albumNames;
@property(nonatomic, strong)NSArray *albumJackets;
@property(nonatomic, strong)NSArray *albumSinger;
@property(assign, nonatomic)NSString *selecrAlbum;

@property(nonatomic, strong)SecondViewController *nextController;

@end