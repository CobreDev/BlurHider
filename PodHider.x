@import UIKit;

@interface SBHLibraryCategoryPodBackgroundView : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

%hook SBHLibraryCategoryPodBackgroundView
// Not a huge fan of _updateVisualStyle since it's called like 16 times, but it's not called unless you respring.
-(void)_updateVisualStyle {

	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"dev.cobre.podhider"];

	id isEnabled = [bundleDefaults valueForKey:@"PHEnabled"];

	if ([isEnabled isEqual:@1]) {
		%orig;
		self.hidden = YES;
		NSLog(@"PODHIDER: _updateVisualStyle");
	}
	else {
		%orig;
	}
}
%end
