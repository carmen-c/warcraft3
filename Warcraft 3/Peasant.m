//
//  peasant.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 6/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Peasant.h"

@implementation Peasant

- (instancetype)init
{
    self = [super init];
    if (self) {
        healthPoints = 35;
        _peasantAttackPower = 0;
    }
    return self;
}

- (int)healthPoints{
    return healthPoints;
}

- (int)attackPower{
    return self.peasantAttackPower;
}

@end
