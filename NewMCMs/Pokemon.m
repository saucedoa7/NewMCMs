//
//  MagicalCreature.m
//  NewMCMs
//
//  Created by Albert Saucedo on 11/21/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon
-(instancetype)initWithName:(NSString *)name stage:(int)stage level:(int)level{
    self = [super init];
    self.name = name;
    self.stage = stage;
    self.level = level;

    return self;
}
@end
