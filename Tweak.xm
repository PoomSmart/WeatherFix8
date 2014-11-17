#import <substrate.h>

// As described in http://www.reddit.com/r/jailbreak/comments/2mi2t3/have_we_found_a_fix_for_the_weather_animations/
// Here is the simple solution, which apply to - [WAAsynchronousAssetLoader filenameForCondition:isDay:]
// We have to specific images screen-height-suffix correctly, or images not existed

@interface UIScreen (Addition)
- (CGRect)_nativeDisplayBounds;
@end

extern "C" CGFloat GetDeviceHeight(); // in Weather.framework

MSHook(CGFloat, GetDeviceHeight)
{
	// equivalent to original value when device resolution is not zoomed or default
	return 0.5*[[UIScreen mainScreen] _nativeDisplayBounds].size.height;
}

%ctor
{
	MSHookFunction(GetDeviceHeight, MSHake(GetDeviceHeight));
}
