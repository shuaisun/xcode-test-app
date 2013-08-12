//
//  RearrangeNumberBrain.m
//  RearrangeNumber
//
//  Created by qa on 10/16/12.
//  Copyright (c) 2012 qa. All rights reserved.
//

#import "RearrangeNumberBrain.h"


@implementation RearrangeNumberBrain

@synthesize firstInput = _firstInput;
@synthesize secondInput = _secondInput;
@synthesize thirdInput = _thirdInput;
@synthesize fourthInput = _fourthInput;
@synthesize fifthInput = _fifthInput;
@synthesize sixthInput = _sixthInput;
@synthesize level = _level;
@synthesize allCompleted = _allCompleted;

-(BOOL)resultJudge
{
    if(self.firstInput>=self.secondInput&&self.secondInput>=self.thirdInput&&self.level==1)
    {
        return YES;
        
    }
    else if(self.firstInput>=self.secondInput&&self.secondInput>=self.thirdInput&&self.thirdInput>=self.fourthInput&&self.level==2)
    {
        return YES;
        
    }
    else if(self.firstInput>=self.secondInput&&self.secondInput>=self.thirdInput&&self.thirdInput>=self.fourthInput&&self.fourthInput>=self.fifthInput&&self.fifthInput>=self.sixthInput&&self.level==3)
    {
        return YES;
        
    }
    else
    {
        return NO;
        
    }
    
}

-(void)levelJudge
{
    if ([self resultJudge]&&self.level<3) {
        self.level++;        
    }
    else if ([self resultJudge]&&self.level == 3)
    {
        self.allCompleted = YES;
    }    
}

@end
