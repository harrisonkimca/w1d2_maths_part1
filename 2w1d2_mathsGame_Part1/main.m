//
//  main.m
//  2w1d2_mathsGame_Part1
//
//  Created by Seantastic31 on 27/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        NSLog(@"MATHS!");
        ScoreKeeper *scorekeeper = [[ScoreKeeper alloc]init];
        
        while (gameOn){
            
            // ask question
            AdditionQuestion *question = [[AdditionQuestion alloc]init];
            NSLog(@"Your question is: %@", question.question);
            NSString *inputString = [InputHandler cleanInput];
            
            // check 'quit' when input is a string
            if ([inputString isEqualToString:@"quit"])
            {
                gameOn = NO;
                NSLog(@"Thank you for playing");
                break;
            }
            
            // else check answer
            else
            {
                // need to convert input to NSInteger to compare to answer property
                NSInteger inputNumber = inputString.integerValue;
                NSLog(@"The answer you gave is: %li", inputNumber);
                
                // check answer
                // right
                if (inputNumber == question.answer)
                {
                    scorekeeper.right += 1;
                    NSLog(@"You are correct!");
                }
                
                // not right
                else
                {
                    scorekeeper.wrong += 1;
                    NSLog(@"You are wrong!");
                }
                    
                // log updated score
                [scorekeeper score];
                
            }
        }
    }
    return 0;
}
