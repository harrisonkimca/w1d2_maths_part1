//
//  ScoreKeeper.m
//  2w1d2_mathsGame_Part1
//
//  Created by Seantastic31 on 27/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}

- (void)score
{
    if (self.right != 0 || self.wrong != 0)
    {
        float percent = self.right/((float)self.right + (float)self.wrong)*100;
        NSLog(@"score %i right, %i wrong, ---- %.0f%%", self.right, self.wrong, percent);
    }
    else
    {
        NSLog(@"score %i right, %i wrong", self.right, self.wrong);
    }
}

@end
