@import UIKit;

@interface SBHLibraryCategoryPodBackgroundView : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

%hook SBHLibraryCategoryPodBackgroundView
// Not a huge fan of _updateVisualStyle since it's called like 16 times, but it's not called unless you respring.
-(void)_updateVisualStyle {
	%orig;
	self.hidden = YES;
	NSLog(@"PODHIDER: _updateVisualStyle");
}
%end