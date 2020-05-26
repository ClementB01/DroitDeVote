//
//  Person.m
//  DroitDeVote
//
//  Created by lpiem on 17/10/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWithName:(NSString *)name age:(UInt8)age
{
    self = [super init];
    if (self) {
        _age = age;
        _name = name;
    }
    return self;
}

- (BOOL)canLegallyVote
{
    return self.age >= 18;
}
@end
