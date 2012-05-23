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
<<<<<<< HEAD
//@interface imageDownloader : UIView
=======
>>>>>>> 4c1507447b7fc2e43d919411c94e9935441924ba
{
    @private
    NSMutableData *imageData;
}

@property(nonatomic, unsafe_unretained)animalDownloadTableViewController *viewController;
<<<<<<< HEAD
@property(nonatomic, strong) UITableViewCell *animalCell;
@property(nonatomic, strong) NSString *animalName;

=======
>>>>>>> 4c1507447b7fc2e43d919411c94e9935441924ba
-(void) getAnimalImage:(NSURL *)url;
@end
