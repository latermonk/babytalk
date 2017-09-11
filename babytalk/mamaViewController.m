//
//  mamaViewController.m
//  babytalk
//
//  Created by wei on 12/04/2017.
//  Copyright © 2017 wei. All rights reserved.
//

#import "mamaViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface mamaViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *bgimageView;


//player
@property(nonatomic, strong) AVPlayer* player;



@end

@implementation mamaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    //create player
    
    NSString* path = [[ NSBundle mainBundle ] pathForResource:@"mama.wav" ofType:nil ];
    
    NSURL* url = [ NSURL fileURLWithPath:path ];
    
    AVPlayerItem *playItem = [[AVPlayerItem alloc] initWithURL:url];
    
    //AVPlayer* player = [ [AVPlayer init] initWithPlayerItem:playItem ];
    
    self.player = [[AVPlayer alloc] initWithPlayerItem:playItem];
}


/*

- (IBAction)buttonPlayer:(UIButton *)button {
  
    
    button.enabled = false;
    
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionAllowAnimatedContent animations:^{
        // code to execute
    
        [self.player play];
        
    }
                     completion:^(BOOL finished){
                         // code to execute
                         
                         // [self.player play];
                         
                         button.enabled = true; //This is correct.
                     }];

    
    
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)mama_button:(UIButton *)sender {
    
    
    [self.player play];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/








@end
