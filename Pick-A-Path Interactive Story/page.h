//
//  page.h
//  Pick-A-Path Interactive Story
//
//  Created by Caleb Bear on 2016-03-17.
//  Copyright © 2016 bear0064@algonquinlive.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface page : NSObject

@property int pageNumber;
@property NSString *pageText;
@property (nonatomic, strong) page *pageChoiceA;
@property (nonatomic, strong) page *pageChoiceB;
@property (nonatomic, strong) page *pageOne;

@property int seconds;

@end
