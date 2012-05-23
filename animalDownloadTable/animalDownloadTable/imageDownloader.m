//
//  imageDownloader.m
//  animalDownloadTable
//
//  Created by 前川 瑠璃 on 12/05/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "imageDownloader.h"
#import "animalDownloadTableViewController.h"

@implementation imageDownloader

@synthesize viewController;
@synthesize animalCell;
@synthesize animalName;

- (void)getAnimalImage:(NSURL *)url {
  NSData* imageNSData = [[NSUserDefaults standardUserDefaults] objectForKey:self.animalName]; 
  if(imageNSData) {
    NSLog(@"get NSUserDefaults...");
    UIImage* image = [UIImage imageWithData:imageNSData];   
    self.animalCell.imageView.image = image;
    [self.animalCell setNeedsLayout];  

  }else{  
 
    imageData = [NSMutableData data];    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection connectionWithRequest:request delegate:self];
    NSLog(@"starting download...");
  }
}

#pragma mark -
#pragma NSOperation Delegate Methods

// データの一部を受け取ったら呼ばれる
- (void)connection:(NSURLConnection *)connection 
  didReceiveData:(NSData *)data {
  NSLog(@"received!!");
  if(imageData == nil){
    imageData = [[NSMutableData alloc] initWithCapacity:2048];
  }
  [imageData appendData:data];
}

// 全てのデータを受信し終わったら呼ばれる
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
  NSLog(@"finished!!");
  UIImage *image = [UIImage imageWithData:imageData];
  
  //データを一時的に保存 
  //UIImageをNSUserDefaultsに保存する場合はNSDataに変換してから保存
  NSData *imageNSData = UIImagePNGRepresentation(image);
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  [defaults setObject:imageNSData forKey:self.animalName];
  
  if (![[NSUserDefaults standardUserDefaults] synchronize] ) {
    NSLog(@"error!");
  }
  
  self.animalCell.imageView.image = image;
  [self.animalCell setNeedsLayout];  
}

// 通信に失敗したら呼ばれる
-(void)connection:(NSURLConnection*)connection 
 didFailWithError:(NSError*)error {
    
  NSLog(@"error: %@", error);
}

@end
