//
//  DownloadTestViewController.m
//  DownloadTest
//
//  Created by 前川 瑠璃 on 12/05/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DownloadTestViewController.h"

#import "ImageDownLoader.h"

@interface DownloadTestViewController ()

@end

@implementation DownloadTestViewController

@synthesize myImageView;
- (void)viewDidLoad
{
    [super viewDidLoad];
    ImageDownloader *loader = [[ImageDownloader alloc] init];
    loader.viewController = self;
    
    [loader getGoogleImage];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
