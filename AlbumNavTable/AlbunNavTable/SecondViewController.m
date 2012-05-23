//
//  SecondViewController.m
//  AlbunNavTable
//
//  Created by 前川 瑠璃 on 12/05/23.
//  Copyright (c) 2012年 小松電機産業株式会社. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstIViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize albumSongs = _albumSongs;
@synthesize selectAlbumName = _selectAlbumName;

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
    [super viewDidLoad];
  NSArray *names = [NSArray arrayWithObjects:@"AZyoU",@"GAME",@"HEAVEN", @"Goodbye Lullaby",nil];
  
  NSArray *album1 = [NSArray arrayWithObjects:@"crazy,wise' nd sexy",@"Broken Heart",@"To You...", @"IN MY LIFE",@"つよくつよく",
                     @"Promise in a kiss feat.ユナク from 超新星",@"たしかなこと",@"Candy Boy feat.日之内エミ",@"LOVE HUG",@"AKS99 feat.SEAMO & KG",
                     @"to the top",@"Angel",@"どんなに離れても (Rearrange ver.) -Bonus Track",nil];  
  NSArray *album2 = [NSArray arrayWithObjects:@"ポリリズム",@"plastic smile",@"GAME",@"Baby cruising Love",@"チョコレイト・ディスコ",@"マカロニ",
                     @"セラミックガール",@"Take me Take me",@"シークレットシークレット", @"Butterfly",@"Twinkle Snow Powdery Snow",@"Puppy love",nil];
  NSArray *album3 = [NSArray arrayWithObjects:@"BYE BYE",@"Last Love",@"I miss you",@"X.O.X.O.",@"HEAVEN",@"Baby I See You feat. VERBAL (m-flo)",
                     @"空",@"WHY",@"FREE",@"Endless Love",@"Sweet Angel",@"Destiny",@"B.F.F.",@"Don't wanna let go",@"Silent Ocean",@"終わりなき哀しみ",nil];
  NSArray *album4 = [NSArray arrayWithObjects:@"Black Star",@"What the Hell",@"Push",@"Wish You Were Here",@"Smile",@"Stop Standing There",@"I Love You",
                     @"Everybody Hurts",@"Not Enough",@"4 Real",@"Darlin",@"Alice (Extended Version)",@"Remember When",@"Goodbye",
                     @"What the Hell (Acoustic Version)",@"Push (Acoustic Version)", nil];
  NSArray *albums = [NSArray arrayWithObjects:album1,album2,album3,album4, nil];
  
  _albumSongs = [[NSDictionary alloc] initWithObjects:albums forKeys:names];
  
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
  NSArray *nameSection = [_albumSongs objectForKey:self.selectAlbumName];
  return [nameSection count];
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
  NSArray *nameSection = [_albumSongs objectForKey:self.selectAlbumName];
  cell.textLabel.text = [nameSection objectAtIndex:row];
  
  return  cell;

}
@end
