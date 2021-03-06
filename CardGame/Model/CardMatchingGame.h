//
//  CardMatchingGame.h
//  CardGame
//
//  Created by admin on 09.07.15.
//  Copyright (c) 2015 sergey. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

//designated initializer
-(instancetype) initWithCardCount:(NSUInteger)count usingDeck:(Deck *) deck;

-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
