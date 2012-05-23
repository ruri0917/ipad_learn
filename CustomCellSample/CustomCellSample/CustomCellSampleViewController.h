//
//  CustomCellSampleViewController.h
//  CustomCellSample
//
//  Created by 前川 瑠璃 on 12/05/18.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellSampleViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>
{
 //   NSArray *namesArray;
}
@property(nonatomic, retain) NSArray *namesArray;
@property(nonatomic, retain) NSArray *artistArray;
@property(nonatomic, retain) NSArray *imageArray; 
@end
