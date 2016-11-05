//
//  Unit.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//
// A unit is a common term in strategy games like Warcraft 3 and it stands for a soldier or person that performs a task of some kind. A footman is just one of many "units" that a barracks can train.
// So let's use inheritence. First we'll introduce a new class called `Unit`.
// The Unit is an abstract idea and thus it needs to be told what the HP and AP for the unit will be
// Since all units have healthPoints, the HP related stuff can be migrated/moved into the Unit class instead.


#import "Unit.h"

@implementation Unit

- (instancetype)initWithHP:(int)hp AP:(int)ap{
    self = [super init];
    if (self){
        
    _healthPoints = hp;
    _ap = ap;
        
    }
    return self;
}

- (void)setHealthPoints:(int)hp{
    hp = self.healthPoints;
}

- (int)healthPoints{
    return self.healthPoints;
}

@end
