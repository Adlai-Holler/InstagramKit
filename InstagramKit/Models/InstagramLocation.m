//
//  InstagramLocation.m
//  Pods
//
//  Created by Adam Juhasz on 5/1/15.
//
//

#import "InstagramLocation.h"
#import "InstagramModel.h"

@implementation InstagramLocation

- (id)initWithInfo:(NSDictionary *)info
{
    self = [super initWithInfo:info];
    if (self && ik_dictionaryIsValid(info)) {

        CLLocationCoordinate2D coordinates;
        coordinates.latitude = [ik_safeNumber(info[kLocationLatitude]) doubleValue];
        coordinates.longitude = [ik_safeNumber(info[kLocationLongitude]) doubleValue];
        _coordinates = coordinates;
        _name = [[NSString alloc] initWithString:ik_safeString(info[kLocationName])];
    }
    return self;
}


- (BOOL)isEqualToLocation:(InstagramLocation *)location {
    return [super isEqualToModel:location];
}

@end
