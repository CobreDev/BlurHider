#import <Cephei/HBPreferences.h>

@import UIKit;

@interface SBHLibraryCategoryPodBackgroundView : UIView
@end

@interface SBFolderBackgroundView : UIView
@end

@interface SBFloatingDockPlatterView : UIView {
    UIView *_backgroundView;
}
@end

@interface SBDockView : UIView {
    UIView *_backgroundView;
}
@end

BOOL BHEnabled;
BOOL ALEnabled;
BOOL FLEnabled;
BOOL DKEnabled;

%group Tweak

// Hide App Library category background
%hook SBHLibraryCategoryPodBackgroundView
-(void)didMoveToWindow {
	if(ALEnabled) {
		// NSLog(@"PODHIDER: didMoveToWindow");
		self.hidden = YES;
		%orig;
	}
	else {
		%orig;
	}
}
%end
// Lines 43-91 are from https://github.com/hieuvh/HalFiPad. Used with permission

// Hide Folder Background
%hook SBFolderIconImageView
- (void)setBackgroundView : (UIView *)backgroundView {
	if(FLEnabled) { }
	else {
		%orig;
	}
}
%end

%hook SBFolderBackgroundView
- (id)initWithFrame:(struct CGRect)arg1{
	if(FLEnabled) {
  		return NULL;
	}
	else {
		return %orig;
	}
}
%end

// Hide Dock background
// Normal Dock
%hook SBDockView
-(void)didMoveToWindow {
	if(DKEnabled) { 
    	%orig;
		UIView *view = [self valueForKey:@"_backgroundView"];
		view.hidden = YES;
	}
	else {
		%orig;
	}
}
%end
// Floating Dock
%hook SBFloatingDockPlatterView
-(void)didMoveToWindow {
	if(DKEnabled) { 
	    %orig;
	    UIView *view = [self valueForKey:@"_backgroundView"];
	    view.hidden = YES;
	}
	else {
		%orig;
	}
}
%end

%end

%ctor {

	HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"dev.cobre.blurhiderprefs"];

	[preferences registerBool:&BHEnabled default:YES forKey:@"BHEnabled"];
	[preferences registerBool:&ALEnabled default:YES forKey:@"ALEnabled"];
	[preferences registerBool:&FLEnabled default:YES forKey:@"FLEnabled"];
	[preferences registerBool:&DKEnabled default:YES forKey:@"DKEnabled"];

	if (BHEnabled) {
      %init(Tweak);
    }
}
