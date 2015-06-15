//
//  TeamMemger.m
//  NavigationControllers
//
//  Created by Gan Chau on 6/15/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "TeamMember.h"

@implementation TeamMember

- (instancetype)init
{
    self = [self initWithName:@""
                  phoneNumber:@""
                    birthCity:@""
                   birthState:@""
                 favoriteBand:@""
                        image:[[UIImage alloc] init]];
    return self;
}

- (instancetype)initWithName:(NSString *)name
                 phoneNumber:(NSString *)phoneNumber
                   birthCity:(NSString *)birthCity
                  birthState:(NSString *)birthState
                favoriteBand:(NSString *)favoriteBand
                       image:(UIImage *)image
{
    self = [super init];
    
    if (self) {
        _name = name;
        _phoneNumber = phoneNumber;
        _birthCity = birthCity;
        _birthState = birthState;
        _favoriteBand = favoriteBand;
        _image = image;
    }
    
    return self;
}


@end
