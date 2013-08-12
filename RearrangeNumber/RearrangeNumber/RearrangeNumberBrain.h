//
//  RearrangeNumberBrain.h
//  RearrangeNumber
//
//  Created by qa on 10/16/12.
//  Copyright (c) 2012 qa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RearrangeNumberBrain : NSObject
@property (nonatomic) int firstInput;
@property (nonatomic) int secondInput;
@property (nonatomic) int thirdInput;
@property (nonatomic) int fourthInput;
@property (nonatomic) int fifthInput;
@property (nonatomic) int sixthInput;
@property (nonatomic) int level;
@property (nonatomic) BOOL allCompleted;

-(BOOL)resultJudge;
-(void)levelJudge;


@end
