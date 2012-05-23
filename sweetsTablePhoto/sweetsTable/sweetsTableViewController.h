//
//  sweetsTableViewController.h
//  sweetsTable
//
//  Created by 前川 瑠璃 on 12/05/17.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface sweetsTableViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
{
    NSDictionary *names;
    NSArray *keys;
    NSDictionary *photoDic;
}

@property (nonatomic, retain) NSDictionary *names;
@property (nonatomic, retain) NSArray *keys;
@property (nonatomic, retain) NSDictionary *photoDic;
@end
