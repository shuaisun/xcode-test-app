//
//  RearrangeNumberViewController.m
//  RearrangeNumber
//
//  Created by qa on 10/16/12.
//  Copyright (c) 2012 qa. All rights reserved.
//

#import "RearrangeNumberViewController.h"
#import "RearrangeNumberBrain.h"


@interface RearrangeNumberViewController ()
@property (nonatomic) int counter;
@property (nonatomic, strong) RearrangeNumberBrain *brain;
@end


@implementation RearrangeNumberViewController

@synthesize firstLabel = _firstLabel;
@synthesize secondLabel = _secondLabel;
@synthesize thirdLabel = _thirdLabel;
@synthesize fourthLabel = _fourthLabel;
@synthesize fifthLabel = _fifthLabel;
@synthesize sixthLabel = _sixthLabel;
@synthesize resultLabel = _resultLabel;

@synthesize firstButton = _firstButton;
@synthesize secondButton = _secondButton;
@synthesize thirdButton = _thirdButton;
@synthesize fourthButton = _fourthButton;
@synthesize fifthButton = _fifthButton;
@synthesize sixthButton = _sixthButton;

@synthesize resetButton = _resetButton;
@synthesize nextLevel = _nextLevel;


@synthesize counter = _counter;
@synthesize brain = _brain;
//@synthesize sysSoundTestPath;

-(RearrangeNumberBrain *)brain
{
    if (!_brain)
    {
        _brain = [[RearrangeNumberBrain alloc]init];
        _brain.allCompleted=NO;
        _brain.level=1;
    }
    return _brain;

}

- (void)viewDidLoad
{
    [self viewProvision];
    [super viewDidLoad];
}



- (void) viewProvision
{
    self.resultLabel.text = @"";
    self.firstLabel.text = @"";
    self.secondLabel.text = @"";
    self.thirdLabel.text = @"";
    self.fourthLabel.text = @"";
    self.fifthLabel.text = @"";
    self.sixthLabel.text = @"";
    
    [self.firstButton removeFromSuperview];
    [self.secondButton removeFromSuperview];
    [self.thirdButton removeFromSuperview];
    [self.fourthButton removeFromSuperview];
    [self.fifthButton removeFromSuperview];
    [self.sixthButton removeFromSuperview];
    
    
    self.resetButton.hidden=YES;
    self.nextLevel.hidden=YES;
    
    if(self.brain.level==1)
    {
        
        NSLog(@"level is: %d",self.brain.level);
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"6" forState:UIControlStateNormal];
        button.frame = CGRectMake(280.0, 255.0, 120.0, 79.0);
        self.firstButton = button;
        [self.view addSubview:self.firstButton];
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"9" forState:UIControlStateNormal];
        button.frame = CGRectMake(299.0, 87.0, 120.0, 79.0);
        self.secondButton = button;
        [self.view addSubview:self.secondButton];
        
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"8" forState:UIControlStateNormal];
        button.frame = CGRectMake(569.0, 212.0, 120.0, 79.0);
        self.thirdButton = button;
        [self.view addSubview:self.thirdButton];

    }
    
    else if(self.brain.level==2)
    {
       
        NSLog(@"level is: %d",self.brain.level);
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"45" forState:UIControlStateNormal];
        button.frame = CGRectMake(80.0, 155.0, 120.0, 79.0);
        self.firstButton = button;
        [self.view addSubview:self.firstButton];
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"32" forState:UIControlStateNormal];
        button.frame = CGRectMake(299.0, 87.0, 120.0, 79.0);
        self.secondButton = button;
        [self.view addSubview:self.secondButton];
        
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"87" forState:UIControlStateNormal];
        button.frame = CGRectMake(569.0, 212.0, 120.0, 79.0);
        self.thirdButton = button;
        [self.view addSubview:self.thirdButton];
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"163" forState:UIControlStateNormal];
        button.frame = CGRectMake(269.0, 312.0, 120.0, 79.0);
        self.fourthButton = button;
        [self.view addSubview:self.fourthButton];
        

    }
    else if(self.brain.level==3&&self.brain.allCompleted==NO)
    {
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"415" forState:UIControlStateNormal];
        button.frame = CGRectMake(80.0, 155.0, 120.0, 79.0);
        self.firstButton = button;
        [self.view addSubview:self.firstButton];
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"328" forState:UIControlStateNormal];
        button.frame = CGRectMake(299.0, 87.0, 120.0, 79.0);
        self.secondButton = button;
        [self.view addSubview:self.secondButton];
        
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"879" forState:UIControlStateNormal];
        button.frame = CGRectMake(469.0, 212.0, 120.0, 79.0);
        self.thirdButton = button;
        [self.view addSubview:self.thirdButton];
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"1638" forState:UIControlStateNormal];
        button.frame = CGRectMake(269.0, 242.0, 120.0, 79.0);
        self.fourthButton = button;
        [self.view addSubview:self.fourthButton];
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"778" forState:UIControlStateNormal];
        button.frame = CGRectMake(69.0, 312.0, 120.0, 79.0);
        self.fifthButton = button;
        [self.view addSubview:self.fifthButton];
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self action:@selector(digitPressed:) forControlEvents:UIControlEventTouchDown];
        button.titleLabel.font = [UIFont systemFontOfSize:30];
        [button setTitle:@"5634" forState:UIControlStateNormal];
        button.frame = CGRectMake(569.0, 312.0, 120.0, 79.0);
        self.sixthButton = button;
        [self.view addSubview:self.sixthButton];
    }
    else if(self.brain.level==3&&self.brain.allCompleted==YES)
    {
        
        self.resetButton.hidden = NO;
        self.resultLabel.text = @"You've passed all levels!!!";
        SystemSoundID soundID;
        
        NSURL *path   = [[NSBundle mainBundle] URLForResource: @"cow" withExtension: @"wav"];
        CFURLRef sysSoundTestPath = (__bridge CFURLRef)path;
        
        AudioServicesCreateSystemSoundID(sysSoundTestPath, &soundID);
        AudioServicesPlaySystemSound(soundID);

    }
    
    
}
- (void) levelFinish
{
    
    if ([self.brain resultJudge]&&self.brain.level == 3)
    {
        self.brain.allCompleted = YES;
        [self viewProvision];
    }
    
    else
    {
        if([self.brain resultJudge])
        {
            self.resultLabel.text = @"Level complete!";
            self.nextLevel.hidden = NO;
            self.resetButton.hidden = NO;
        }
        else
        {
            self.resultLabel.text = @"Sorry, you fail...";
            self.resetButton.hidden = NO;
        }

    }
}

