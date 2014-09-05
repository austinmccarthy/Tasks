//
//  Task.m
//  Tasks
//
//  Created by Austin McCarthy on 8/14/14.
//  Copyright (c) 2014 Austin McCarthy. All rights reserved.
//

#import "Task.h"

@implementation Task

- (id)initWithData:(NSDictionary *)data
{
    self = [super init];
    if (self) {
        self.name = data[TASK_NAME];
        self.description = data[TASK_DESCRIPTION];
        self.date = data[TASK_DATE];
        self.isCompleted = [data[TASK_COMPLETION] boolValue];
    }
    
    return self;
}

- (id)init
{
    self = [self initWithData:nil];
    
    return self;
}

@end
