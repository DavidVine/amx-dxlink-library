program_name='amx-dxlink-listener'

#if_not_defined __AMX_DXLINK_LISTENER__
#define __AMX_DXLINK_LISTENER__

/*
 * --------------------
 * amx-dxlink-listener
 *
 * For usage, check out the readme for the amx-dxlink-library.
 * --------------------
 */

define_constant

char VERSION_AMX_DXLINK_LISTENER[] = 'v1.0.0'

#include 'amx-dxlink-api'
#include 'common'


/*
 * --------------------
 * Device arrays
 *
 * Any components that are to be monitored should have the appropriate
 * device array copied into the main program DEFINE_VARIABLE section and the 
 * associated #DEFINE compiler directives should be copied to the top of the 
 * main program, above the line of code that this include file is included 
 * into the main program.
 * --------------------
 */

define_variable
/*
// Transmitters
#DEFINE INCLUDE_DXLINK_MONITOR_TX_MAIN
dev dvDxlinkTxMainPorts[] = {7001:1:0}

#DEFINE INCLUDE_DXLINK_MONITOR_TX_USB
dev dvDxlinkTxUsbPorts[] = {7001:5:0}

#DEFINE INCLUDE_DXLINK_MONITOR_TX_VIDEO_INPUT_DIGITAL
dev dvDxlinkTxDigitalVideoInPorts[] = {7001:7:0}

#DEFINE INCLUDE_DXLINK_MONITOR_TX_AUDIO_INPUT
dev dvDxlinkTxAudInPorts[] = {7001:7:0}

#DEFINE INCLUDE_DXLINK_MONITOR_TX_VIDEO_INPUT_ANALOG
dev dvDxlinkTxAnalogVidInPorts[] = {7001:8:0}


// Receivers
#DEFINE INCLUDE_DXLINK_MONITOR_RX_MAIN
dev dvDxlinkRxMainPorts[] = {8001:1:0}

#DEFINE INCLUDE_DXLINK_MONITOR_RX_USB
dev dvDxlinkRxUsbPorts[] = {8001:5:0}

#DEFINE INCLUDE_DXLINK_MONITOR_RX_VIDEO_OUTPUT
dev dvDxlinkRxVidOutPorts[] = {8001:6:0}

#DEFINE INCLUDE_DXLINK_MONITOR_RX_AUDIO_OUTPUT
dev dvDxlinkRxAudOutPorts[] = {8001:6:0}
*/






/*
 * --------------------
 * Callback functions
 * --------------------
 */


/*
 * --------------------
 * Switch callback functions
 * --------------------
 */


/*
#define INCLUDE_DXLINK_NOTIFY_TX_SWITCH_CALLBACK
define_function dxlinkNotifyTxSwitch (dev dxlinkTxPort1, integer input, integer output)
{
	// dxlinkTxPort1 is port 1 on the DXLink Tx.
	// input contains the input port on the DXLink TX that has been selected (DXLINK_PORT_VIDEO_INPUT_ANALOG | DXLINK_PORT_VIDEO_INPUT_DIGITAL)
	// output contains the output of the DXLink TX. This is always DXLINK_PORT_VIDEO_OUTPUT.
}
*/


/*
 * --------------------
 * Video input callback functions
 * --------------------
 */


