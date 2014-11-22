//
//  MagicalCreature.h
//  NewMCMs
//
//  Created by Albert Saucedo on 11/21/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pokemon : NSObject
@property NSString *name;
@property int stage;
@property int level;

-(instancetype)initWithName:(NSString *)name stage:(int)stage level:(int)level;
@end
