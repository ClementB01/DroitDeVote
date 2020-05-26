//
//  Person.h
//  DroitDeVote
//
//  Created by lpiem on 17/10/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property(nonatomic) NSString *name;
@property(nonatomic) UInt8 age;

- (instancetype)initWithName:(NSString *)name age:(UInt8)age;
- (BOOL)canLegallyVote;


@end

NS_ASSUME_NONNULL_END
