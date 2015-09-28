//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by admin on 08.07.15.
//  Copyright (c) 2015 sergey. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

-(instancetype)init{
    
    self = [super init];
    
    if(self){
        for(NSString *suit in [PlayingCard validSuits]){
            for(NSUInteger rank = 1; rank <= [PlayingCard maxrank]; rank++){
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end
