//
//  imageDownloader.h
//  animalDownloadTable
//
//  Created by 前川 瑠璃 on 12/05/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class animalDownloadTableViewController;

@interface imageDownloader : NSOperation
{
    @private
    NSMutableData *imageData;
}

@property(nonatomic, unsafe_unretained)animalDownloadTableViewController *viewController;
-(void) getAnimalImage:(NSURL *)url;
@end
