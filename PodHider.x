#import <Cephei/HBPreferences.h>

@import UIKit;

@interface SBHLibraryCategoryPodBackgroundView : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

BOOL PHEnabled;

%hook SBHLibraryCategoryPodBackgroundView
// Not a huge fan of _updateVisualStyle since it's called like 16 times, but it's not called unless you respring.
-(void)_updateVisualStyle {
	if(PHEnabled) {
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

  HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"dev.cobre.podhiderprefs"];

  [preferences registerBool:&PHEnabled default:YES forKey:@"PHEnabled"];

}