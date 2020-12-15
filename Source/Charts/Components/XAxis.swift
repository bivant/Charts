//
//  XAxis.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation
import CoreGraphics

@objc(ChartXAxis)
open class XAxis: AxisBase
{
    @objc(XAxisLabelPosition)
    public enum LabelPosition: Int
    {
        case top
        case bottom
        case bothSided
        case topInside
        case bottomInside
    }

	@objc(XAxisLabelAlignment)
	public enum LabelAlignment: Int
	{
		case left = 0
		case center = 1
		case right = 2
	}
    
    /// width of the x-axis labels in pixels - this is automatically calculated by the `computeSize()` methods in the renderers
    @objc open var labelWidth = CGFloat(1.0)
    
    /// height of the x-axis labels in pixels - this is automatically calculated by the `computeSize()` methods in the renderers
    @objc open var labelHeight = CGFloat(1.0)
    
    /// width of the (rotated) x-axis labels in pixels - this is automatically calculated by the `computeSize()` methods in the renderers
    @objc open var labelRotatedWidth = CGFloat(1.0)
    
    /// height of the (rotated) x-axis labels in pixels - this is automatically calculated by the `computeSize()` methods in the renderers
    @objc open var labelRotatedHeight = CGFloat(1.0)
    
    /// This is the angle for drawing the X axis labels (in degrees)
    @objc open var labelRotationAngle = CGFloat(0.0)

    /// if set to true, the chart will avoid that the first and last label entry in the chart "clip" off the edge of the chart
    @objc open var avoidFirstLastClippingEnabled = false
    
    /// the position of the x-labels relative to the chart
    @objc open var labelPosition = LabelPosition.top

	/// the alignment of the x-labels relative to the x-values
	@objc open var labelAlignment = LabelAlignment.center

	/// the offset of the x-labels relative along the axe
	@objc open var labelXOffset = CGFloat(0.0)

    /// if set to true, word wrapping the labels will be enabled.
    /// word wrapping is done using `(value width * labelRotatedWidth)`
    ///
    /// - Note: currently supports all charts except pie/radar/horizontal-bar*
    @objc open var wordWrapEnabled = false
    
    /// `true` if word wrapping the labels is enabled
    @objc open var isWordWrapEnabled: Bool { return wordWrapEnabled }
    
    /// the width for wrapping the labels, as percentage out of one value width.
    /// used only when isWordWrapEnabled = true.
    /// 
    /// **default**: 1.0
    @objc open var wordWrapWidthPercent: CGFloat = 1.0
    
    public override init()
    {
        super.init()
        
        self.yOffset = 4.0
    }
    
    @objc open var isAvoidFirstLastClippingEnabled: Bool
    {
        return avoidFirstLastClippingEnabled
    }
}
