//
//  flowerDownloadTableViewController.m
//  flowerDownloadTable
//
//  Created by 前川 瑠璃 on 12/05/22.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import "flowerDownloadTableViewController.h"
#import "imageLoader.h"

@interface flowerDownloadTableViewController ()

@end

@implementation flowerDownloadTableViewController
@synthesize flowerName = _flowerName;
@synthesize flowerPhotoURL = _flowerPhotoURL;
- (void)viewDidLoad
{
    [super viewDidLoad];
  self.flowerName = [[NSArray alloc] initWithObjects:@"たんぽぽ",@"さくら",@"すみれ",@"ばら",@"ちゅーりっぷ", nil];
  self.flowerPhotoURL = [[NSArray alloc] initWithObjects:@"http://pds.exblog.jp/pds/1/200804/06/65/d0107965_2231716.jpg",@"http://blog-imgs-15.fc2.com/s/a/b/sabure0106/2012041713503943f.jpg",@"http://mameda.up.seesaa.net/image/szk08041220034.01.jpg",@"http://samuraijapan.sakura.ne.jp/blogblog/wp-content/uploads/2011/08/%E5%BA%97%E3%81%AE%E3%83%901.jpg",@"http://pcweb.hobby-web.net/0010/sp0436.jpg", nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [self.flowerName count];
//  return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  NSInteger row = [indexPath row];
    
  static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                           SimpleTableIdentifier];
  if(cell == nil){
    cell =[[UITableViewCell alloc] 
           initWithStyle:UITableViewCellStyleDefault 
           reuseIdentifier:SimpleTableIdentifier];
  }
  cell.textLabel.text = [self.flowerName objectAtIndex:row];
  
  imageLoader *loader = [[imageLoader alloc] init];
//  loader.viewController = self;
  loader.flowerCell = cell;
  loader.flowerName = [self.flowerName objectAtIndex:row];
  
  NSString *photoName = [self.flowerPhotoURL objectAtIndex:row];
  
  NSURL *url = [NSURL URLWithString:photoName];
  
  [loader getFlowerImage:url];

  return cell;
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
