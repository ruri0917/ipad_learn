//
//  CustomCell.m
//  CustomCellSample
//
//  Created by 前川 瑠璃 on 12/05/18.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize musicName;
@synthesize artistName;
@synthesize indexNO;
@synthesize searchBtn;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
