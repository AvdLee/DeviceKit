//===----------------------------------------------------------------------===//
//
// This source file is part of the DeviceKit open source project
//
// Copyright © 2014 - 2018 Dennis Weissmann and the DeviceKit project authors
//
// License: https://github.com/dennisweissmann/DeviceKit/blob/master/LICENSE
// Contributors: https://github.com/dennisweissmann/DeviceKit#contributors
//
//===----------------------------------------------------------------------===//

import Foundation

// MARK: Device

/// This enum is a value-type wrapper and extension of
/// [`UIDevice`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/).
///
/// Usage:
///
///     let device = Device.current
///
///     print(device)     // prints, for example, "iPhone 6 Plus"
///
///     if device == .iPhone6Plus {
///         // Do something
///     } else {
///         // Do something else
///     }
///
///     ...
///
///     if device.batteryState == .full || device.batteryState >= .charging(75) {
///         print("Your battery is happy! 😊")
///     }
///
///     ...
///
///     if device.batteryLevel >= 50 {
///         install_iOS()
///     } else {
///         showError()
///     }
///
public enum Device: Hashable {
    /// Device is an [iPod touch (5th generation)](https://support.apple.com/kb/SP657)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP657/sp657_ipod-touch_size.jpg)
    case iPodTouch5
    /// Device is an [iPod touch (6th generation)](https://support.apple.com/kb/SP720)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP720/SP720-ipod-touch-specs-color-sg-2015.jpg)
    case iPodTouch6
    /// Device is an [iPod touch (7th generation)](https://support.apple.com/kb/SP796)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP796/ipod-touch-7th-gen_2x.png)
    case iPodTouch7
    /// Device is an [iPhone 4](https://support.apple.com/kb/SP587)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP643/sp643_iphone4s_color_black.jpg)
    case iPhone4
    /// Device is an [iPhone 4s](https://support.apple.com/kb/SP643)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP643/sp643_iphone4s_color_black.jpg)
    case iPhone4s
    /// Device is an [iPhone 5](https://support.apple.com/kb/SP655)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP655/sp655_iphone5_color.jpg)
    case iPhone5
    /// Device is an [iPhone 5c](https://support.apple.com/kb/SP684)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP684/SP684-color_yellow.jpg)
    case iPhone5c
    /// Device is an [iPhone 5s](https://support.apple.com/kb/SP685)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP685/SP685-color_black.jpg)
    case iPhone5s
    /// Device is an [iPhone 6](https://support.apple.com/kb/SP705)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP705/SP705-iphone_6-mul.png)
    case iPhone6
    /// Device is an [iPhone 6 Plus](https://support.apple.com/kb/SP706)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP706/SP706-iphone_6_plus-mul.png)
    case iPhone6Plus
    /// Device is an [iPhone 6s](https://support.apple.com/kb/SP726)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP726/SP726-iphone6s-gray-select-2015.png)
    case iPhone6s
    /// Device is an [iPhone 6s Plus](https://support.apple.com/kb/SP727)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP727/SP727-iphone6s-plus-gray-select-2015.png)
    case iPhone6sPlus
    /// Device is an [iPhone 7](https://support.apple.com/kb/SP743)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP743/iphone7-black.png)
    case iPhone7
    /// Device is an [iPhone 7 Plus](https://support.apple.com/kb/SP744)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP744/iphone7-plus-black.png)
    case iPhone7Plus
    /// Device is an [iPhone SE](https://support.apple.com/kb/SP738)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP738/SP738.png)
    case iPhoneSE
    /// Device is an [iPhone 8](https://support.apple.com/kb/SP767)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP767/iphone8.png)
    case iPhone8
    /// Device is an [iPhone 8 Plus](https://support.apple.com/kb/SP768)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP768/iphone8plus.png)
    case iPhone8Plus
    /// Device is an [iPhone X](https://support.apple.com/kb/SP770)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP770/iphonex.png)
    case iPhoneX
    /// Device is an [iPhone Xs](https://support.apple.com/kb/SP779)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP779/SP779-iphone-xs.jpg)
    case iPhoneXS
    /// Device is an [iPhone Xs Max](https://support.apple.com/kb/SP780)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP780/SP780-iPhone-Xs-Max.jpg)
    case iPhoneXSMax
    /// Device is an [iPhone Xʀ](https://support.apple.com/kb/SP781)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP781/SP781-iPhone-xr.jpg)
    case iPhoneXR
    /// Device is an [iPhone 11](https://support.apple.com/kb/SP804)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP804/sp804-iphone11_2x.png)
    case iPhone11
    /// Device is an [iPhone 11 Pro](https://support.apple.com/kb/SP805)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP805/sp805-iphone11pro_2x.png)
    case iPhone11Pro
    /// Device is an [iPhone 11 Pro Max](https://support.apple.com/kb/SP806)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP806/sp806-iphone11pro-max_2x.png)
    case iPhone11ProMax
    /// Device is an [iPhone SE (2nd generation)](https://support.apple.com/kb/SP820)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP820/iphone-se-2nd-gen_2x.png)
    case iPhoneSE2
    /// Device is an [iPhone 12](https://support.apple.com/kb/SP830)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP830/sp830-iphone12-ios14_2x.png)
    case iPhone12
    /// Device is an [iPhone 12 mini](https://support.apple.com/kb/SP829)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP829/sp829-iphone12mini-ios14_2x.png)
    case iPhone12Mini
    /// Device is an [iPhone 12 Pro](https://support.apple.com/kb/SP831)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP831/iphone12pro-ios14_2x.png)
    case iPhone12Pro
    /// Device is an [iPhone 12 Pro Max](https://support.apple.com/kb/SP832)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP832/iphone12promax-ios14_2x.png)
    case iPhone12ProMax
    /// Device is an [iPhone 13](https://support.apple.com/kb/SP851)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1092/en_US/iphone-13-240.png)
    case iPhone13
    /// Device is an [iPhone 13 mini](https://support.apple.com/kb/SP847)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1091/en_US/iphone-13mini-240.png)
    case iPhone13Mini
    /// Device is an [iPhone 13 Pro](https://support.apple.com/kb/SP852)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1093/en_US/iphone-13pro-240.png)
    case iPhone13Pro
    /// Device is an [iPhone 13 Pro Max](https://support.apple.com/kb/SP848)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1095/en_US/iphone-13promax-240.png)
    case iPhone13ProMax
    /// Device is an [iPhone SE (3rd generation)](https://support.apple.com/kb/SP867)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1136/en_US/iphone-se-3rd-gen-colors-240.png)
    case iPhoneSE3
    /// Device is an [iPhone 14](https://support.apple.com/kb/SP873)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1092/en_US/TODO)
    case iPhone14
    /// Device is an [iPhone 14 Plus](https://support.apple.com/kb/SP874)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1091/en_US/TODO)
    case iPhone14Plus
    /// Device is an [iPhone 14 Pro](https://support.apple.com/kb/SP875)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1093/en_US/TODO)
    case iPhone14Pro
    /// Device is an [iPhone 14 Pro Max](https://support.apple.com/kb/SP876)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1095/en_US/TODO)
    case iPhone14ProMax
    /// Device is an [iPad 2](https://support.apple.com/kb/SP622)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP622/SP622_01-ipad2-mul.png)
    case iPad2
    /// Device is an [iPad (3rd generation)](https://support.apple.com/kb/SP647)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
    case iPad3
    /// Device is an [iPad (4th generation)](https://support.apple.com/kb/SP662)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
    case iPad4
    /// Device is an [iPad Air](https://support.apple.com/kb/SP692)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP692/SP692-specs_color-mul.png)
    case iPadAir
    /// Device is an [iPad Air 2](https://support.apple.com/kb/SP708)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP708/SP708-space_gray.jpeg)
    case iPadAir2
    /// Device is an [iPad (5th generation)](https://support.apple.com/kb/SP751)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP751/ipad_5th_generation.png)
    case iPad5
    /// Device is an [iPad (6th generation)](https://support.apple.com/kb/SP774)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP774/sp774-ipad-6-gen_2x.png)
    case iPad6
    /// Device is an [iPad Air (3rd generation)](https://support.apple.com/kb/SP787)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP787/ipad-air-2019.jpg)
    case iPadAir3
    /// Device is an [iPad (7th generation)](https://support.apple.com/kb/SP807)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP807/sp807-ipad-7th-gen_2x.png)
    case iPad7
    /// Device is an [iPad (8th generation)](https://support.apple.com/kb/SP822)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP822/sp822-ipad-8gen_2x.png)
    case iPad8
    /// Device is an [iPad (9th generation)](https://support.apple.com/kb/SP849)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1096/en_US/ipad-9gen-240.png)
    case iPad9
    /// Device is an [iPad (10th generation)](https://support.apple.com/kb/SP884)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1096/en_US/TODO.png)
    case iPad10
    /// Device is an [iPad Air (4th generation)](https://support.apple.com/kb/SP828)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP828/sp828ipad-air-ipados14-960_2x.png)
    case iPadAir4
    /// Device is an [iPad Air (5th generation)](https://support.apple.com/kb/TODO)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/TODO)
    case iPadAir5
    /// Device is an [iPad Mini](https://support.apple.com/kb/SP661)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP661/sp661_ipad_mini_color.jpg)
    case iPadMini
    /// Device is an [iPad Mini 2](https://support.apple.com/kb/SP693)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP693/SP693-specs_color-mul.png)
    case iPadMini2
    /// Device is an [iPad Mini 3](https://support.apple.com/kb/SP709)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP709/SP709-space_gray.jpeg)
    case iPadMini3
    /// Device is an [iPad Mini 4](https://support.apple.com/kb/SP725)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP725/SP725ipad-mini-4.png)
    case iPadMini4
    /// Device is an [iPad Mini (5th generation)](https://support.apple.com/kb/SP788)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP788/ipad-mini-2019.jpg)
    case iPadMini5
    /// Device is an [iPad Mini (6th generation)](https://support.apple.com/kb/SP850)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1097/en_US/ipad-mini-6gen-240.png)
    case iPadMini6
    /// Device is an [iPad Pro 9.7-inch](https://support.apple.com/kb/SP739)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP739/SP739.png)
    case iPadPro9Inch
    /// Device is an [iPad Pro 12-inch](https://support.apple.com/kb/SP723)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP723/SP723-iPad_Pro_2x.png)
    case iPadPro12Inch
    /// Device is an [iPad Pro 12-inch (2nd generation)](https://support.apple.com/kb/SP761)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP761/ipad-pro-12in-hero-201706.png)
    case iPadPro12Inch2
    /// Device is an [iPad Pro 10.5-inch](https://support.apple.com/kb/SP762)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP761/ipad-pro-10in-hero-201706.png)
    case iPadPro10Inch
    /// Device is an [iPad Pro 11-inch](https://support.apple.com/kb/SP784)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP784/ipad-pro-11-2018_2x.png)
    case iPadPro11Inch
    /// Device is an [iPad Pro 12.9-inch (3rd generation)](https://support.apple.com/kb/SP785)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP785/ipad-pro-12-2018_2x.png)
    case iPadPro12Inch3
    /// Device is an [iPad Pro 11-inch (2nd generation)](https://support.apple.com/kb/SP814)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP814/ipad-pro-11-2020.jpeg)
    case iPadPro11Inch2
    /// Device is an [iPad Pro 12.9-inch (4th generation)](https://support.apple.com/kb/SP815)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP815/ipad-pro-12-2020.jpeg)
    case iPadPro12Inch4
    /// Device is an [iPad Pro 11-inch (3rd generation)](https://support.apple.com/kb/SP843)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP843/ipad-pro-11_2x.png)
    case iPadPro11Inch3
    /// Device is an [iPad Pro 12.9-inch (5th generation)](https://support.apple.com/kb/SP844)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP844/ipad-pro-12-9_2x.png)
    case iPadPro12Inch5
    /// Device is an [iPad Pro 11-inch (4th generation)](https://support.apple.com/kb/SP882)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP843/TODO.png)
    case iPadPro11Inch4
    /// Device is an [iPad Pro 12.9-inch (6th generation)](https://support.apple.com/kb/SP883)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP844/TODO.png)
    case iPadPro12Inch6
    /// Device is a [HomePod](https://support.apple.com/kb/SP773)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP773/homepod_space_gray_large_2x.jpg)
    case homePod
    /// Device is an [Apple TV HD](https://support.apple.com/kb/SP724) (Previously Apple TV (4th generation))
    ///
    /// ![Image](http://images.apple.com/v/tv/c/images/overview/buy_tv_large_2x.jpg)
    case appleTVHD
    /// Device is an [Apple TV 4K](https://support.apple.com/kb/SP769)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP769/appletv4k.png)
    case appleTV4K
    /// Device is an [Apple TV 4K (2nd generation)](https://support.apple.com/kb/SP845)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1023/en_US/apple-tv-4k-2gen-240.png)
    case appleTV4K2
    /// Device is an [Apple TV 4K (3rd generation)](https://support.apple.com/kb/TODO)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1023/en_US/TODO.png)
    case appleTV4K3
    /// Device is an [Apple Watch (1st generation)](https://support.apple.com/kb/SP735)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM784/en_US/apple_watch_sport-240.png)
    case appleWatchSeries0_38mm
    /// Device is an [Apple Watch (1st generation)](https://support.apple.com/kb/SP735)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM784/en_US/apple_watch_sport-240.png)
    case appleWatchSeries0_42mm
    /// Device is an [Apple Watch Series 1](https://support.apple.com/kb/SP745)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM848/en_US/applewatch-series2-aluminum-temp-240.png)
    case appleWatchSeries1_38mm
    /// Device is an [Apple Watch Series 1](https://support.apple.com/kb/SP745)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM848/en_US/applewatch-series2-aluminum-temp-240.png)
    case appleWatchSeries1_42mm
    /// Device is an [Apple Watch Series 2](https://support.apple.com/kb/SP746)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM852/en_US/applewatch-series2-hermes-240.png)
    case appleWatchSeries2_38mm
    /// Device is an [Apple Watch Series 2](https://support.apple.com/kb/SP746)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM852/en_US/applewatch-series2-hermes-240.png)
    case appleWatchSeries2_42mm
    /// Device is an [Apple Watch Series 3](https://support.apple.com/kb/SP766)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM893/en_US/apple-watch-s3-nikeplus-240.png)
    case appleWatchSeries3_38mm
    /// Device is an [Apple Watch Series 3](https://support.apple.com/kb/SP766)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM893/en_US/apple-watch-s3-nikeplus-240.png)
    case appleWatchSeries3_42mm
    /// Device is an [Apple Watch Series 4](https://support.apple.com/kb/SP778)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM911/en_US/aw-series4-nike-240.png)
    case appleWatchSeries4_40mm
    /// Device is an [Apple Watch Series 4](https://support.apple.com/kb/SP778)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM911/en_US/aw-series4-nike-240.png)
    case appleWatchSeries4_44mm
    /// Device is an [Apple Watch Series 5](https://support.apple.com/kb/SP808)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP808/sp808-apple-watch-series-5_2x.png)
    case appleWatchSeries5_40mm
    /// Device is an [Apple Watch Series 5](https://support.apple.com/kb/SP808)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP808/sp808-apple-watch-series-5_2x.png)
    case appleWatchSeries5_44mm
    /// Device is an [Apple Watch Series 6](https://support.apple.com/kb/SP826)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP826/sp826-apple-watch-series6-580_2x.png)
    case appleWatchSeries6_40mm
    /// Device is an [Apple Watch Series 6](https://support.apple.com/kb/SP826)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP826/sp826-apple-watch-series6-580_2x.png)
    case appleWatchSeries6_44mm
    /// Device is an [Apple Watch SE](https://support.apple.com/kb/SP827)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP827/sp827-apple-watch-se-580_2x.png)
    case appleWatchSE_40mm
    /// Device is an [Apple Watch SE](https://support.apple.com/kb/SP827)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP827/sp827-apple-watch-se-580_2x.png)
    case appleWatchSE_44mm
    /// Device is an [Apple Watch Series 7](https://support.apple.com/kb/SP860)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP860/series7-480_2x.png)
    case appleWatchSeries7_41mm
    /// Device is an [Apple Watch Series 7](https://support.apple.com/kb/SP860)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP860/series7-480_2x.png)
    case appleWatchSeries7_45mm
    /// Device is an [Apple Watch Series 8](https://support.apple.com/kb/SP878)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP860/TODO)
    case appleWatchSeries8_41mm
    /// Device is an [Apple Watch Series 8](https://support.apple.com/kb/SP878)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP860/TODO)
    case appleWatchSeries8_45mm
    /// Device is an [Apple Watch SE (2nd generation)](https://support.apple.com/kb/SP877)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP827/TODO)
    case appleWatchSE2_40mm
    /// Device is an [Apple Watch SE (2nd generation)](https://support.apple.com/kb/SP877)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP827/TODO)
    case appleWatchSE2_44mm
    /// Device is an [Apple Watch Ultra](https://support.apple.com/kb/SP879)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP827/TODO)
    case appleWatchUltra

