//
//  Deck.h
//  CardGame
//
//  Created by admin on 08.07.15.
//  Copyright (c) 2015 sergey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void) addCard: (Card *)card atTop:(BOOL) atTop;
-(void) addCard: (Card *)card;

-(Card *) drawRadndomCard;

@end
