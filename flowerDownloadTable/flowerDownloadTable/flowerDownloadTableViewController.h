//
//  flowerDownloadTableViewController.h
//  flowerDownloadTable
//
//  Created by 前川 瑠璃 on 12/05/22.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface flowerDownloadTableViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, strong) NSArray *flowerName;
@property(nonatomic, strong) NSArray *flowerPhotoURL;
@end
