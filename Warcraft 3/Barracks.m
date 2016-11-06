//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"
#import "Footman.h"
#import "Peasant.h"

@implementation Barracks

-(instancetype) init{
    _gold = 1000;
    _food = 80;
    
    return self;
}

-(Footman *) trainFootman{
    
    if ([self canTrainFootman] == YES) {
        self.gold = self.gold - 135;
        self.food = self.food - 2;
        Footman *trainedFootman = [[Footman alloc]init];
        return trainedFootman;
    }else{
        NSLog(@"not enough resources");
        return nil;
    }
}

-(BOOL) canTrainFootman{
    if (self.gold >= 135 && self.food >= 2) {
        return YES;
    }else{
        return NO;
    }
}

- (Peasant*)trainPeasant{
    if ([self canTrainFootman] == YES) {
        self.gold = self.gold - 90;
        self.food = self.food - 5;
        Footman *trainedPeasant = [[Peasant alloc]init];
        return trainedPeasant;
    }else{
        NSLog(@"not enough resources");
        return nil;
    }

}

- (BOOL)canTrainPeasant{
    if (self.gold >= 90 && self.food >= 5) {
        return YES;
    }else{
        return NO;
    }
}


@end
