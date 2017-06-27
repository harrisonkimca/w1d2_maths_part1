//
//  ScoreKeeper.h
//  2w1d2_mathsGame_Part1
//
//  Created by Seantastic31 on 27/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) int right;
@property (nonatomic) int wrong;

- (void)score;


@end
