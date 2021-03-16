#line 1 "PodHider.xm"
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

BOOL PHEnabled;
BOOL ALEnabled;
BOOL FLEnabled;
BOOL DKEnabled;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBFloatingDockPlatterView; @class SBDockView; @class SBFolderIconImageView; @class SBHLibraryCategoryPodBackgroundView; 


#line 26 "PodHider.xm"
static void (*_logos_orig$Tweak$SBHLibraryCategoryPodBackgroundView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL SBHLibraryCategoryPodBackgroundView* _LOGOS_SELF_CONST, SEL); static void _logos_method$Tweak$SBHLibraryCategoryPodBackgroundView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBHLibraryCategoryPodBackgroundView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Tweak$SBFolderIconImageView$setBackgroundView$)(_LOGOS_SELF_TYPE_NORMAL SBFolderIconImageView* _LOGOS_SELF_CONST, SEL, UIView *); static void _logos_method$Tweak$SBFolderIconImageView$setBackgroundView$(_LOGOS_SELF_TYPE_NORMAL SBFolderIconImageView* _LOGOS_SELF_CONST, SEL, UIView *); static void (*_logos_orig$Tweak$SBDockView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static void _logos_method$Tweak$SBDockView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Tweak$SBFloatingDockPlatterView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockPlatterView* _LOGOS_SELF_CONST, SEL); static void _logos_method$Tweak$SBFloatingDockPlatterView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockPlatterView* _LOGOS_SELF_CONST, SEL); 



static void _logos_method$Tweak$SBHLibraryCategoryPodBackgroundView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBHLibraryCategoryPodBackgroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	if(ALEnabled) {
		
		self.hidden = YES;
		_logos_orig$Tweak$SBHLibraryCategoryPodBackgroundView$didMoveToWindow(self, _cmd);
	}
	else {
		_logos_orig$Tweak$SBHLibraryCategoryPodBackgroundView$didMoveToWindow(self, _cmd);
	}
}












 static void _logos_method$Tweak$SBFolderIconImageView$setBackgroundView$(_LOGOS_SELF_TYPE_NORMAL SBFolderIconImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIView * backgroundView) {}





static void _logos_method$Tweak$SBDockView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$Tweak$SBDockView$didMoveToWindow(self, _cmd);
	UIView *view = [self valueForKey:@"_backgroundView"];
	view.hidden = YES;
}



static void _logos_method$Tweak$SBFloatingDockPlatterView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL SBFloatingDockPlatterView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$Tweak$SBFloatingDockPlatterView$didMoveToWindow(self, _cmd);
    UIView *view = [self valueForKey:@"_backgroundView"];
    view.hidden = YES;
}




static __attribute__((constructor)) void _logosLocalCtor_0271b2a0(int __unused argc, char __unused **argv, char __unused **envp) {

	HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"dev.cobre.podhiderprefs"];

	[preferences registerBool:&PHEnabled default:YES forKey:@"PHEnabled"];
	[preferences registerBool:&ALEnabled default:YES forKey:@"ALEnabled"];
	[preferences registerBool:&FLEnabled default:YES forKey:@"FLEnabled"];
	[preferences registerBool:&DKEnabled default:YES forKey:@"DKEnabled"];

	if (PHEnabled) {
      {Class _logos_class$Tweak$SBHLibraryCategoryPodBackgroundView = objc_getClass("SBHLibraryCategoryPodBackgroundView"); { MSHookMessageEx(_logos_class$Tweak$SBHLibraryCategoryPodBackgroundView, @selector(didMoveToWindow), (IMP)&_logos_method$Tweak$SBHLibraryCategoryPodBackgroundView$didMoveToWindow, (IMP*)&_logos_orig$Tweak$SBHLibraryCategoryPodBackgroundView$didMoveToWindow);}Class _logos_class$Tweak$SBFolderIconImageView = objc_getClass("SBFolderIconImageView"); { MSHookMessageEx(_logos_class$Tweak$SBFolderIconImageView, @selector(setBackgroundView:), (IMP)&_logos_method$Tweak$SBFolderIconImageView$setBackgroundView$, (IMP*)&_logos_orig$Tweak$SBFolderIconImageView$setBackgroundView$);}Class _logos_class$Tweak$SBDockView = objc_getClass("SBDockView"); { MSHookMessageEx(_logos_class$Tweak$SBDockView, @selector(didMoveToWindow), (IMP)&_logos_method$Tweak$SBDockView$didMoveToWindow, (IMP*)&_logos_orig$Tweak$SBDockView$didMoveToWindow);}Class _logos_class$Tweak$SBFloatingDockPlatterView = objc_getClass("SBFloatingDockPlatterView"); { MSHookMessageEx(_logos_class$Tweak$SBFloatingDockPlatterView, @selector(didMoveToWindow), (IMP)&_logos_method$Tweak$SBFloatingDockPlatterView$didMoveToWindow, (IMP*)&_logos_orig$Tweak$SBFloatingDockPlatterView$didMoveToWindow);}}
    }
}
