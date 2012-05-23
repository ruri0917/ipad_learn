//
//  SecondViewController.h
//  AlbunNavTable
//
//  Created by 前川 瑠璃 on 12/05/23.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FirstIViewController;
@interface SecondViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) NSDictionary *albumSongs;
@property(nonatomic, strong) NSString *selectAlbumName;
@end
