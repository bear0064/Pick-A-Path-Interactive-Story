//
//  SplashController.m
//  Pick-A-Path Interactive Story
//
//  Created by Caleb Bear on 2016-04-06.
//  Copyright © 2016 bear0064@algonquinlive.com. All rights reserved.
//

#import "SplashController.h"

@interface SplashController ()

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;


@end

@implementation SplashController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:5.5 target:self selector:@selector(thisCallBackFunction) userInfo:nil repeats:NO];
    
    
    NSUserDefaults *userDefaults1 = [NSUserDefaults standardUserDefaults];
    
    if ( [userDefaults1 objectForKey:@"BestTime"] == nil) {
        
        [userDefaults1 setInteger:600 forKey:@"BestTime"];
        
        [userDefaults1 synchronize];
        
        NSLog(@"%@", [userDefaults1 objectForKey:@"BestTime"]);
        
        _timerLabel.text = [NSString stringWithFormat:@"Best Time: %@", [userDefaults1 objectForKey:@"BestTime"]];
    } else {
        
        _timerLabel.text = [NSString stringWithFormat:@"Best Time: %@", [userDefaults1 objectForKey:@"BestTime"]];

    }

    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)thisCallBackFunction {
    [_timer invalidate];
    _timer = nil;;
    
    [self performSegueWithIdentifier:@"splashSegue" sender:nil];
    
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
