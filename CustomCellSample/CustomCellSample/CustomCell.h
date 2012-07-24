//
//  CustomCell.h
//  CustomCellSample
//
//  Created by 前川 瑠璃 on 12/05/18.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property(nonatomic, retain) IBOutlet UILabel *musicName;
@property(nonatomic, retain) IBOutlet UILabel *artistName;
@property(nonatomic, retain) IBOutlet UILabel *indexNO;
@property(nonatomic, retain) IBOutlet UIButton *searchBtn;

@end
