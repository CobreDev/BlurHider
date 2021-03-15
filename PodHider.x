#import <Cephei/HBPreferences.h>
#import <CepheiPrefs/HBRootListController.h>
#import <CepheiPrefs/HBAppearanceSettings.h>

static NSString *const PHPreferencesDomain = @"dev.cobre.podhider";
static NSString *const PHPreferencesEnabledKey = @"PHEnabled";

HBPreferences *preferences;
BOOL PHEnabled;

@import UIKit;

@interface SBHLibraryCategoryPodBackgroundView : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

%hook SBHLibraryCategoryPodBackgroundView
// Not a huge fan of _updateVisualStyle since it's called like 16 times, but it's not called unless you respring.
-(void)_updateVisualStyle {

	if (PHEnabled) {
		%orig;
		self.hidden = YES;
		NSLog(@"PODHIDER: _updateVisualStyle");
	}
	else {
		%orig;
	}
}
%end

%ctor {
    preferences = [[HBPreferences alloc] initWithIdentifier:@"dev.cobre.podhider"];
    [preferences registerDefaults:@{
        @"PHEnabled": @YES,
    }];

    [preferences registerBool:&PHEnabled default:YES forKey:@"PHEnabled"];

    NSLog(@"Am I enabled? %i", [preferences boolForKey:@"PHEnabled"]);
}