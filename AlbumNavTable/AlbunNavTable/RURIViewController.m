//
//  RURIViewController.m
//  AlbunNavTable
//
//  Created by 前川 瑠璃 on 12/05/23.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import "RURIViewController.h"
#import "FirstIViewController.h"

@interface RURIViewController ()

@end

@implementation RURIViewController
@synthesize items = _items;
@synthesize nextController = _nextController;

- (void)viewDidLoad
{
    [super viewDidLoad];
  self.items = [NSArray arrayWithObjects:@"Album", nil];
  self.title = @"Music List";
  
  //navigationBarの色を変更
  self.navigationController.navigationBar.tintColor = [UIColor grayColor];
  
  UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:nil action:nil];
  self.navigationItem.leftBarButtonItem = leftButton;
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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [self.items count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSInteger row = [indexPath row];
  
  static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                           SimpleTableIdentifier];
  if(cell == nil){
    cell =[[UITableViewCell alloc] 
           initWithStyle:UITableViewCellStyleDefault 
           reuseIdentifier:SimpleTableIdentifier];
  }
  
  cell.textLabel.text = [self.items objectAtIndex:row];
  
  return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSInteger row = [indexPath row];
  self.nextController = [[FirstIViewController alloc] initWithNibName:@"FirstIViewController" bundle:nil];
  self.nextController.title = [self.items objectAtIndex:row];
  
  NSLog(@"%@",self.navigationController);
  //画面を追加　追加した画面を表示
  [self.navigationController pushViewController:self.nextController animated:YES];
}
@end