/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_STATUS_ANALOG_CALLBACK
define_function dxlinkNotifyTxVideoInputStatusAnalog (dev dxlinkTxAnalogVideoInput, char signalStatus[])
{
	// dxlinkTxAnalogVideoInput is the analog video input port on the DXLink Tx
	// signalStatus is the input signal status (DXLINK_SIGNAL_STATUS_NO_SIGNAL | DXLINK_SIGNAL_STATUS_UNKNOWN | DXLINK_SIGNAL_STATUS_VALID_SIGNAL)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_STATUS_DIGITAL_CALLBACK
define_function dxlinkNotifyTxVideoInputStatusDigital (dev dxlinkTxDigitalVideoInput, char signalStatus[])
{
	// dxlinkTxDigitalVideoInput is the digital video input port on the DXLink Tx
	// signalStatus is the input signal status (DXLINK_SIGNAL_STATUS_NO_SIGNAL | DXLINK_SIGNAL_STATUS_UNKNOWN | DXLINK_SIGNAL_STATUS_VALID_SIGNAL)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_FORMAT_ANALOG_CALLBACK
define_function dxlinkNotifyTxVideoInputFormatAnalog (dev dxlinkTxAnalogVideoInput, char videoFormat[])
{
	// dxlinkTxAnalogVideoInput is the analog video input port on the DXLink Tx
	// videoFormat is the video format (VIDEO_SIGNAL_FORMAT_VGA | VIDEO_SIGNAL_FORMAT_COMPOSITE | VIDEO_SIGNAL_FORMAT_COMPONENT | VIDEO_SIGNAL_FORMAT_SVIDEO)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_FORMAT_DIGITAL_CALLBACK
define_function dxlinkNotifyTxVideoInputFormatDigital (dev dxlinkTxDigitalVideoInput, char videoFormat[])
{
	// dxlinkTxDigitalVideoInput is the digital video input port on the DXLink Tx
	// videoFormat is the video format (VIDEO_SIGNAL_FORMAT_DVI | VIDEO_SIGNAL_FORMAT_HDMI)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_AUTO_SELECT_CALLBACK
define_function dxlinkNotifyTxVideoInputAutoSelect (dev dxlinkTxPort1, char status[])
{
	// dxlinkTxPort1 is the port #1 on the DXLink Tx
	// status contains the auto video input select status (STATUS_ENABLE | STATUS_DISABLE | DXLINK_AUTO_SELECT_ANALOG_PRIORITY)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_AUTO_RESOLUTION_ANALOG_CALLBACK
define_function dxlinkNotifyTxVideoInputResolutionAutoAnalog (dev dxlinkTxAnalogVideoInput, char status[])
{
	// dxlinkTxAnalogVideoInput is the analog video input port on the DXLink Tx
	// status is the auto resolution detect status (STATUS_ENABLE | STATUS_DISABLE)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_AUTO_RESOLUTION_DIGITAL_CALLBACK
define_function dxlinkNotifyTxVideoInputResolutionAutoDigital (dev dxlinkTxDigitalVideoInput, char status[])
{
	// dxlinkTxDigitalVideoInput is the digital video input port on the DXLink Tx
	// status is the auto resolution detect status (STATUS_ENABLE | STATUS_DISABLE)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_RESOLUTION_ANALOG_CALLBACK
define_function dxlinkNotifyTxVideoInputResolutionAnalog (dev dxlinkTxAnalogVideoInput, char resolution[])
{
	// dxlinkTxAnalogVideoInput is the analog video input port on the DXLink Tx
	// resolution is the input resolution.
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_RESOLUTION_DIGITAL_CALLBACK
define_function dxlinkNotifyTxVideoInputResolutionDigital (dev dxlinkTxDigitalVideoInput, char resolution[])
{
	// dxlinkTxDigitalVideoInput is the digital video input port on the DXLink Tx
	// resolution is the input resolution.
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_EDID_SOURCE_ANALOG_CALLBACK
define_function dxlinkNotifyTxVideoInputEdidSourceAnalog (dev dxlinkTxAnalogVideoInput, char edidSource[])
{
	// dxlinkTxAnalogVideoInput is the analog video input port on the DXLink Tx
	// edidSource is the source of the EDID on the DXLink analog video input (DXLINK_EDID_SOURCE_ALL_RESOLUTIONS | DXLINK_EDID_SOURCE_FULL_SCREEN | DXLINK_EDID_SOURCE_WIDE_SCREEN | DXLINK_EDID_SOURCE_USER_EDID_1 | DXLINK_EDID_SOURCE_USER_EDID_MODIFIED)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_EDID_SOURCE_DIGITAL_CALLBACK
define_function dxlinkNotifyTxVideoInputEdidSourceDigital (dev dxlinkTxDigitalVideoInput, char edidSource[])
{
	// dxlinkTxDigitalVideoInput is the digital video input port on the DXLink Tx
	// edidSource is the source of the EDID on the DXLink analog video input (DXLINK_EDID_SOURCE_ALL_RESOLUTIONS | DXLINK_EDID_SOURCE_FULL_SCREEN | DXLINK_EDID_SOURCE_WIDE_SCREEN | DXLINK_EDID_SOURCE_MIRROR_OUT_1 | DXLINK_EDID_SOURCE_MIRROR_OUT_LOCAL | DXLINK_EDID_SOURCE_USER_EDID_1 | DXLINK_EDID_SOURCE_USER_EDID_MODIFIED)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_EDID_PREFERRED_RESOLUTION_ANALOG_CALLBACK
define_function dxlinkNotifyVideoInputEdidPreferredResolutionAnalog (dev dxlinkTxAnalogVideoInput, char resolution[])
{
	// dxlinkTxAnalogVideoInput is the analog video input port on the DXLink Tx
	// resolution is the resolution listed in the EDID as the preferred (or native) resolution on the DXLink Tx analog video input
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_HDCP_COMPLIANCE
define_function dxlinkNotifyTxVideoInputHdcpCompliance (dev dxlinkTxDigitalVideoInput, char status[])
{
	// dxlinkTxDigitalVideoInput is the digital video input port on the DXLink Tx
	// status is the status of the HDCP compliance on the video input port (STATUS_ENABLE | STATUS_DISABLE)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_HORIZONTAL_SHIFT_CALLBACK
define_function dxlinkNotifyTxVideoInputHorizontalShift (dev dxlinkTxAnalogVideoInput, sinteger horizontalShift)
{
	// dxlinkTxAnalogVideoInput is the analog video input port on the DXLink Tx
	// horizontalShift is the horizontal shift value
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_PHASE_CALLBACK
define_function dxlinkNotifyTxVideoInputPhase (dev dxlinkTxAnalogVideoInput, integer phase)
{
	// dxlinkTxAnalogVideoInput is the analog video input port on the DXLink Tx
	// phase is the phase value
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_VERTICAL_SHIFT_CALLBACK
define_function dxlinkNotifyTxVideoInputVerticalShift (dev dxlinkTxAnalogVideoInput, sinteger verticalShift)
{
	// dxlinkTxAnalogVideoInput is the analog video input port on the DXLink Tx
	// verticalShift is the vertical shift value
}
*/


/*
 * --------------------
 * Video output callback functions
 * --------------------
 */
 
 
/*
#define INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_SCALE_MODE_CALLBACK
define_function dxlinkNotifyRxVideoOutputScaleMode (dev dxlinkRxVideoOutput, char scaleMode[])
{
	// dxlinkRxVideoOutput is the D:P:S of the video output port on the DXLink receiver
	// scaleMode contains the scaler mode (DXLINK_SCALE_MODE_AUTO | DXLINK_SCALE_MODE_BYPASS | DXLINK_SCALE_MODE_MANUAL)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_RESOLUTION_CALLBACK
define_function dxlinkNotifyRxVideoOutputResolution (dev dxlinkRxVideoOutput, char resolution[])
{
	// dxlinkRxVideoOutput is the D:P:S of the video output port on the DXLink receiver
	// resolution is the video output resolution and refresh (HORxVER,REF)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_ASPECT_RATIO_CALLBACK
define_function dxlinkNotifyRxVideoOutputAspectRatio (dev dxlinkRxVideoOutput, char aspectRatio[])
{
	// dxlinkRxVideoOutput is the D:P:S of the video output port on the DXLink receiver
	// aspectRatio is the aspect ratio (DXLINK_ASPECT_RATIO_ANAMORPHIC | DXLINK_ASPECT_RATIO_MAINTAIN | DXLINK_ASPECT_RATIO_STRETCH | DXLINK_ASPECT_RATIO_ZOOM)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_TEST_PATTERN_CALLBACK
define_function dxlinkNotifyRxVideoOutputTestPattern (dev dxlinkRxVideoOutput, char testPattern[])
{
	// dxlinkRxVideoOutput is the D:P:S of the video output port on the DXLink receiver
	// testPattern is the test pattern (DXLINK_TEST_PATTERN_OFF | DXLINK_TEST_PATTERN_COLOR_BAR | DXLINK_TEST_PATTERN_GRAY_RAMP | DXLINK_TEST_PATTERN_SMPTE_BAR | DXLINK_TEST_PATTERN_HILO_TRACK | DXLINK_TEST_PATTERN_PLUGE | DXLINK_TEST_PATTERN_X_HATCH)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_MUTE_CALLBACK
define_function dxlinkNotifyRxVideoOutputMute (dev dxlinkRxVideoOutput, char muteStatus[])
{
	// dxlinkRxVideoOutput is the D:P:S of the video output port on the DXLink receiver
	// muteStatus contains the video output mute status (STATUS_ENABLE | STATUS_DISABLE)
}
*/


/*
 * --------------------
 * Audio output callback functions
 * --------------------
 */


/*
#define INCLUDE_DXLINK_NOTIFY_RX_AUDIO_OUTPUT_FORMAT_CALLBACK
define_function dxlinkNotifyRxAudioOutputFormat (dev dxlinkRxAudioOutput, char audioFormat[])
{
	// dxlinkRxAudioOutput is the D:P:S of the audio output port on the DXLink receiver.
	// audioFormat is the audio format (DXLINK_AUDIO_OUTPUT_FORMAT_ALL | DXLINK_AUDIO_OUTPUT_FORMAT_ANALOG | DXLINK_AUDIO_OUTPUT_FORMAT_HDMI)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_RX_AUDIO_OUTPUT_MUTE_CALLBACK
define_function dxlinkNotifyRxAudioOutputMute (dev dxlinkRxAudioOutput, char muteStatus[])
{
	// dxlinkRxAudioOutput is the D:P:S of the audio output port on the DXLink receiver.
	// muteStatus contains the audio output mute status (STATUS_ENABLE | STATUS_DISABLE)
}
*/


/*
 * --------------------
 * Common Tx/Rx callback functions
 * --------------------
 */


/*
#define INCLUDE_DXLINK_NOTIFY_TX_FIRMWARE_VERSION
define_function dxlinkNotifyTxFirmwareVersion (dev dxlinkTxPort1, char firmwareVersion[])
{
	// dxlinkTxPort1 is the port 1 on the DXLink Tx
	// firmwareVersion contains the firmware version
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_RX_FIRMWARE_VERSION
define_function dxlinkNotifyRxFirmwareVersion (dev dxlinkRxPort1, char firmwareVersion[])
{
	// dxlinkRxPort1 is the port 1 on the DXLink Rx
	// firmwareVersion contains the firmware version
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_DXLINK_MODE
define_function dxlinkNotifyTxDxlinkMode (dev dxlinkTxPort1, char modeStatus[])
{
	// dxlinkTxPort1 is the port 1 on the DXLink Tx
	// modeStatus contains the status of the DXLink mode (STATUS_ENABLE | STATUS_DISABLE)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_RX_DXLINK_MODE
define_function dxlinkNotifyRxDxlinkMode (dev dxlinkRxPort1, char modeStatus[])
{
	// dxlinkRxPort1 is the port 1 on the DXLink Rx
	// modeStatus contains the status of the DXLink mode (STATUS_ENABLE | STATUS_DISABLE)
}
*/


/*
 * --------------------
 * USB callback functions
 * --------------------
 */


/*
#define INCLUDE_DXLINK_NOTIFY_TX_USB_SERVICE_CALLBACK
define_function dxlinkNotifyTxUsbService (dev dxlinkTxPort1, char usbServiceStatus[])
{
	// dxlinkTxPort1 is port 1 on the DXLink Tx.
	// usbServiceStatus contains the status of the USB service (STATUS_ENABLE | STATUS_DISABLE)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_RX_USB_ROUTE_CALLBACK
define_function dxlinkNotifyRxUsbRoute (dev dxlinkRxPort1, char usbRouteIp[])
{
	// dxlinkRxPort1 is port 1 on the DXLink Rx.
	// usbRouteIp contains the IP address that the USB data from the DXLink Rx is routed to
}
*/


/*
 * --------------------
 * Audio input callback functions
 * --------------------
 */


/*
#define INCLUDE_DXLINK_NOTIFY_TX_AUDIO_INPUT_FORMAT_CALLBACK
define_function dxlinkNotifyTxAudioInputFormat (dev dxlinkTxAudioInput, char audioFormat[])
{
	// dxlinkTxAudioInput is the D:P:S of the audio input port on the DXLink transmitter.
	// audioFormat is the audio format (DXLINK_AUDIO_INPUT_FORMAT_ANALOG | DXLINK_AUDIO_INPUT_FORMAT_HDMI | DXLINK_AUDIO_INPUT_FORMAT_SPDIF)
}
*/

/*
#define INCLUDE_DXLINK_NOTIFY_TX_AUDIO_INPUT_FORMAT_AUTO_CALLBACK
define_function dxlinkNotifyTxAudioInputFormatAuto (dev dxlinkTxAudioInput, char autoStatus[])
{
	// dxlinkTxAudioInput is the D:P:S of the audio input port on the DXLink transmitter.
	// autoStatus contains the setting of the automatic audio input format detection feature (STATUS_ENABLE | STATUS_DISABLE)
}
*/








/*
 * --------------------
 * Events to capture responses from the DXLink Tx/Rx's or update notifications
 * --------------------
 */

define_event


/*
 * --------------------
 * Data events
 * --------------------
 */


#if_defined INCLUDE_DXLINK_MONITOR_TX_MAIN
data_event[dvDxlinkTxMainPorts]
{
	command:
	{
		stack_var char cmdHeader[30]
		
		// remove the header
		cmdHeader = dxlinkParseCmdHeader(data.text)
		// cmdHeader contains the header
		// data.text is left with the parameters
		
		switch (cmdHeader)
		{
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_AUTO_SELECT_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_AUTO_SELECT:
			{
				dxlinkNotifyTxVideoInputAutoSelect (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_SWITCH_CALLBACK
			case DXLINK_COMMAND_TX_SWITCH_RESPONSE:
			{
				stack_var integer input
				stack_var integer output
				
				remove_string(data.text, 'LVIDEOI',1)
				input = atoi(data.text)
				remove_string(data.text, "'O'",1)
				output = atoi(data.text)
				
				dxlinkNotifyTxSwitch (data.device, input, output)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_FIRMWARE_VERSION
			case DXLINK_COMMAND_FIRMWARE_VERSION_RESPONSE:
			{
				dxlinkNotifyTxFirmwareVersion (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_DXLINK_MODE
			case DXLINK_COMMAND_DXLINK_MODE:
			{
				dxlinkNotifyTxDxlinkMode (data.device, data.text)
			}
			#end_if
			
			default:
			{
				// unhandled - do nothing!
			}
		}
	}
}
#end_if

#if_defined INCLUDE_DXLINK_MONITOR_TX_USB
data_event[dvDxlinkTxUsbPorts]
{
	command:
	{
		stack_var char cmdHeader[30]
		
		// remove the header
		cmdHeader = dxlinkParseCmdHeader(data.text)
		// cmdHeader contains the header
		// data.text is left with the parameters
		
		switch (cmdHeader)
		{
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_USB_SERVICE_CALLBACK
			case DXLINK_COMMAND_TX_USB_HID_SERVICE:
			{
				dxlinkNotifyTxUsbService(data.device, data.text)
			}
			#end_if
			
			default:
			{
				// unhandled - do nothing!
			}
		}
	}
}
#end_if

#if_defined INCLUDE_DXLINK_MONITOR_TX_AUDIO_INPUT
data_event[dvDxlinkTxAudInPorts]
{
	command:
	{
		stack_var char cmdHeader[30]
		
		// remove the header
		cmdHeader = dxlinkParseCmdHeader(data.text)
		// cmdHeader contains the header
		// data.text is left with the parameters
		
		switch (cmdHeader)
		{
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_AUDIO_INPUT_FORMAT_AUTO_CALLBACK
			case DXLINK_COMMAND_TX_AUDIO_IN_FORMAT_AUTO:
			{
				dxlinkNotifyTxAudioInputFormatAuto (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_AUDIO_INPUT_FORMAT_CALLBACK
			case DXLINK_COMMAND_TX_AUDIO_IN_FORMAT:
			{
				dxlinkNotifyTxAudioInputFormat (data.device, data.text)
			}
			#end_if
			
			default:
			{
				// unhandled - do nothing!
			}
		}
	}
}
#end_if

#if_defined INCLUDE_DXLINK_MONITOR_TX_VIDEO_INPUT_DIGITAL
data_event[dvDxlinkTxDigitalVideoInPorts]
{
	command:
	{
		stack_var char cmdHeader[30]
		
		// remove the header
		cmdHeader = dxlinkParseCmdHeader(data.text)
		// cmdHeader contains the header
		// data.text is left with the parameters
		
		switch (cmdHeader)
		{
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_STATUS_DIGITAL_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_STATUS_RESPONSE:
			{
				dxlinkNotifyTxVideoInputStatusDigital (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_FORMAT_DIGITAL_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_FORMAT:
			{
				dxlinkNotifyTxVideoInputFormatDigital (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_RESOLUTION_AUTO_DIGITAL_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_AUTO:
			{
				dxlinkNotifyTxVideoInputResolutionAutoDigital (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_RESOLUTION_DIGITAL_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION:
			{
				dxlinkNotifyTxVideoInputResolutionDigital (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_EDID_SOURCE_DIGITAL_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_EDID_SOURCE:
			{
				dxlinkNotifyTxVideoInputEdidSourceDigital (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_HDCP_COMPLIANCE
			case DXLINK_COMMAND_TX_VIDEO_IN_HDCP_COMPLIANCE:
			{
				dxlinkNotifyTxVideoInputHdcpCompliance (data.device, data.text)
			}
			#end_if
			
			default:
			{
				// unhandled - do nothing!
			}
		}
	}
}
#end_if

#if_defined INCLUDE_DXLINK_MONITOR_TX_VIDEO_INPUT_ANALOG
data_event[dvDxlinkTxAnalogVidInPorts]
{
	command:
	{
		stack_var char cmdHeader[30]
		
		// remove the header
		cmdHeader = dxlinkParseCmdHeader(data.text)
		// cmdHeader contains the header
		// data.text is left with the parameters
		
		switch (cmdHeader)
		{
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_STATUS_ANALOG_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_STATUS_RESPONSE:
			{
				dxlinkNotifyTxVideoInputStatusAnalog (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_FORMAT_ANALOG_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_FORMAT:
			{
				dxlinkNotifyTxVideoInputFormatAnalog (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_RESOLUTION_AUTO_ANALOG_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_AUTO:
			{
				dxlinkNotifyTxVideoInputResolutionAutoAnalog (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_RESOLUTION_AUTO_DIGITAL_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION:
			{
				dxlinkNotifyTxVideoInputResolutionAutoDigital (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_EDID_PREFERRED_RESOLUTION_ANALOG_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_EDID_PREFERRED_RESOLUTION:
			{
				dxlinkNotifyVideoInputEdidPreferredResolutionAnalog (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_EDID_SOURCE_ANALOG_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_EDID_SOURCE:
			{
				dxlinkNotifyTxVideoInputEdidSourceAnalog (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_VERTICAL_SHIFT_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_VERTICAL_SHIFT:
			{
				dxlinkNotifyTxVideoInputVerticalShift (data.device, atoi(data.text))
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_HORIZONTAL_SHIFT_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_HORIZONTAL_SHIFT:
			{
				dxlinkNotifyTxVideoInputHorizontalShift (data.device, atoi(data.text))
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_PHASE_CALLBACK
			case DXLINK_COMMAND_TX_VIDEO_IN_PHASE:
			{
				dxlinkNotifyTxVideoInputPhase (data.device, atoi(data.text))
			}
			#end_if
			
			default:
			{
				// unhandled - do nothing!
			}
		}
	}
}
#end_if

#if_defined INCLUDE_DXLINK_MONITOR_RX_MAIN
data_event[dvDxlinkRxMainPorts]
{
	command:
	{
		stack_var char cmdHeader[30]
		
		// remove the header
		cmdHeader = dxlinkParseCmdHeader(data.text)
		// cmdHeader contains the header
		// data.text is left with the parameters
		
		switch (cmdHeader)
		{
			#if_defined INCLUDE_DXLINK_NOTIFY_RX_FIRMWARE_VERSION
			case DXLINK_COMMAND_FIRMWARE_VERSION_RESPONSE:
			{
				dxlinkNotifyRxFirmwareVersion (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_RX_DXLINK_MODE
			case DXLINK_COMMAND_DXLINK_MODE:
			{
				dxlinkNotifyRxDxlinkMode (data.device, data.text)
			}
			#end_if
			
			default:
			{
				// unhandled - do nothing!
			}
		}
	}
}
#end_if

#if_defined INCLUDE_DXLINK_MONITOR_RX_USB
data_event[dvDxlinkRxUsbPorts]
{
	command:
	{
		stack_var char cmdHeader[30]
		
		// remove the header
		cmdHeader = dxlinkParseCmdHeader(data.text)
		// cmdHeader contains the header
		// data.text is left with the parameters
		
		switch (cmdHeader)
		{
			#if_defined INCLUDE_DXLINK_NOTIFY_RX_USB_ROUTE_CALLBACK
			case DXLINK_COMMAND_RX_USB_HID_ROUTE:
			{
				dxlinkNotifyRxUsbRoute(data.device, data.text)
			}
			#end_if
			
			default:
			{
				// unhandled - do nothing!
			}
		}
	}
}
#end_if

#if_defined INCLUDE_DXLINK_MONITOR_RX_VIDEO_OUTPUT
data_event[dvDxlinkRxVidOutPorts]
{
	command:
	{
		stack_var char cmdHeader[30]
		
		// remove the header
		cmdHeader = dxlinkParseCmdHeader(data.text)
		// cmdHeader contains the header
		// data.text is left with the parameters
		
		switch (cmdHeader)
		{
			#if_defined INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_SCALE_MODE_CALLBACK
			case DXLINK_COMMAND_RX_VIDEO_OUT_SCALE_MODE:
			{
				dxlinkNotifyRxVideoOutputScaleMode (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_RESOLUTION_CALLBACK
			case DXLINK_COMMAND_RX_VIDEO_OUT_RESOLUTION:
			{
				dxlinkNotifyRxVideoOutputResolution (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_ASPECT_RATIO_CALLBACK
			case DXLINK_COMMAND_RX_VIDEO_OUT_ASPECT_RATIO:
			{
				dxlinkNotifyRxVideoOutputAspectRatio (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_TEST_PATTERN_CALLBACK
			case DXLINK_COMMAND_RX_VIDEO_OUT_TEST_PATTERN:
			{
				dxlinkNotifyRxVideoOutputTestPattern (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_MUTE_CALLBACK
			case DXLINK_COMMAND_RX_VIDEO_OUT_MUTE:
			{
				dxlinkNotifyRxVideoOutputMute (data.device, data.text)
			}
			#end_if
			
			default:
			{
				// unhandled - do nothing!
			}
		}
	}
}
#end_if

#if_defined INCLUDE_DXLINK_MONITOR_RX_AUDIO_OUTPUT
data_event[dvDxlinkRxAudOutPorts]
{
	command:
	{
		stack_var char cmdHeader[30]
		
		// remove the header
		cmdHeader = dxlinkParseCmdHeader(data.text)
		// cmdHeader contains the header
		// data.text is left with the parameters
		
		switch (cmdHeader)
		{
			#if_defined INCLUDE_DXLINK_NOTIFY_RX_AUDIO_OUTPUT_MUTE_CALLBACK
			case DXLINK_COMMAND_RX_AUDIO_OUT_MUTE:
			{
				dxlinkNotifyRxAudioOutputMute (data.device, data.text)
			}
			#end_if
			
			#if_defined INCLUDE_DXLINK_NOTIFY_RX_AUDIO_OUTPUT_FORMAT_CALLBACK
			case DXLINK_COMMAND_RX_AUDIO_OUT_FORMAT:
			{
				dxlinkNotifyRxAudioOutputFormat (data.device, data.text)
			}
			#end_if
			
			default:
			{
				// unhandled - do nothing!
			}
		}
	}
}
#end_if

#end_if