  /// Device is [Simulator](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/iOS_Simulator_Guide/Introduction/Introduction.html)
  ///
  /// ![Image](https://developer.apple.com/assets/elements/icons/256x256/xcode-6.png)
  indirect case simulator(Device)

  /// Device is not yet known (implemented)
  /// You can still use this enum as before but the description equals the identifier (you can get multiple identifiers for the same product class
  /// (e.g. "iPhone6,1" or "iPhone 6,2" do both mean "iPhone 5s"))
  case unknown(String)

  /// Maps an identifier to a Device. If the identifier can not be mapped to an existing device, `UnknownDevice(identifier)` is returned.
  ///
  /// - parameter identifier: The device identifier, e.g. "iPhone7,1". Can be obtained from `Device.identifier`.
  ///
  /// - returns: An initialized `Device`.
  public static func mapToDevice(identifier: String) -> Device { // swiftlint:disable:this cyclomatic_complexity function_body_length
      switch identifier {
      case "iPod5,1": return iPodTouch5
      case "iPod7,1": return iPodTouch6
      case "iPod9,1": return iPodTouch7
      case "iPhone3,1", "iPhone3,2", "iPhone3,3": return iPhone4
      case "iPhone4,1": return iPhone4s
      case "iPhone5,1", "iPhone5,2": return iPhone5
      case "iPhone5,3", "iPhone5,4": return iPhone5c
      case "iPhone6,1", "iPhone6,2": return iPhone5s
      case "iPhone7,2": return iPhone6
      case "iPhone7,1": return iPhone6Plus
      case "iPhone8,1": return iPhone6s
      case "iPhone8,2": return iPhone6sPlus
      case "iPhone9,1", "iPhone9,3": return iPhone7
      case "iPhone9,2", "iPhone9,4": return iPhone7Plus
      case "iPhone8,4": return iPhoneSE
      case "iPhone10,1", "iPhone10,4": return iPhone8
      case "iPhone10,2", "iPhone10,5": return iPhone8Plus
      case "iPhone10,3", "iPhone10,6": return iPhoneX
      case "iPhone11,2": return iPhoneXS
      case "iPhone11,4", "iPhone11,6": return iPhoneXSMax
      case "iPhone11,8": return iPhoneXR
      case "iPhone12,1": return iPhone11
      case "iPhone12,3": return iPhone11Pro
      case "iPhone12,5": return iPhone11ProMax
      case "iPhone12,8": return iPhoneSE2
      case "iPhone13,2": return iPhone12
      case "iPhone13,1": return iPhone12Mini
      case "iPhone13,3": return iPhone12Pro
      case "iPhone13,4": return iPhone12ProMax
      case "iPhone14,5": return iPhone13
      case "iPhone14,4": return iPhone13Mini
      case "iPhone14,2": return iPhone13Pro
      case "iPhone14,3": return iPhone13ProMax
      case "iPhone14,6": return iPhoneSE3
      case "iPhone14,7": return iPhone14
      case "iPhone14,8": return iPhone14Plus
      case "iPhone15,2": return iPhone14Pro
      case "iPhone15,3": return iPhone14ProMax
      case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4": return iPad2
      case "iPad3,1", "iPad3,2", "iPad3,3": return iPad3
      case "iPad3,4", "iPad3,5", "iPad3,6": return iPad4
      case "iPad4,1", "iPad4,2", "iPad4,3": return iPadAir
      case "iPad5,3", "iPad5,4": return iPadAir2
      case "iPad6,11", "iPad6,12": return iPad5
      case "iPad7,5", "iPad7,6": return iPad6
      case "iPad11,3", "iPad11,4": return iPadAir3
      case "iPad7,11", "iPad7,12": return iPad7
      case "iPad11,6", "iPad11,7": return iPad8
      case "iPad12,1", "iPad12,2": return iPad9
      case "iPad13,18", "iPad13,19": return iPad10
      case "iPad13,1", "iPad13,2": return iPadAir4
      case "iPad13,16", "iPad13,17": return iPadAir5
      case "iPad2,5", "iPad2,6", "iPad2,7": return iPadMini
      case "iPad4,4", "iPad4,5", "iPad4,6": return iPadMini2
      case "iPad4,7", "iPad4,8", "iPad4,9": return iPadMini3
      case "iPad5,1", "iPad5,2": return iPadMini4
      case "iPad11,1", "iPad11,2": return iPadMini5
      case "iPad14,1", "iPad14,2": return iPadMini6
      case "iPad6,3", "iPad6,4": return iPadPro9Inch
      case "iPad6,7", "iPad6,8": return iPadPro12Inch
      case "iPad7,1", "iPad7,2": return iPadPro12Inch2
      case "iPad7,3", "iPad7,4": return iPadPro10Inch
      case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4": return iPadPro11Inch
      case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8": return iPadPro12Inch3
      case "iPad8,9", "iPad8,10": return iPadPro11Inch2
      case "iPad8,11", "iPad8,12": return iPadPro12Inch4
      case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7": return iPadPro11Inch3
      case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11": return iPadPro12Inch5
      case "iPad14,3", "iPad14,4": return iPadPro11Inch4
      case "iPad14,5", "iPad14,6": return iPadPro12Inch6
      case "AudioAccessory1,1": return homePod
      case "AppleTV5,3": return appleTVHD
      case "AppleTV6,2": return appleTV4K
      case "AppleTV11,1": return appleTV4K2
      case "AppleTV14,1": return appleTV4K3
      case "Watch1,1": return appleWatchSeries0_38mm
      case "Watch1,2": return appleWatchSeries0_42mm
      case "Watch2,6": return appleWatchSeries1_38mm
      case "Watch2,7": return appleWatchSeries1_42mm
      case "Watch2,3": return appleWatchSeries2_38mm
      case "Watch2,4": return appleWatchSeries2_42mm
      case "Watch3,1", "Watch3,3": return appleWatchSeries3_38mm
      case "Watch3,2", "Watch3,4": return appleWatchSeries3_42mm
      case "Watch4,1", "Watch4,3": return appleWatchSeries4_40mm
      case "Watch4,2", "Watch4,4": return appleWatchSeries4_44mm
      case "Watch5,1", "Watch5,3": return appleWatchSeries5_40mm
      case "Watch5,2", "Watch5,4": return appleWatchSeries5_44mm
      case "Watch6,1", "Watch6,3": return appleWatchSeries6_40mm
      case "Watch6,2", "Watch6,4": return appleWatchSeries6_44mm
      case "Watch5,9", "Watch5,11": return appleWatchSE_40mm
      case "Watch5,10", "Watch5,12": return appleWatchSE_44mm
      case "Watch6,6", "Watch6,8": return appleWatchSeries7_41mm
      case "Watch6,7", "Watch6,9": return appleWatchSeries7_45mm
      case "Watch6,14", "Watch6,16": return appleWatchSeries8_41mm
      case "Watch6,15", "Watch6,17": return appleWatchSeries8_45mm
      case "Watch6,10", "Watch6,12": return appleWatchSE2_40mm
      case "Watch6,11", "Watch6,13": return appleWatchSE2_44mm
      case "Watch6,18": return appleWatchUltra
      case "i386", "x86_64", "arm64": return simulator(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "iOS"))
      default: return unknown(identifier)
      }
  }

  /// Get the real device from a device.
  /// If the device is a an iPhone8Plus simulator this function returns .iPhone8Plus (the real device).
  /// If the parameter is a real device, this function returns just that passed parameter.
  ///
  /// - parameter device: A device.
  ///
  /// - returns: the underlying device If the `device` is a `simulator`,
  /// otherwise return the `device`.
  public static func realDevice(from device: Device) -> Device {
    if case let .simulator(model) = device {
      return model
    }
    return device
  }

  /// Returns diagonal screen length in inches
  public var diagonal: Double {
      switch self {
        case .iPodTouch5: return 4
        case .iPodTouch6: return 4
        case .iPodTouch7: return 4
        case .iPhone4: return 3.5
        case .iPhone4s: return 3.5
        case .iPhone5: return 4
        case .iPhone5c: return 4
        case .iPhone5s: return 4
        case .iPhone6: return 4.7
        case .iPhone6Plus: return 5.5
        case .iPhone6s: return 4.7
        case .iPhone6sPlus: return 5.5
        case .iPhone7: return 4.7
        case .iPhone7Plus: return 5.5
        case .iPhoneSE: return 4
        case .iPhone8: return 4.7
        case .iPhone8Plus: return 5.5
        case .iPhoneX: return 5.8
        case .iPhoneXS: return 5.8
        case .iPhoneXSMax: return 6.5
        case .iPhoneXR: return 6.1
        case .iPhone11: return 6.1
        case .iPhone11Pro: return 5.8
        case .iPhone11ProMax: return 6.5
        case .iPhoneSE2: return 4.7
        case .iPhone12: return 6.1
        case .iPhone12Mini: return 5.4
        case .iPhone12Pro: return 6.1
        case .iPhone12ProMax: return 6.7
        case .iPhone13: return 6.1
        case .iPhone13Mini: return 5.4
        case .iPhone13Pro: return 6.1
        case .iPhone13ProMax: return 6.7
        case .iPhoneSE3: return 4.7
        case .iPhone14: return 6.1
        case .iPhone14Plus: return 6.7
        case .iPhone14Pro: return 6.1
        case .iPhone14ProMax: return 6.7
        case .iPad2: return 9.7
        case .iPad3: return 9.7
        case .iPad4: return 9.7
        case .iPadAir: return 9.7
        case .iPadAir2: return 9.7
        case .iPad5: return 9.7
        case .iPad6: return 9.7
        case .iPadAir3: return 10.5
        case .iPad7: return 10.2
        case .iPad8: return 10.2
        case .iPad9: return 10.2
        case .iPad10: return 10.9
        case .iPadAir4: return 10.9
        case .iPadAir5: return 10.9
        case .iPadMini: return 7.9
        case .iPadMini2: return 7.9
        case .iPadMini3: return 7.9
        case .iPadMini4: return 7.9
        case .iPadMini5: return 7.9
        case .iPadMini6: return 8.3
        case .iPadPro9Inch: return 9.7
        case .iPadPro12Inch: return 12.9
        case .iPadPro12Inch2: return 12.9
        case .iPadPro10Inch: return 10.5
        case .iPadPro11Inch: return 11.0
        case .iPadPro12Inch3: return 12.9
        case .iPadPro11Inch2: return 11.0
        case .iPadPro12Inch4: return 12.9
        case .iPadPro11Inch3: return 11.0
        case .iPadPro12Inch5: return 12.9
        case .iPadPro11Inch4: return 11.0
        case .iPadPro12Inch6: return 12.9
        case .homePod: return -1
        case .appleWatchSeries0_38mm: return 1.5
        case .appleWatchSeries0_42mm: return 1.6
        case .appleWatchSeries1_38mm: return 1.5
        case .appleWatchSeries1_42mm: return 1.6
        case .appleWatchSeries2_38mm: return 1.5
        case .appleWatchSeries2_42mm: return 1.6
        case .appleWatchSeries3_38mm: return 1.5
        case .appleWatchSeries3_42mm: return 1.6
        case .appleWatchSeries4_40mm: return 1.8
        case .appleWatchSeries4_44mm: return 2.0
        case .appleWatchSeries5_40mm: return 1.8
        case .appleWatchSeries5_44mm: return 2.0
        case .appleWatchSeries6_40mm: return 1.8
        case .appleWatchSeries6_44mm: return 2.0
        case .appleWatchSE_40mm: return 1.8
        case .appleWatchSE_44mm: return 2.0
        case .appleWatchSeries7_41mm: return 1.8
        case .appleWatchSeries7_45mm: return 2.0
        case .appleWatchSeries8_41mm: return 1.8
        case .appleWatchSeries8_45mm: return 2.0
        case .appleWatchSE2_40mm: return 1.8
        case .appleWatchSE2_44mm: return 2.0
        case .appleWatchUltra: return 2.2
        case .simulator(let model): return model.diagonal
        case .unknown: return -1
        default: return -1
      }
  }

  /// Returns screen ratio as a tuple
  public var screenRatio: (width: Double, height: Double) {
      switch self {
      case .iPodTouch5: return (width: 9, height: 16)
      case .iPodTouch6: return (width: 9, height: 16)
      case .iPodTouch7: return (width: 9, height: 16)
      case .iPhone4: return (width: 2, height: 3)
      case .iPhone4s: return (width: 2, height: 3)
      case .iPhone5: return (width: 9, height: 16)
      case .iPhone5c: return (width: 9, height: 16)
      case .iPhone5s: return (width: 9, height: 16)
      case .iPhone6: return (width: 9, height: 16)
      case .iPhone6Plus: return (width: 9, height: 16)
      case .iPhone6s: return (width: 9, height: 16)
      case .iPhone6sPlus: return (width: 9, height: 16)
      case .iPhone7: return (width: 9, height: 16)
      case .iPhone7Plus: return (width: 9, height: 16)
      case .iPhoneSE: return (width: 9, height: 16)
      case .iPhone8: return (width: 9, height: 16)
      case .iPhone8Plus: return (width: 9, height: 16)
      case .iPhoneX: return (width: 9, height: 19.5)
      case .iPhoneXS: return (width: 9, height: 19.5)
      case .iPhoneXSMax: return (width: 9, height: 19.5)
      case .iPhoneXR: return (width: 9, height: 19.5)
      case .iPhone11: return (width: 9, height: 19.5)
      case .iPhone11Pro: return (width: 9, height: 19.5)
      case .iPhone11ProMax: return (width: 9, height: 19.5)
      case .iPhoneSE2: return (width: 9, height: 16)
      case .iPhone12: return (width: 9, height: 19.5)
      case .iPhone12Mini: return (width: 9, height: 19.5)
      case .iPhone12Pro: return (width: 9, height: 19.5)
      case .iPhone12ProMax: return (width: 9, height: 19.5)
      case .iPhone13: return (width: 9, height: 19.5)
      case .iPhone13Mini: return (width: 9, height: 19.5)
      case .iPhone13Pro: return (width: 9, height: 19.5)
      case .iPhone13ProMax: return (width: 9, height: 19.5)
      case .iPhoneSE3: return (width: 9, height: 16)
      case .iPhone14: return (width: 9, height: 19.5)
      case .iPhone14Plus: return (width: 9, height: 19.5)
      case .iPhone14Pro: return (width: 9, height: 19.5)
      case .iPhone14ProMax: return (width: 9, height: 19.5)
      case .iPad2: return (width: 3, height: 4)
      case .iPad3: return (width: 3, height: 4)
      case .iPad4: return (width: 3, height: 4)
      case .iPadAir: return (width: 3, height: 4)
      case .iPadAir2: return (width: 3, height: 4)
      case .iPad5: return (width: 3, height: 4)
      case .iPad6: return (width: 3, height: 4)
      case .iPadAir3: return (width: 3, height: 4)
      case .iPad7: return (width: 3, height: 4)
      case .iPad8: return (width: 3, height: 4)
      case .iPad9: return (width: 3, height: 4)
      case .iPad10: return (width: 41, height: 59)
      case .iPadAir4: return (width: 41, height: 59)
      case .iPadAir5: return (width: 41, height: 59)
      case .iPadMini: return (width: 3, height: 4)
      case .iPadMini2: return (width: 3, height: 4)
      case .iPadMini3: return (width: 3, height: 4)
      case .iPadMini4: return (width: 3, height: 4)
      case .iPadMini5: return (width: 3, height: 4)
      case .iPadMini6: return (width: 744, height: 1133)
      case .iPadPro9Inch: return (width: 3, height: 4)
      case .iPadPro12Inch: return (width: 3, height: 4)
      case .iPadPro12Inch2: return (width: 3, height: 4)
      case .iPadPro10Inch: return (width: 3, height: 4)
      case .iPadPro11Inch: return (width: 139, height: 199)
      case .iPadPro12Inch3: return (width: 512, height: 683)
      case .iPadPro11Inch2: return (width: 139, height: 199)
      case .iPadPro12Inch4: return (width: 512, height: 683)
      case .iPadPro11Inch3: return (width: 139, height: 199)
      case .iPadPro12Inch5: return (width: 512, height: 683)
      case .iPadPro11Inch4: return (width: 139, height: 199)
      case .iPadPro12Inch6: return (width: 512, height: 683)
      case .homePod: return (width: 4, height: 5)
      case .appleWatchSeries0_38mm: return (width: 4, height: 5)
      case .appleWatchSeries0_42mm: return (width: 4, height: 5)
      case .appleWatchSeries1_38mm: return (width: 4, height: 5)
      case .appleWatchSeries1_42mm: return (width: 4, height: 5)
      case .appleWatchSeries2_38mm: return (width: 4, height: 5)
      case .appleWatchSeries2_42mm: return (width: 4, height: 5)
      case .appleWatchSeries3_38mm: return (width: 4, height: 5)
      case .appleWatchSeries3_42mm: return (width: 4, height: 5)
      case .appleWatchSeries4_40mm: return (width: 4, height: 5)
      case .appleWatchSeries4_44mm: return (width: 4, height: 5)
      case .appleWatchSeries5_40mm: return (width: 4, height: 5)
      case .appleWatchSeries5_44mm: return (width: 4, height: 5)
      case .appleWatchSeries6_40mm: return (width: 4, height: 5)
      case .appleWatchSeries6_44mm: return (width: 4, height: 5)
      case .appleWatchSE_40mm: return (width: 4, height: 5)
      case .appleWatchSE_44mm: return (width: 4, height: 5)
      case .appleWatchSeries7_41mm: return (width: 4, height: 5)
      case .appleWatchSeries7_45mm: return (width: 4, height: 5)
      case .appleWatchSeries8_41mm: return (width: 4, height: 5)
      case .appleWatchSeries8_45mm: return (width: 4, height: 5)
      case .appleWatchSE2_40mm: return (width: 4, height: 5)
      case .appleWatchSE2_44mm: return (width: 4, height: 5)
      case .appleWatchUltra: return (width: 4, height: 5)
      case .simulator(let model): return model.screenRatio
      case .unknown: return (width: -1, height: -1)
      default: return (width: -1, height: -1)
      }
  }

    /// All iPods
    public static var allPods: [Device] {
      return [.iPodTouch5, .iPodTouch6, .iPodTouch7]
    }

    /// All iPhones
    public static var allPhones: [Device] {
      return [.iPhone4, .iPhone4s, .iPhone5, .iPhone5c, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhoneSE2, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhoneSE3, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax]
    }

    /// All iPads
    public static var allPads: [Device] {
      return [.iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPad5, .iPad6, .iPadAir3, .iPad7, .iPad8, .iPad9, .iPad10, .iPadAir4, .iPadAir5, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadMini5, .iPadMini6, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6]
    }

    /// All simulator iPods
    public static var allSimulatorPods: [Device] {
      return allPods.map(Device.simulator)
    }

    /// All simulator iPhones
    public static var allSimulatorPhones: [Device] {
      return allPhones.map(Device.simulator)
    }

    /// All simulator iPads
    public static var allSimulatorPads: [Device] {
      return allPads.map(Device.simulator)
    }

    /// Returns whether the device is an iPod (real or simulator)
    public var isPod: Bool {
      return isOneOf(Device.allPods) || isOneOf(Device.allSimulatorPods)
    }

    /// Returns whether the device is an iPhone (real or simulator)
    public var isPhone: Bool {
      return (isOneOf(Device.allPhones)
              || isOneOf(Device.allSimulatorPhones))
    }

    /// Returns whether the device is an iPad (real or simulator)
    public var isPad: Bool {
      return isOneOf(Device.allPads)
              || isOneOf(Device.allSimulatorPads)
    }

    /// If this device is a simulator return the underlying device,
    /// otherwise return `self`.
    public var realDevice: Device {
      return Device.realDevice(from: self)
    }

    /// All TVs
    public static var allTVs: [Device] {
       return [.appleTVHD, .appleTV4K, .appleTV4K2, .appleTV4K3]
    }

    /// All simulator TVs
    public static var allSimulatorTVs: [Device] {
      return allTVs.map(Device.simulator)
    }

    /// All Watches
    public static var allWatches: [Device] {
       return [.appleWatchSeries0_38mm, .appleWatchSeries0_42mm, .appleWatchSeries1_38mm, .appleWatchSeries1_42mm, .appleWatchSeries2_38mm, .appleWatchSeries2_42mm, .appleWatchSeries3_38mm, .appleWatchSeries3_42mm, .appleWatchSeries4_40mm, .appleWatchSeries4_44mm, .appleWatchSeries5_40mm, .appleWatchSeries5_44mm, .appleWatchSeries6_40mm, .appleWatchSeries6_44mm, .appleWatchSE_40mm, .appleWatchSE_44mm, .appleWatchSeries7_41mm, .appleWatchSeries7_45mm, .appleWatchSeries8_41mm, .appleWatchSeries8_45mm, .appleWatchSE2_40mm, .appleWatchSE2_44mm, .appleWatchUltra]
    }

    /// All simulator Watches
    public static var allSimulatorWatches: [Device] {
      return allWatches.map(Device.simulator)
    }

  /// All real devices (i.e. all devices except for all simulators)
  public static var allRealDevices: [Device] {
    return allPods + allPhones + allPads + allTVs + allWatches
  }

  /// All simulators
  public static var allSimulators: [Device] {
    return allRealDevices.map(Device.simulator)
  }

  /// Returns whether the device is any of the simulator
  /// Useful when there is a need to check and skip running a portion of code (location request or others)
  public var isSimulator: Bool {
    return isOneOf(Device.allSimulators)
  }

  /**
   This method saves you in many cases from the need of updating your code with every new device.
   Most uses for an enum like this are the following:

   ```
   switch Device.current {
   case .iPodTouch5, .iPodTouch6: callMethodOnIPods()
   case .iPhone4, iPhone4s, .iPhone5, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX: callMethodOnIPhones()
   case .iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadPro: callMethodOnIPads()
   default: break
   }
   ```
   This code can now be replaced with

   ```
   let device = Device.current
   if device.isOneOf(Device.allPods) {
     callMethodOnIPods()
   } else if device.isOneOf(Device.allPhones) {
     callMethodOnIPhones()
   } else if device.isOneOf(Device.allPads) {
     callMethodOnIPads()
   }
   ```

   - parameter devices: An array of devices.

   - returns: Returns whether the current device is one of the passed in ones.
   */
  public func isOneOf(_ devices: [Device]) -> Bool {
    return devices.contains(self)
  }

  /// PPI (Pixels per Inch) on the current device's screen (if applicable). When the device is not applicable this property returns nil.
  public var ppi: Int? {

    switch self {
      case .iPodTouch5: return 326
      case .iPodTouch6: return 326
      case .iPodTouch7: return 326
      case .iPhone4: return 326
      case .iPhone4s: return 326
      case .iPhone5: return 326
      case .iPhone5c: return 326
      case .iPhone5s: return 326
      case .iPhone6: return 326
      case .iPhone6Plus: return 401
      case .iPhone6s: return 326
      case .iPhone6sPlus: return 401
      case .iPhone7: return 326
      case .iPhone7Plus: return 401
      case .iPhoneSE: return 326
      case .iPhone8: return 326
      case .iPhone8Plus: return 401
      case .iPhoneX: return 458
      case .iPhoneXS: return 458
      case .iPhoneXSMax: return 458
      case .iPhoneXR: return 326
      case .iPhone11: return 326
      case .iPhone11Pro: return 458
      case .iPhone11ProMax: return 458
      case .iPhoneSE2: return 326
      case .iPhone12: return 460
      case .iPhone12Mini: return 476
      case .iPhone12Pro: return 460
      case .iPhone12ProMax: return 458
      case .iPhone13: return 460
      case .iPhone13Mini: return 476
      case .iPhone13Pro: return 460
      case .iPhone13ProMax: return 458
      case .iPhoneSE3: return 326
      case .iPhone14: return 460
      case .iPhone14Plus: return 476
      case .iPhone14Pro: return 460
      case .iPhone14ProMax: return 458
      case .iPad2: return 132
      case .iPad3: return 264
      case .iPad4: return 264
      case .iPadAir: return 264
      case .iPadAir2: return 264
      case .iPad5: return 264
      case .iPad6: return 264
      case .iPadAir3: return 264
      case .iPad7: return 264
      case .iPad8: return 264
      case .iPad9: return 264
      case .iPad10: return 264
      case .iPadAir4: return 264
      case .iPadAir5: return 264
      case .iPadMini: return 163
      case .iPadMini2: return 326
      case .iPadMini3: return 326
      case .iPadMini4: return 326
      case .iPadMini5: return 326
      case .iPadMini6: return 326
      case .iPadPro9Inch: return 264
      case .iPadPro12Inch: return 264
      case .iPadPro12Inch2: return 264
      case .iPadPro10Inch: return 264
      case .iPadPro11Inch: return 264
      case .iPadPro12Inch3: return 264
      case .iPadPro11Inch2: return 264
      case .iPadPro12Inch4: return 264
      case .iPadPro11Inch3: return 264
      case .iPadPro12Inch5: return 264
      case .iPadPro11Inch4: return 264
      case .iPadPro12Inch6: return 264
      case .homePod: return -1
      case .appleWatchSeries0_38mm: return 290
      case .appleWatchSeries0_42mm: return 303
      case .appleWatchSeries1_38mm: return 290
      case .appleWatchSeries1_42mm: return 303
      case .appleWatchSeries2_38mm: return 290
      case .appleWatchSeries2_42mm: return 303
      case .appleWatchSeries3_38mm: return 290
      case .appleWatchSeries3_42mm: return 303
      case .appleWatchSeries4_40mm: return 326
      case .appleWatchSeries4_44mm: return 326
      case .appleWatchSeries5_40mm: return 326
      case .appleWatchSeries5_44mm: return 326
      case .appleWatchSeries6_40mm: return 326
      case .appleWatchSeries6_44mm: return 326
      case .appleWatchSE_40mm: return 326
      case .appleWatchSE_44mm: return 326
      case .appleWatchSeries7_41mm: return 326
      case .appleWatchSeries7_45mm: return 326
      case .appleWatchSeries8_41mm: return 326
      case .appleWatchSeries8_45mm: return 326
      case .appleWatchSE2_40mm: return 326
      case .appleWatchSE2_44mm: return 326
      case .appleWatchUltra: return 338
      case .simulator(let model): return model.ppi
      case .unknown: return nil
      default: return nil
    }
  }
}

