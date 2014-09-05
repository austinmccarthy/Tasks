//
//  Task.h
//  Tasks
//
//  Created by Austin McCarthy on 8/14/14.
//  Copyright (c) 2014 Austin McCarthy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (strong, nonatomic)NSString *name;
@property (strong, nonatomic)NSString *description;
@property (strong, nonatomic)NSDate *date;
@property (nonatomic)BOOL isCompleted;

- (id)initWithData:(NSDictionary *)data;

@end
