//
//  ImageDownloader.h
//  DownloadTest
//
//  Created by 前川 瑠璃 on 12/05/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DownloadTestViewController;

@interface ImageDownloader : NSOperation
{
@private 
    NSMutableData *imageData;
}

@property(nonatomic, unsafe_unretained)DownloadTestViewController *viewController;

-(void)getGoogleImage;
@end
