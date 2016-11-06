//
//  Footman.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Footman.h"

@implementation Footman

-(instancetype)init{
    self = [super init];
    if (self) {
    healthPoints = 60;
    self.attackPower = 10;
    }
    return self;
}

- (void)damage:(int)damage{
    healthPoints = healthPoints - damage;
}

- (int)healthPoints{
    return healthPoints;
}

- (void)attack:(Unit *)enemy withDamage:(int)damage{
    enemy.healthPoints = enemy.healthPoints - damage;
}

@end
