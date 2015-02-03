//
//  PlayerVas3kRuStrategy.m
//  BeardedSpice
//
//  Created by sbuglakov on 02/02/15.
//  Copyright (c) 2015 Tyler Rhodes / Jose Falcon. All rights reserved.
//

#import "PlayerVas3kRuStrategy.h"

@implementation PlayerVas3kRuStrategy

-(id) init
{
    self = [super init];
    if (self) {
        predicate = [NSPredicate predicateWithFormat:@"SELF LIKE[c] '*player.vas3k.ru*'"];
    }
    return self;
}

-(BOOL) accepts:(id <Tab>)tab
{
    return [predicate evaluateWithObject:[tab URL]];
}

-(NSString *) toggle
{
    return @"(function(){document.querySelector('#top-controls-play').click()})()";
}

-(NSString *) previous
{
    return @"(function(){document.querySelector('#top-controls-prev').click()})()";
}

-(NSString *) next
{
    return @"(function(){document.querySelector('#top-controls-next').click()})()";
}

-(NSString *) pause
{
    return @"(function(){document.querySelector('.playbutton-pause').click()})()";
//    return @"(function(){\
//    var e=document.querySelector('.player-controls__btn_play');\
//    if(e!=null){\
//    if(e.classList.contains('player-controls__btn_pause')){e.click()}\
//    }else{\
//    var e=document.querySelector('div.b-jambox__play');\
//    if(e.classList.contains('b-jambox__playing')){e.click()}\
//    }\
//    })()";
}

-(NSString *) displayName
{
    return @"player.vas3k.ru";
}

@end