// MARK: CustomStringConvertible
extension Device: CustomStringConvertible {

  /// A textual representation of the device.
  public var description: String {
      switch self {
      case .iPodTouch5: return "iPod touch (5th generation)"
      case .iPodTouch6: return "iPod touch (6th generation)"
      case .iPodTouch7: return "iPod touch (7th generation)"
      case .iPhone4: return "iPhone 4"
      case .iPhone4s: return "iPhone 4s"
      case .iPhone5: return "iPhone 5"
      case .iPhone5c: return "iPhone 5c"
      case .iPhone5s: return "iPhone 5s"
      case .iPhone6: return "iPhone 6"
      case .iPhone6Plus: return "iPhone 6 Plus"
      case .iPhone6s: return "iPhone 6s"
      case .iPhone6sPlus: return "iPhone 6s Plus"
      case .iPhone7: return "iPhone 7"
      case .iPhone7Plus: return "iPhone 7 Plus"
      case .iPhoneSE: return "iPhone SE"
      case .iPhone8: return "iPhone 8"
      case .iPhone8Plus: return "iPhone 8 Plus"
      case .iPhoneX: return "iPhone X"
      case .iPhoneXS: return "iPhone Xs"
      case .iPhoneXSMax: return "iPhone Xs Max"
      case .iPhoneXR: return "iPhone Xʀ"
      case .iPhone11: return "iPhone 11"
      case .iPhone11Pro: return "iPhone 11 Pro"
      case .iPhone11ProMax: return "iPhone 11 Pro Max"
      case .iPhoneSE2: return "iPhone SE (2nd generation)"
      case .iPhone12: return "iPhone 12"
      case .iPhone12Mini: return "iPhone 12 mini"
      case .iPhone12Pro: return "iPhone 12 Pro"
      case .iPhone12ProMax: return "iPhone 12 Pro Max"
      case .iPhone13: return "iPhone 13"
      case .iPhone13Mini: return "iPhone 13 mini"
      case .iPhone13Pro: return "iPhone 13 Pro"
      case .iPhone13ProMax: return "iPhone 13 Pro Max"
      case .iPhoneSE3: return "iPhone SE (3rd generation)"
      case .iPhone14: return "iPhone 14"
      case .iPhone14Plus: return "iPhone 14 Plus"
      case .iPhone14Pro: return "iPhone 14 Pro"
      case .iPhone14ProMax: return "iPhone 14 Pro Max"
      case .iPad2: return "iPad 2"
      case .iPad3: return "iPad (3rd generation)"
      case .iPad4: return "iPad (4th generation)"
      case .iPadAir: return "iPad Air"
      case .iPadAir2: return "iPad Air 2"
      case .iPad5: return "iPad (5th generation)"
      case .iPad6: return "iPad (6th generation)"
      case .iPadAir3: return "iPad Air (3rd generation)"
      case .iPad7: return "iPad (7th generation)"
      case .iPad8: return "iPad (8th generation)"
      case .iPad9: return "iPad (9th generation)"
      case .iPad10: return "iPad (10th generation)"
      case .iPadAir4: return "iPad Air (4th generation)"
      case .iPadAir5: return "iPad Air (5th generation)"
      case .iPadMini: return "iPad Mini"
      case .iPadMini2: return "iPad Mini 2"
      case .iPadMini3: return "iPad Mini 3"
      case .iPadMini4: return "iPad Mini 4"
      case .iPadMini5: return "iPad Mini (5th generation)"
      case .iPadMini6: return "iPad Mini (6th generation)"
      case .iPadPro9Inch: return "iPad Pro (9.7-inch)"
      case .iPadPro12Inch: return "iPad Pro (12.9-inch)"
      case .iPadPro12Inch2: return "iPad Pro (12.9-inch) (2nd generation)"
      case .iPadPro10Inch: return "iPad Pro (10.5-inch)"
      case .iPadPro11Inch: return "iPad Pro (11-inch)"
      case .iPadPro12Inch3: return "iPad Pro (12.9-inch) (3rd generation)"
      case .iPadPro11Inch2: return "iPad Pro (11-inch) (2nd generation)"
      case .iPadPro12Inch4: return "iPad Pro (12.9-inch) (4th generation)"
      case .iPadPro11Inch3: return "iPad Pro (11-inch) (3rd generation)"
      case .iPadPro12Inch5: return "iPad Pro (12.9-inch) (5th generation)"
      case .iPadPro11Inch4: return "iPad Pro (11-inch) (4th generation)"
      case .iPadPro12Inch6: return "iPad Pro (12.9-inch) (6th generation)"
      case .homePod: return "HomePod"
      case .appleWatchSeries0_38mm: return "Apple Watch (1st generation) 38mm"
      case .appleWatchSeries0_42mm: return "Apple Watch (1st generation) 42mm"
      case .appleWatchSeries1_38mm: return "Apple Watch Series 1 38mm"
      case .appleWatchSeries1_42mm: return "Apple Watch Series 1 42mm"
      case .appleWatchSeries2_38mm: return "Apple Watch Series 2 38mm"
      case .appleWatchSeries2_42mm: return "Apple Watch Series 2 42mm"
      case .appleWatchSeries3_38mm: return "Apple Watch Series 3 38mm"
      case .appleWatchSeries3_42mm: return "Apple Watch Series 3 42mm"
      case .appleWatchSeries4_40mm: return "Apple Watch Series 4 40mm"
      case .appleWatchSeries4_44mm: return "Apple Watch Series 4 44mm"
      case .appleWatchSeries5_40mm: return "Apple Watch Series 5 40mm"
      case .appleWatchSeries5_44mm: return "Apple Watch Series 5 44mm"
      case .appleWatchSeries6_40mm: return "Apple Watch Series 6 40mm"
      case .appleWatchSeries6_44mm: return "Apple Watch Series 6 44mm"
      case .appleWatchSE_40mm: return "Apple Watch SE 40mm"
      case .appleWatchSE_44mm: return "Apple Watch SE 44mm"
      case .appleWatchSeries7_41mm: return "Apple Watch Series 7 41mm"
      case .appleWatchSeries7_45mm: return "Apple Watch Series 7 45mm"
      case .appleWatchSeries8_41mm: return "Apple Watch Series 8 41mm"
      case .appleWatchSeries8_45mm: return "Apple Watch Series 8 45mm"
      case .appleWatchSE2_40mm: return "Apple Watch SE (2nd generation) 40mm"
      case .appleWatchSE2_44mm: return "Apple Watch SE (2nd generation) 44mm"
      case .appleWatchUltra: return "Apple Watch Ultra"
      case .appleTVHD: return "Apple TV HD"
      case .appleTV4K: return "Apple TV 4K"
      case .appleTV4K2: return "Apple TV 4K (2nd generation)"
      case .appleTV4K3: return "Apple TV 4K (3rd generation)"
      case .simulator(let model): return "Simulator (\(model.description))"
      case .unknown(let identifier): return identifier
      }
  }

