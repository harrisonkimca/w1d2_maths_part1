//
//  AdditionQuestion.m
//  2w1d2_mathsGame_Part1
//
//  Created by Seantastic31 on 27/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        int first = arc4random_uniform(99)+1;
        int second = arc4random_uniform(99)+1;
        _question = [NSString stringWithFormat:@"%i + %i = ?", first, second];
        _answer = first + second;
    }
    return self;
}

@end
