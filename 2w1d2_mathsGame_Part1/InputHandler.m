//
//  InputHandler.m
//  2w1d2_mathsGame_Part1
//
//  Created by Seantastic31 on 27/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString*)cleanInput
{
    char answer[255];
    NSLog(@"Enter your answer:");
    fgets(answer, 255, stdin);
    NSString *cAnswer = [NSString stringWithCString:answer encoding:NSUTF8StringEncoding];
    NSString *objAnswer = [cAnswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return objAnswer;

}

@end
