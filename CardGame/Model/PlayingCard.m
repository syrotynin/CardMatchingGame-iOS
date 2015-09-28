//
//  PlayingCard.m
//  CardGame
//
//  Created by admin on 08.07.15.
//  Copyright (c) 2015 sergey. All rights reserved.
//

#import "PlayingCard.h"

#define POINTS_FOR_EQUAL_RANK 4
#define POINTS_FOR_EQUAL_SUIT 1

@implementation PlayingCard

-(int)match:(NSArray *)otherCards{
    int score = 0;
    
    if([otherCards count] == 1){
        PlayingCard *otherCard = [otherCards firstObject];
        if(otherCard.rank == self.rank){
            score = POINTS_FOR_EQUAL_RANK;
        } else if([otherCard.suit isEqualToString:self.suit]){
            score = POINTS_FOR_EQUAL_SUIT;
        }
    }
    
    return score;
}

- (NSString *) contents
{

    NSArray *rankStrings = [PlayingCard rankStrings];
    
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

#pragma mark - Suit methods

@synthesize suit = _suit; // because we provide setter AND getter

+ (NSArray *)validSuits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

#pragma mark - Rank methods

+ (NSArray *) rankStrings{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger) maxrank
{
    return [[self rankStrings] count] - 1;
}

- (void)setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxrank]){
        _rank = rank;
    }
}

@end
