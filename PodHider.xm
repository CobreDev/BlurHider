#import <Cephei/HBPreferences.h>

@import UIKit;

@interface SBHLibraryCategoryPodBackgroundView : UIView
@end

BOOL PHEnabled;

%hook SBHLibraryCategoryPodBackgroundView
-(void)didMoveToWindow {
	if(PHEnabled) {
		NSLog(@"PODHIDER: didMoveToWindow");
		%orig;
		self.hidden = YES;
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