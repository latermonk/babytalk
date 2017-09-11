//
//  ViewController.m
//  babytalk
//
//  Created by wei on 11/04/2017.
//  Copyright © 2017 wei. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *bgimageView;


//player
@property(nonatomic, strong) AVPlayer* player;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //create player
    
    NSString* path = [[ NSBundle mainBundle ] pathForResource:@"baba.wav" ofType:nil ];
    
    NSURL* url = [ NSURL fileURLWithPath:path ];
    
    AVPlayerItem *playItem = [[AVPlayerItem alloc] initWithURL:url];
    
    //AVPlayer* player = [ [AVPlayer init] initWithPlayerItem:playItem ];
    
    self.player = [[AVPlayer alloc] initWithPlayerItem:playItem];
    
    
}


/*

- (IBAction)playMusicButton:(UIButton *)button {
    
    //button.custom
    
    button.backgroundColor = [ UIColor clearColor ];
    
    button.enabled = NO;
    
    self.bgimageView.userInteractionEnabled = YES;
    
    [self.player play];
    
    button.enabled = YES;
    
    button.backgroundColor = [ UIColor clearColor ];

}

*/


- (IBAction)playImageview:(UIImage* )bgimageView
{
    [ self.player play ];
    
    
    //NSLog(@"Click image \n");
    
    
    
    
    //self.bgimageView.userInteractionEnabled = YES;
    
    //[self.player play];
    
    
    
    
}


- (IBAction)buttonPlayer:(UIButton *)button {
    
    
    /*
    opButton.backgroundColor = [ UIColor clearColor ];
    
    
    opButton.enabled = false;
    
    
    
    //
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionAllowAnimatedContent animations:^{
        // code to execute
    }
                     completion:^(BOOL finished){
                         // code to execute
                     }];
    
    
    
    
    
     [self.player play];
    
    opButton.enabled = true;
     
     */
    
    
    
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
    
    
    
    //button.enabled = true; //This is wrong.
    
    
}



@end
