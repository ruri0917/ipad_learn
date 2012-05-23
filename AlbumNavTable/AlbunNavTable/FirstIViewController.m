//
//  FirstIViewController.m
//  AlbunNavTable
//
//  Created by 前川 瑠璃 on 12/05/23.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import "FirstIViewController.h"
#import "SecondViewController.h"

@interface FirstIViewController ()

@end

@implementation FirstIViewController
@synthesize albumNames = _albumNames;
@synthesize albumJackets = _albumJackets;
@synthesize albumSinger = _albumSinger;
@synthesize nextController = _nextController;
//@synthesize selectAlbum = _selectAlbum;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
  self.albumNames = [NSArray arrayWithObjects:@"AZyoU",@"GAME",@"HEAVEN", @"Goodbye Lullaby",nil];
  self.albumJackets = [NSArray arrayWithObjects:@"azyou.jpg",@"game.jpeg",@"heaven.jpg",@"Goodbye_Lullaby.jpg", nil];
  self.albumSinger = [NSArray arrayWithObjects:@"azu",@"perfume",@"加藤ミリヤ",@" Avril Lavigne", nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [self.albumNames count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSInteger row = [indexPath row];

  static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                           SimpleTableIdentifier];
  if(cell == nil){
    cell =[[UITableViewCell alloc] 
           initWithStyle:UITableViewCellStyleSubtitle
           reuseIdentifier:SimpleTableIdentifier];
  }

  cell.textLabel.text = [self.albumNames objectAtIndex:row];

  UIImage *images = [UIImage imageNamed:[self.albumJackets objectAtIndex:row]];  
  cell.imageView.image = images;
  
  cell.detailTextLabel.text = [self.albumSinger objectAtIndex:row];
  
  return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSInteger row = [indexPath row];
  self.nextController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
  self.nextController.title = [self.albumNames objectAtIndex:row];
  
  //SecondクラスにalbumNameを渡す
  self.nextController.selectAlbumName = [self.albumNames objectAtIndex:row];
    
  [self.navigationController pushViewController:self.nextController animated:YES];

}
@end
