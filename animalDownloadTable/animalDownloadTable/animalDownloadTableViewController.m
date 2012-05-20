//
//  animalDownloadTableViewController.m
//  animalDownloadTable
//
//  Created by 前川 瑠璃 on 12/05/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "animalDownloadTableViewController.h"
#import "imageDownloader.h"

@interface animalDownloadTableViewController ()

@end

@implementation animalDownloadTableViewController
@synthesize animalName;
@synthesize animalPhoto;

- (void)viewDidLoad
{
    self.animalName = [[NSArray alloc] initWithObjects:@"neko", @"dog", @"hum",@"usagi", @"kuma",nil];
    self.animalPhoto = [[NSArray alloc] initWithObjects:@"http://www.ncc-exhibition.jp/web/kyo/web11/images/suko_11.jpg",@"http://t0.gstatic.com/images?q=tbn:ANd9GcSIdKbyguiNOaGDt5YRPGEAoI0OTP5MANAJlCudMgfs_fnz3MBkASrqUt_gPg",@"http://labola.jp/photo/9470047?s=usvbd&size=320",@"http://usagi.wonderful-life.org/img/banifaraion-1.JPG",@"http://image.rakuten.co.jp/ranran/cabinet/sirokuma/237shirokuma-hai.jpg",nil]; 
    [super viewDidLoad];
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.animalName count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger section = [indexPath section];
    NSInteger row = [indexPath row];
    
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SimpleTableIdentifier];
    if(cell == nil){
        cell =[[UITableViewCell alloc] 
               initWithStyle:UITableViewCellStyleDefault 
               reuseIdentifier:SimpleTableIdentifier];
    }
    cell.textLabel.text = [self.animalName objectAtIndex:row];

    imageDownloader *loader = [[imageDownloader alloc] init];
    loader.viewController = self;
    NSString *photoName = [self.animalPhoto objectAtIndex:row];    
    NSURL *url = [NSURL URLWithString:photoName];
    [loader getAnimalImage:url];

    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image = [[UIImage alloc] initWithData:data];
    cell.imageView.image = image;
    return cell;
}



@end
