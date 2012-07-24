//
//  imageLoader.m
//  flowerDownloadTable
//
//  Created by 前川 瑠璃 on 12/05/22.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import "imageLoader.h"
#import "flowerDownloadTableViewController.h"

@implementation imageLoader
//@synthesize viewController = _viewController;
@synthesize flowerCell = _flowerCell;
@synthesize flowerName = _flowerName;

- (void)getFlowerImage:(NSURL *)url{
  NSData* imageNSData = [[NSUserDefaults standardUserDefaults] objectForKey:self.flowerName]; 
  
  if(imageNSData){
//    NSLog(@"%@",imageNSData);
    NSLog(@"get NSUserDefaults...");
    UIImage* image = [UIImage imageWithData:imageNSData];   
    self.flowerCell.imageView.image = image;
    [self.flowerCell setNeedsLayout];      
  }else {
    imageData = [NSMutableData data];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection connectionWithRequest:request delegate:self];
    NSLog(@"starting download...");    
  }
}

#pragma mark -
#pragma NSOperation Delegate Methods

//データの一部を受け取ったら呼ばれる
- (void)connection:(NSURLConnection *)connection 
    didReceiveData:(NSData *)data {
  NSLog(@"received!!");
  [imageData appendData:data];
}

// 全てのデータを受信し終わったら呼ばれる
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
  NSLog(@"finished!!");
  UIImage *image = [UIImage imageWithData:imageData];
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  
  //画像データを一時的に保存
  NSData *imageNSData = UIImagePNGRepresentation(image);

  [defaults setObject:imageNSData forKey:self.flowerName];
  
/*  if (![[NSUserDefaults standardUserDefaults] synchronize] ) {
    NSLog(@"error!");
  }
*/
  self.flowerCell.imageView.image = image;
  [self.flowerCell setNeedsLayout];  
}

// 通信に失敗したら呼ばれる
-(void)connection:(NSURLConnection*)connection 
 didFailWithError:(NSError*)error {
  
  NSLog(@"error: %@", error);
}

@end
