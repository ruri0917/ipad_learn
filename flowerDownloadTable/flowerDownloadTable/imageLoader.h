//
//  imageLoader.h
//  flowerDownloadTable
//
//  Created by 前川 瑠璃 on 12/05/22.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import <Foundation/Foundation.h>
@class flowerDownloadTableViewController;
//@interface imageLoader : NSOperation
@interface imageLoader : UIView
{
  @private
  NSMutableData *imageData;
}
//@property(nonatomic, unsafe_unretained)flowerDownloadTableViewController *viewController;
@property(nonatomic, strong) UITableViewCell *flowerCell;
@property(nonatomic, strong) NSString *flowerName;

- (void) getFlowerImage:(NSURL *)url;
@end