-(IBAction)nextLevelPressed
{
    self.counter=0;
    self.brain.level++;
    [self viewProvision];
}


-(IBAction)resetPressed:(id)sender
{
    self.counter=0;
    if (self.brain.allCompleted) {
        self.brain.level = 1;
        self.brain.allCompleted = NO;
    }
    [self viewProvision];
}

- (IBAction)digitPressed:(UIButton *)sender {
    
   // SystemSoundID soundID;
    
   // NSURL *path   = [[NSBundle mainBundle] URLForResource: @"cow" withExtension: @"wav"];
   // sysSoundTestPath = (__bridge CFURLRef)path;
    
   // AudioServicesCreateSystemSoundID(sysSoundTestPath, &soundID);
   // AudioServicesPlaySystemSound(soundID);
    
    
    if(self.counter==0)
    {
        self.firstLabel.text = [sender currentTitle];
        self.brain.firstInput = [[sender currentTitle] integerValue];
        self.counter++;
    }
    else if(self.counter==1)
    {
        self.secondLabel.text = [sender currentTitle];
        self.brain.secondInput = [[sender currentTitle] integerValue];
        self.counter++;
    }
    else if(self.counter==2)
    {
        self.thirdLabel.text = [sender currentTitle];
        self.brain.thirdInput = [[sender currentTitle] integerValue];
        if (self.brain.level ==1 ) {
            [self levelFinish];
            return;
        }
        self.counter++;
    }
    else if(self.counter==3)
    {
        self.fourthLabel.text = [sender currentTitle];
        self.brain.fourthInput = [[sender currentTitle] integerValue];
        if (self.brain.level ==2 ) {
            [self levelFinish];
            return;
        }
        self.counter++;
    }
    else if(self.counter==4)
    {
        self.fifthLabel.text = [sender currentTitle];
        self.brain.fifthInput = [[sender currentTitle] integerValue];
        self.counter++;
    }
    else if(self.counter==5)
    {
        self.sixthLabel.text = [sender currentTitle];
        self.brain.sixthInput = [[sender currentTitle] integerValue];
        [self levelFinish];
    }
    
    
}




@end