  /// A safe version of `description`.
  /// Example:
  /// Device.iPhoneXR.description:     iPhone Xʀ
  /// Device.iPhoneXR.safeDescription: iPhone XR
  public var safeDescription: String {
      switch self {
      case .iPodTouch5: return "iPod touch (5th generation)"
      case .iPodTouch6: return "iPod touch (6th generation)"
      case .iPodTouch7: return "iPod touch (7th generation)"
      case .iPhone4: return "iPhone 4"
      case .iPhone4s: return "iPhone 4s"
      case .iPhone5: return "iPhone 5"
      case .iPhone5c: return "iPhone 5c"
      case .iPhone5s: return "iPhone 5s"
      case .iPhone6: return "iPhone 6"
      case .iPhone6Plus: return "iPhone 6 Plus"
      case .iPhone6s: return "iPhone 6s"
      case .iPhone6sPlus: return "iPhone 6s Plus"
      case .iPhone7: return "iPhone 7"
      case .iPhone7Plus: return "iPhone 7 Plus"
      case .iPhoneSE: return "iPhone SE"
      case .iPhone8: return "iPhone 8"
      case .iPhone8Plus: return "iPhone 8 Plus"
      case .iPhoneX: return "iPhone X"
      case .iPhoneXS: return "iPhone XS"
      case .iPhoneXSMax: return "iPhone XS Max"
      case .iPhoneXR: return "iPhone XR"
      case .iPhone11: return "iPhone 11"
      case .iPhone11Pro: return "iPhone 11 Pro"
      case .iPhone11ProMax: return "iPhone 11 Pro Max"
      case .iPhoneSE2: return "iPhone SE (2nd generation)"
      case .iPhone12: return "iPhone 12"
      case .iPhone12Mini: return "iPhone 12 mini"
      case .iPhone12Pro: return "iPhone 12 Pro"
      case .iPhone12ProMax: return "iPhone 12 Pro Max"
      case .iPhone13: return "iPhone 13"
      case .iPhone13Mini: return "iPhone 13 mini"
      case .iPhone13Pro: return "iPhone 13 Pro"
      case .iPhone13ProMax: return "iPhone 13 Pro Max"
      case .iPhoneSE3: return "iPhone SE (3rd generation)"
      case .iPhone14: return "iPhone 14"
      case .iPhone14Plus: return "iPhone 14 Plus"
      case .iPhone14Pro: return "iPhone 14 Pro"
      case .iPhone14ProMax: return "iPhone 14 Pro Max"
      case .iPad2: return "iPad 2"
      case .iPad3: return "iPad (3rd generation)"
      case .iPad4: return "iPad (4th generation)"
      case .iPadAir: return "iPad Air"
      case .iPadAir2: return "iPad Air 2"
      case .iPad5: return "iPad (5th generation)"
      case .iPad6: return "iPad (6th generation)"
      case .iPadAir3: return "iPad Air (3rd generation)"
      case .iPad7: return "iPad (7th generation)"
      case .iPad8: return "iPad (8th generation)"
      case .iPad9: return "iPad (9th generation)"
      case .iPad10: return "iPad (10th generation)"
      case .iPadAir4: return "iPad Air (4th generation)"
      case .iPadAir5: return "iPad Air (5th generation)"
      case .iPadMini: return "iPad Mini"
      case .iPadMini2: return "iPad Mini 2"
      case .iPadMini3: return "iPad Mini 3"
      case .iPadMini4: return "iPad Mini 4"
      case .iPadMini5: return "iPad Mini (5th generation)"
      case .iPadMini6: return "iPad Mini (6th generation)"
      case .iPadPro9Inch: return "iPad Pro (9.7-inch)"
      case .iPadPro12Inch: return "iPad Pro (12.9-inch)"
      case .iPadPro12Inch2: return "iPad Pro (12.9-inch) (2nd generation)"
      case .iPadPro10Inch: return "iPad Pro (10.5-inch)"
      case .iPadPro11Inch: return "iPad Pro (11-inch)"
      case .iPadPro12Inch3: return "iPad Pro (12.9-inch) (3rd generation)"
      case .iPadPro11Inch2: return "iPad Pro (11-inch) (2nd generation)"
      case .iPadPro12Inch4: return "iPad Pro (12.9-inch) (4th generation)"
      case .iPadPro11Inch3: return "iPad Pro (11-inch) (3rd generation)"
      case .iPadPro12Inch5: return "iPad Pro (12.9-inch) (5th generation)"
      case .iPadPro11Inch4: return "iPad Pro (11-inch) (4th generation)"
      case .iPadPro12Inch6: return "iPad Pro (12.9-inch) (6th generation)"
      case .homePod: return "HomePod"
      case .appleWatchSeries0_38mm: return "Apple Watch (1st generation) 38mm"
      case .appleWatchSeries0_42mm: return "Apple Watch (1st generation) 42mm"
      case .appleWatchSeries1_38mm: return "Apple Watch Series 1 38mm"
      case .appleWatchSeries1_42mm: return "Apple Watch Series 1 42mm"
      case .appleWatchSeries2_38mm: return "Apple Watch Series 2 38mm"
      case .appleWatchSeries2_42mm: return "Apple Watch Series 2 42mm"
      case .appleWatchSeries3_38mm: return "Apple Watch Series 3 38mm"
      case .appleWatchSeries3_42mm: return "Apple Watch Series 3 42mm"
      case .appleWatchSeries4_40mm: return "Apple Watch Series 4 40mm"
      case .appleWatchSeries4_44mm: return "Apple Watch Series 4 44mm"
      case .appleWatchSeries5_40mm: return "Apple Watch Series 5 40mm"
      case .appleWatchSeries5_44mm: return "Apple Watch Series 5 44mm"
      case .appleWatchSeries6_40mm: return "Apple Watch Series 6 40mm"
      case .appleWatchSeries6_44mm: return "Apple Watch Series 6 44mm"
      case .appleWatchSE_40mm: return "Apple Watch SE 40mm"
      case .appleWatchSE_44mm: return "Apple Watch SE 44mm"
      case .appleWatchSeries7_41mm: return "Apple Watch Series 7 41mm"
      case .appleWatchSeries7_45mm: return "Apple Watch Series 7 45mm"
      case .appleWatchSeries8_41mm: return "Apple Watch Series 8 41mm"
      case .appleWatchSeries8_45mm: return "Apple Watch Series 8 45mm"
      case .appleWatchSE2_40mm: return "Apple Watch SE (2nd generation) 40mm"
      case .appleWatchSE2_44mm: return "Apple Watch SE (2nd generation) 44mm"
      case .appleWatchUltra: return "Apple Watch Ultra"
      case .appleTVHD: return "Apple TV HD"
      case .appleTV4K: return "Apple TV 4K"
      case .appleTV4K2: return "Apple TV 4K (2nd generation)"
      case .appleTV4K3: return "Apple TV 4K (3rd generation)"
      case .simulator(let model): return "Simulator (\(model.safeDescription))"
      case .unknown(let identifier): return identifier
      }
  }

}

// MARK: Equatable
extension Device: Equatable {

  /// Compares two devices
  ///
  /// - parameter lhs: A device.
  /// - parameter rhs: Another device.
  ///
  /// - returns: `true` iff the underlying identifier is the same.
  public static func == (lhs: Device, rhs: Device) -> Bool {
    return lhs.description == rhs.description
  }

}