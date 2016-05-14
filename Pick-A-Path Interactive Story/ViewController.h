//
//  ViewController.h
//  Pick-A-Path Interactive Story
//
//  Created by Caleb Bear on 2016-03-17.
//  Copyright © 2016 bear0064@algonquinlive.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "page.h"


@interface ViewController : UIViewController


@property page* currentPage;

@property NSTimer * timer;

-(void)thisCallBackFunction;

@end

