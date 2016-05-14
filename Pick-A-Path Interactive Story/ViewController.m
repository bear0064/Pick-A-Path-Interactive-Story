//
//  ViewController.m
//  Pick-A-Path Interactive Story
//
//  Created by Caleb Bear on 2016-03-17.
//  Copyright © 2016 bear0064@algonquinlive.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *view1TextView;
@property (weak, nonatomic) IBOutlet UITextView *view2TextView;
@property (weak, nonatomic) IBOutlet UITextView *view3TextView;


@property (weak, nonatomic) IBOutlet UIBarButtonItem *page1ButtonA;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *page1ButtonB;

@property (weak, nonatomic) IBOutlet UINavigationItem *barTitle1;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *page2ButtonA;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *page2ButtonB;
@property (weak, nonatomic) IBOutlet UINavigationItem *barTitle2;

@property (weak, nonatomic) IBOutlet UINavigationItem *barTitle3;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel1;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel2;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel3;



@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    
    _timeLabel1.text = [NSString stringWithFormat:@"Time: %i", _currentPage.seconds];
    _timeLabel2.text = [NSString stringWithFormat:@"Time: %i", _currentPage.seconds];
    _timeLabel3.text = [NSString stringWithFormat:@"Time: %i", _currentPage.seconds];

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    
    if(_currentPage == nil){
        
        page* page1 = [[page alloc] init];
        page* page2 = [[page alloc] init];
        page* page3 = [[page alloc] init];
        page* page4 = [[page alloc] init];
        page* page5 = [[page alloc] init];
        page* page6 = [[page alloc] init];
        page* page7 = [[page alloc] init];

        page1.pageNumber = 1;
        page1.pageText = @"Your phone buzzes relentlessly with Twitter and Facebook feed updates – zombies are flooding the streets of Ottawa!  You grab your backpack.  Is the first thing you look for? A-- weapon to defend yourself? B-- food and supplies?  Who knows when you'll be able to have another good meal?";
    
        page2.pageNumber = 2;
        page2.pageText = @"You rush to the basement and find a baseball bat, a chainsaw, and a paintball gun.  You grab the bat, a few snacks, and consider your options.  Do you: A--	board up the house and try wait out the invasion? B--	run to the mall?  It kind-of worked in that movie.";
        
        page3.pageNumber = 3;
        page3.pageText = @"You pack a few sets of clothes, and as much food as your bag can hold.  Looking cautiously outside the window, the streets seem empty.  Do you: A--	make a run for the car?  If you make it out of town, you may be able to buy yourself some time. B--	call your buddies and set up a rendezvous?  You'll be safer in numbers.";
        
        page4.pageNumber = 4;
        page4.pageText = @"You tear apart your furniture and board up all of the windows and doors.  Sitting at the top of the stairs, you wait for the inevitable.  Several hours later the doorbell rings.  You cautiously peer outside, and see your friends waiting at the door.  They laugh hysterically as you rip down the barricade.  “Don't you know what day it is?” one asks you.  April 1st. Ah well - at least you're prepared.";
        
        page5.pageNumber = 5;
        page5.pageText = @"You grab your bag, lock up the house, and run down the street towards the mall.  Off in the distance, you see some lumbering silhouettes.  As you reach the doors, you notice that a few others seem to have had the same idea.  Once inside, the doors are locked, and you claim one of the big showroom beds and a 60” LED TV as your own.  Who knows how long you'll have to wait?";
        
        page6.pageNumber = 6;
        page6.pageText = @"Your bags are packed, and you get the keys to the car.  You're glad you filled up the tank on your way home from work last night.  After making sure the coast is clear, you lock the door and dash to the car.  Your parents are out of the country – thankfully – which means that the boat should be locked up along the river.  You'll be safe there; everyone knows that zombies can't swim... right?";
        
        page7.pageNumber = 7;
        page7.pageText = @"You set your Facebook status to “meet up at 45.216867, -75.962180 ”, stopping only briefly to grab a towel, and your toothbrush.  Dashing to the car, you set your GPS to the meeting point.  Several messages come in from your friends: “on the way”, “c u there”, and “brains! lol”. In 20 minutes you'll be out of the city and with your friends... but then what?";
        
        page1.pageOne = page1;
        page2.pageOne = page1;
        page3.pageOne = page1;
        page4.pageOne = page1;
        page5.pageOne = page1;
        page6.pageOne = page1;
        page7.pageOne = page1;

        
        page1.pageChoiceA = page2;
        page1.pageChoiceB = page3;
        
        page2.pageChoiceA = page4;
        page2.pageChoiceB = page5;
        
        page3.pageChoiceA = page6;
        page3.pageChoiceB = page7;

        _currentPage = page1;
        
        
   

    }
    _view1TextView.text = _currentPage.pageText;
    _view2TextView.text = _currentPage.pageText;
    _view3TextView.text = _currentPage.pageText;
    
    _barTitle1.title = [NSString stringWithFormat:@"Page %d",_currentPage.pageNumber];
    _barTitle2.title = [NSString stringWithFormat:@"Page %d",_currentPage.pageNumber];
    _barTitle3.title = [NSString stringWithFormat:@"Page %d",_currentPage.pageNumber];
    
    
    
    _page1ButtonA.title = [NSString stringWithFormat:@"Page %d",_currentPage.pageChoiceA.pageNumber];
    
    
    _barTitle1.rightBarButtonItem.title = [NSString stringWithFormat:@"Page %d",_currentPage.pageChoiceB.pageNumber];
    
    
    _barTitle2.leftBarButtonItem.title = [NSString stringWithFormat:@"Page %d",_currentPage.pageChoiceA.pageNumber];
    
    _barTitle2.rightBarButtonItem.title = [NSString stringWithFormat:@"Page %d",_currentPage.pageChoiceB.pageNumber];
    
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(thisCallBackFunction) userInfo:nil repeats:YES];

    
    
}


