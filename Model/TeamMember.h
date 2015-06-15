//
//  TeamMemger.h
//  NavigationControllers
//
//  Created by Gan Chau on 6/15/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TeamMember : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *phoneNumber;
@property (nonatomic, strong) NSString *birthCity;
@property (nonatomic, strong) NSString *birthState;
@property (nonatomic, strong) NSString *favoriteBand;
@property (nonatomic, strong) UIImage *image;

- (instancetype)initWithName:(NSString *)name
                 phoneNumber:(NSString *)phoneNumber
                   birthCity:(NSString *)birthCity
                  birthState:(NSString *)birthState
                favoriteBand:(NSString *)favoriteBand
                       image:(UIImage *)image;

@end
