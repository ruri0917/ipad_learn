//
//  animalDownloadTableViewController.h
//  animalDownloadTable
//
//  Created by 前川 瑠璃 on 12/05/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface animalDownloadTableViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *animalName;
    NSArray *animalPhoto;
}

@property(nonatomic, retain) NSArray *animalName;
@property(nonatomic, retain) NSArray *animalPhoto;

<<<<<<< HEAD


=======
>>>>>>> 4c1507447b7fc2e43d919411c94e9935441924ba
@end