-(void)thisCallBackFunction{
    
//    _timeLabel1.text
//    _timeLabel2.text
//    _timeLabel3.text
    
    _currentPage.seconds ++;
    
    _timeLabel1.text = [NSString stringWithFormat:@"Time: %i", _currentPage.seconds];
    _timeLabel2.text = [NSString stringWithFormat:@"Time: %i", _currentPage.seconds];
    _timeLabel3.text = [NSString stringWithFormat:@"Time: %i", _currentPage.seconds];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonAView1:(id)sender{
    [self performSegueWithIdentifier:@"segue1" sender:@"A"];
}

-(IBAction)buttonBView1:(id)sender{
    [self performSegueWithIdentifier:@"segue1" sender:@"B"];
}

-(IBAction)buttonAView2:(id)sender{
    [self performSegueWithIdentifier:@"segue2" sender:@"A"];
}

-(IBAction)buttonBView2:(id)sender{
    [self performSegueWithIdentifier:@"segue2" sender:@"B"];
}

-(IBAction)restart:(id)sender{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

    if (_currentPage.seconds < [userDefaults integerForKey:@"BestTime"]) {
        
        
        [userDefaults setInteger:_currentPage.seconds forKey:@"BestTime"];
        
        [userDefaults synchronize];
        
        NSLog(@"%@", [userDefaults objectForKey:@"BestTime"]);
        
    }
    
//    //Really not sure if this is duplication in terms of your notes - It seems redundant at this point, if the user got here, they would have somehow managed to trip the timer and get to the last page. its not the first time through the app.
//    if ([userDefaults objectForKey:@"BestTime"] == nil){
//        
//        [userDefaults setInteger:600 forKey:@"BestTime"];
//        
//        [userDefaults synchronize];
//        
//        NSLog(@"%@", [userDefaults objectForKey:@"BestTime"]);
//    }
//    
    
    _currentPage.pageOne.seconds = 0;
    _currentPage = _currentPage.pageOne;
    [self.navigationController popToRootViewControllerAnimated:YES];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ViewController * nextView = [segue destinationViewController];

    if ([sender isEqualToString: @"A"]) {
        _currentPage.pageChoiceA.seconds = _currentPage.seconds;
        nextView.currentPage = _currentPage.pageChoiceA;

    }   else if ([sender isEqualToString: @"B"]) {
        _currentPage.pageChoiceB.seconds = _currentPage.seconds;
        nextView.currentPage = _currentPage.pageChoiceB;
        
    }
    
    
    
}

-(void)viewWillDisappear:(BOOL)animated{

    if(_timer != nil){
        
        
        [_timer invalidate];
        _timer = nil;
        
    }
    
    
}


@end
