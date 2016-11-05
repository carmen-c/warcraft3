//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"
#import "Footman.h"

@implementation Barracks

-(instancetype) init{
    _gold = 1000;
    _food = 80;
    
    return self;
}

-(Footman *) trainFootman{
    self.gold = self.gold - 135;
    self.food = self.food - 2;
    
    if ([self canTrainFootman] == YES) {
        Footman *trainedFootman = [[Footman alloc]init];
        return trainedFootman;
    }else{
        NSLog(@"not enough resources");
    }
    return nil;
}

-(BOOL) canTrainFootman{
    if (self.gold < 135) {
        return NO;
    }else if (self.food < 2){
        return NO;
    }else{
        return YES;
    }

}

@end
