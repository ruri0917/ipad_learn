//
//  sweetsTableViewController.m
//  sweetsTable
//
//  Created by 前川 瑠璃 on 12/05/17.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import "sweetsTableViewController.h"

@interface sweetsTableViewController ()
@end

@implementation sweetsTableViewController
@synthesize names;
@synthesize keys;
@synthesize photoDic;

- (void)viewDidLoad
{
<<<<<<< HEAD
    keys = [NSArray arrayWithObjects:@"和菓子", @"洋菓子",nil];
=======
    keys = [[NSArray alloc] initWithObjects:@"和菓子", @"洋菓子",nil];
>>>>>>> 4c1507447b7fc2e43d919411c94e9935441924ba
    NSArray *obj1 = [NSArray arrayWithObjects:@"ようかん",@"大福",@"あんみつ",nil];
    NSArray *obj2 = [NSArray arrayWithObjects:@"ケーキ",@"クッキー",@"ドーナツ",@"アイスクリーム", nil];
    NSArray *objs = [NSArray arrayWithObjects:obj1,obj2, nil];
    
    NSArray *photo1 = [NSArray arrayWithObjects:@"youkan.jpg",@"daihuku.jpeg",@"anmitu.JPG", nil];
    NSArray *photo2 = [NSArray arrayWithObjects:@"cake.jpg",@"cookie.jpg",@"do-natu.jpg",@"ice.jpeg", nil];
    NSArray *photos = [NSArray arrayWithObjects:photo1,photo2, nil];
    
    names = [[NSDictionary alloc] initWithObjects:objs forKeys:keys];
    photoDic = [[NSDictionary alloc] initWithObjects:photos forKeys:keys];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return [keys count];
}

<<<<<<< HEAD
//引数sectionはsectionの順番
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  NSLog(@"%d",section);
    NSString *key = [keys objectAtIndex:section];
    NSArray *nameSection = [names objectForKey:key];
  NSLog(@"%@",key);
  NSLog(@"%@",[nameSection objectAtIndex:0]);
=======
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *key = [keys objectAtIndex:section];
    NSArray *nameSection = [names objectForKey:key];
>>>>>>> 4c1507447b7fc2e43d919411c94e9935441924ba
    return [nameSection count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger section = [indexPath section];
    NSInteger row = [indexPath row];
    
    NSString *key = [keys objectAtIndex:section];
    NSArray *nameSection = [names objectForKey:key];
    NSArray *photoSection = [photoDic objectForKey:key];
    
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SimpleTableIdentifier];
    if(cell == nil){
        cell =[[UITableViewCell alloc] 
               initWithStyle:UITableViewCellStyleDefault 
               reuseIdentifier:SimpleTableIdentifier];
    }
    cell.textLabel.text = [nameSection objectAtIndex:row];
    
    UIImage *image = [UIImage imageNamed:[photoSection objectAtIndex:row]];
    cell.imageView.image = image;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger section = [indexPath section];
    NSString *key = [keys objectAtIndex:section];
    NSInteger row = [indexPath row];
    NSArray *nameSection = [names objectForKey:key];
    UIAlertView *alert = [[UIAlertView alloc] init];
    NSString *title = key;
    NSString *message = [nameSection objectAtIndex:row];
    NSLog(@"%@",message);
    NSLog(@"%@",title);
    alert.title = title;
    alert.message = message;
    [alert addButtonWithTitle:@"ok"];
    [alert show];
}
    
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString * key = [keys objectAtIndex:section];
    return key;
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
