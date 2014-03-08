//
//  ReferralObject.h
//  Neurs
//
//  Created by Kenneth Hernandez on 3/8/14.
//  Copyright (c) 2014 Kenneth Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReferralObject : NSObject

@property(nonatomic)NSInteger *idNumber;

@property(weak,nonatomic)NSString *firstName;
@property(weak,nonatomic)NSString *lastName;

@property(weak,nonatomic)NSString *country;
@property(weak,nonatomic)NSString *language;

@property(weak,nonatomic)NSString *gender;
@property(weak,nonatomic)NSString *mobilePhone;

@property(weak,nonatomic)UIImage *profilePic;

@end
