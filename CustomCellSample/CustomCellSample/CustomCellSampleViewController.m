//
//  CustomCellSampleViewController.m
//  CustomCellSample
//
//  Created by 前川 瑠璃 on 12/05/18.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import "CustomCellSampleViewController.h"
#import "CustomCell.h"
@interface CustomCellSampleViewController()

@end

@implementation CustomCellSampleViewController
@synthesize namesArray;
@synthesize artistArray;
@synthesize imageArray;
- (void)viewDidLoad
{
    self.namesArray = [NSArray arrayWithObjects:@"ビスケット",@"Hello", @"また明日", @"トライアングル", nil];
    self.artistArray = [NSArray arrayWithObjects:@"YUKI",@"YUI",@"juju", @"perfume", nil];    
    self.imageArray  = [NSArray arrayWithObjects:@"yuki_bisket.jpg", @"yui_hello.jpeg", @"juju_mataashita.jpg", @"perfume_toraianguru.jpg",nil];
    NSLog(@"%d",[self.namesArray count]);
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    self.namesArray = nil;
    self.artistArray = nil;
    self.imageArray = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"numberOfRows!!!");
    return [self.namesArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"SampleCell";
    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:identifier];

    if(cell == nil){
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        for(id oneObject in nib){
            if([oneObject isKindOfClass:[CustomCell class]])
            {
                cell = (CustomCell *)oneObject;
            }
        }
    }
    
    NSLog(@"%d",[indexPath row]);
//    NSInteger *no = [indexPath row];
    NSString *name = [self.namesArray objectAtIndex:[indexPath row]];
    NSString *artist = [self.artistArray objectAtIndex:[indexPath row]];
    NSString *image = [self.imageArray objectAtIndex:[indexPath row]];
    
//    cell.indexNO.text = no;
    cell.musicName.text = name;
    cell.artistName.text = artist;
    cell.imageView.image = [UIImage imageNamed:image];
    [cell.searchBtn addTarget:self action:@selector(buttonTouch) forControlEvents:UIControlEventTouchUpInside]; 
    return cell;
}
-(void)buttonTouch
{
    UIWebView *webView;
    webView = [[UIWebView alloc] init];
    webView.frame = self.view.bounds;
    webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    webView.scalesPageToFit = YES;
    
    [self.view addSubview:webView];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.youtube.com/"]];
    [webView loadRequest:request];

    /*UIAlertView *alert = [[UIAlertView alloc] init];
    alert.title = @"確認";
    alert.message = @"先に進みますか？";
    [alert addButtonWithTitle:@"OK"];
    [alert addButtonWithTitle:@"NO"];
    [alert show];
    */
    
    NSLog(@"hoge----------------");
}
/*
-(void)alertView:(UIAlertView *)alert clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"click!!!!");
    UIWebView *webView;
    webView = [[UIWebView alloc] init];
    webView.frame = self.view.bounds;
    webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    webView.scalesPageToFit = YES;

    [self.view addSubview:webView];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.youtube.com/"]];
    switch(buttonIndex)
    {
        case 0:
            NSLog(@"0");
            [webView loadRequest:request];

        break;
        case 1:
            NSLog(@"1");
        break;
    }
}
 */
@end
