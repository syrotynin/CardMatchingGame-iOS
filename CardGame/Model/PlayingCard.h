//
//  PlayingCard.h
//  CardGame
//
//  Created by admin on 08.07.15.
//  Copyright (c) 2015 sergey. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger) maxrank;

@end
