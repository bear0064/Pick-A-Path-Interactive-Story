//
//  page.m
//  Pick-A-Path Interactive Story
//
//  Created by Caleb Bear on 2016-03-17.
//  Copyright © 2016 bear0064@algonquinlive.com. All rights reserved.
//

#import "page.h"

@implementation page


-(id) init
{
    
    _pageNumber = 0;
    _pageText = @"";
    _pageChoiceA = nil;
    _pageChoiceB = nil;
    _pageOne = nil;
    
    _seconds = 0;
    
    return self;
}


@end
