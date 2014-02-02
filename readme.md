amx-dxlink-library
===============


Files
-----
+ amx-dxlink-api.axi
+ amx-dxlink-control.axi
+ amx-dxlink-listener.axi


Overview
--------
The **amx-dxlink-library** NetLinx library is intended as a tool to make things easier for anyone tasked with programming an AMX system containing an AMX DXLink endpoint device:

+ RX-DXLINK-HDMI
+ TX-HDMI-DXLINK
+ TX-MULTI-DXLINK
+ WP-MULTI-DXLINK

The built-in structures, constants, control functions, callback functions, and events assist you by simplifying control and feedback.

Everything is a function!

Consistent, descriptive control function names within **amx-dxlink-control** make it easy for you to control the different AV aspects of the DXLink device (video inputs/outputs, audio inputs/outputs, USB ports) and request information. E.g:

	/*
	 * Function:	dxlinkSetRxVideoOutputScaleMode
	 * 
	 * Arguments:	dev dxlinkRxVidOut - video output port on the DXLink RX
	 * 		char scaleMode[] - scaling mode
	 *                                 	Values:
	 *                                      	DXLINK_SCALE_MODE_AUTO
	 *                                      	DXLINK_SCALE_MODE_BYPASS
	 *                                      	DXLINK_SCALE_MODE_MANUAL
	 * 
	 * Description:	Sets the scaling mode on the video output port.
	 */
	define_function dxlinkSetRxVideoOutputScaleMode (dev dxlinkVideoOutputPort, char scaleMode[])
	{
	    switch (scaleMode)
	    {
			case DXLINK_SCALE_MODE_AUTO:
			case DXLINK_SCALE_MODE_BYPASS:
			case DXLINK_SCALE_MODE_MANUAL:
			{
				amxSendCommand (dxlinkVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_SCALE_MODE,scaleMode")
			}
	    }
	}

No longer are you required to refer to the DXLink manual to work out what command headers are required or how to build a control string containing all the required values. This process was time consuming and often involved converting numeric data to string form and building string expressions which were long and complex.

With the control functions defined within **amx-dxlink-control** values for DXLink commands are simply passed through as arguments in the appropriate data types (constants defined within **amx-dxlink-api** can be used where required) and the control functions do the hard work.

Similarly, you no longer have to build events (data/channel/level, etc...) to capture returning information from the DXLink device and parse the incoming string/command (coverting data types where required) to obtain the required information in the correct format. **amx-dxlink-listener**, listens for all types of responses from the DXLink device and triggers pre-written callback functions which you can copy to the main program, uncomment and fill in. E.g:

	#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_STATUS_ANALOG_CALLBACK
	define_function dxlinkNotifyTxVideoInputStatusAnalog (dev dxlinkTxAnalogVideoInput, char signalStatus[])
	{
	    // dxlinkTxAnalogVideoInput is the analog video input port on the DXLink Tx
	    // signalStatus is the input signal status (DXLINK_SIGNAL_STATUS_NO_SIGNAL | DXLINK_SIGNAL_STATUS_UNKNOWN | DXLINK_SIGNAL_STATUS_VALID_SIGNAL)
	}

Functions also assist to neaten up the programming and provide added readability to the code and the auto-prompter within the NetLinx Studio editor makes it easy to find the function you're looking for.

Extremely flexible!

All control and callback functions have a DEV parameter. This makes **amx-dxlink-library** extremely flexible as you can use the same control/callback functions for multiple DXLink devices. For the control functions you simply pass through the dev for the DXLink component you want to control and the dev parameter of the callback functions allows you to check to see which device triggered the notification.


amx-dxlink-api
-----------
#####Dependencies:
+ none

#####Description:
Contains structure definitions which you can use to store information about an AMX DXLink end-point device.

Contains constants for DXLink NetLinx command headers and parameter values. These are used extensively by the accompanying library files **amx-dxlink-control** and **amx-dxlink-listener**. The constants defined within **amx-dxlink-api** can also be referenced when passing values to control functions (where function parameters have a limited allowable set of values for one or more parameters) or checking to see the values of the callback function parameters.

#####Usage:
Include **amx-dxlink-api** into the main program using the `#include` compiler directive. E.g:

	#include 'amx-dxlink-api'

NOTE: If the main program file includes **amx-dxlink-control** and/or **amx-dxlink-listener** it is not neccessary to include **amx-dxlink-api** in the main program file as well as each of them already includes **amx-dxlink-api** but doing so will not cause any issues.


amx-dxlink-control
---------------
#####Dependencies:
+ amx-dxlink-api
+ amx-device-control (*see readme for amx-device-library for info*)

#####Description: 
Contains functions for controlling the various components of an AMX DXLink end-point device and requesting information from the DXLink device.

Some functions defined within **amx-dxlink-control** have an limited allowable set of values for one or more parameters. In these instances the allowable values will be printed within the accompanying commenting as constants defined within **amx-dxlink-api**.

#####Usage:
Include **amx-dxlink-control** into the main program using the `#include` compiler directive. E.g:

	#include 'amx-dxlink-control'

and call the function(s) defined within **amx-dxlink-control** from the main program file,. E.g:

	button_event [dvTp,btnSelectTableVGAInput]
	{
		push:
		{
			dxlinkSetTxVideoInputAnalog (dvDxlinkTxTableMain)
		}
	}

	button_event [dvTp,btnMuteVideo]
	{
		push:
		{
			dxlinkEnableRxAudioOutputMute (dvDXLinkRxProjector)
		}
	}


amx-dxlink-listener
----------------
#####Dependencies:
+ amx-dxlink-api

#####Description:
Contains dev arrays for listening to traffic returned from the AMX DXLink end-point device.

You should copy the required dev arrays to their main program and instantiate them with dev values corresponding to the ports of DXLink they wish to listen to.

Contains commented out callback functions and events required to capture information from the DXLink end-point device. The events (data_events, channel_events, & level_events) will parse the information returned from the DXLink device and call the associated callback functions passing the information through as arguments to the call back functions' parameter list.

Callback functions may be triggered from both unprompted data and responses to requests for information.

#####Usage:
Include **amx-dxlink-listener** into the main program using the `#include` compiler directive. E.g:

	#include 'amx-dxlink-listener'

Copy the required DEV arrays from **amx-dxlink-listener**:

	define_variable

	#if_not_defined dvDxlinkRxVidOutPorts
	dev dvDxlinkRxVidOutPorts[] = {8001:6:0}
	#end_if

to the main program file and populate the contents of the DEV arrays with only the DXLink devices that you want to listen to. E.g:

	define_device

	dvDxlinkRxVideoOutputMonitorLeft = 8001:6:0
	dvDxlinkRxVideoOutputMonitorRight = 8002:6:0

	define_variable

	// DEV array for DXLink video output ports copied from amx-dxlink-listener
	dev dvDxlinkRxVidOutPorts[] = { dvDxlinkRxVideoOutputMonitorLeft, dvDxlinkRxVideoOutputMonitorRight }

NOTE: The order of the devices within the DEV arrays does not matter. You can also have device ports from multiple DXLink end-points within the same DEV array. You can have as few (1) or as many devices defined within the DEV array as you want to listen to.

Copy whichever callback functions you would like to use to monitor changes on the DXLink device or capture responses to requests for information in your main program file. The callback function should then be uncommented and the contents of the statement block filled in appropriately. The callback functions should not be uncommented within **amx-dxlink-listener**. E.g:

Copy an empty, commented out callback function from **amx-dxlink-listener** and the associated `#define` statement:

	/*
	#define INCLUDE_DXLINK_NOTIFY_TX_SWITCH_CALLBACK
	define_function dxlinkNotifyTxSwitch (dev dxlinkTxPort1, integer input, integer output)
	{
	    // dxlinkTxPort1 is port 1 on the DXLink Tx.
	    // input contains the input port on the DXLink TX that has been selected (DXLINK_PORT_VIDEO_INPUT_ANALOG | DXLINK_PORT_VIDEO_INPUT_DIGITAL)
		// output contains the output of the DXLink TX. This is always DXLINK_PORT_VIDEO_OUTPUT.
	}
	*/

paste the callback function and `#define` statement into the main program file, uncomment, and add any code statements you want:

	#define INCLUDE_DXLINK_NOTIFY_TX_SWITCH_CALLBACK
	define_function dxlinkNotifyTxSwitch (dev dxlinkTxPort1, integer input, integer output)
	{
	    // dxlinkTxPort1 is port 1 on the DXLink Tx.
	    // input contains the input port on the DXLink TX that has been selected (DXLINK_PORT_VIDEO_INPUT_ANALOG | DXLINK_PORT_VIDEO_INPUT_DIGITAL)
		// output contains the output of the DXLink TX. This is always DXLINK_PORT_VIDEO_OUTPUT.
		
		if (dxlinkTxPort1 == dvDxlinkTxTableMain)
		{
			switch (input)
			{
				case DXLINK_PORT_VIDEO_INPUT_ANALOG:
				{
					send_string dvDebug, 'Analog input selected on Table MFTX'
				}
				case DXLINK_PORT_VIDEO_INPUT_DIGITAL:
				{
					send_string dvDebug, 'Digital input selected on Table MFTX'
				}
			}
		}
	}

The callback function will be automatically triggered whenever a change occurs on the DXLink device (that initiates an unsolicted feedback response) or a response to a request for information is received.

###IMPORTANT!
1. The `#define` compiler directive found directly above the callback function within **amx-dxlink-listener** must also be copied to the main program and uncommented along with the callback function itself.

2. Due to the way the NetLinx compiler scans the program for `#define` staments **amx-dxlink-listener** must be included in the main program file underneath any callback functions and associated `#define` statements or the callback functions will will not trigger.

E.g:

		#program_name='main program'
		
		define_device
		
		dvDxlinkTxTableMain = 7001:1:0
		dvDxlinkTxTableDigitalVideoInput = 7001:7:0
		dvDxlinkTxTableAnalogVideoInput = 7001:8:0
		dvDxlinkRxVideoOutputMonitorLeft = 8001:6:0
		dvDxlinkRxVideoOutputMonitorRight = 8002:6:0
		
		define_variable
		
		// DEV arrays for amx-dxlink-listener to use
		dev dvDxlinkTxMainPorts[] = { dvDxlinkTxTableMain }
		dev dvDxlinkTxDigitalVideoInPorts[] = { dvDxlinkTxTableDigitalVideoInput }
		dev dvDxlinkTxAnalogVideoInPorts[] = { dvDxlinkTxTableAnalogVideoInput }
		dev dvDxlinkRxVidOutPorts[] = { dvDxlinkRxVideoOutputMonitorLeft, dvDxlinkRxVideoOutputMonitorRight }
		
		#define INCLUDE_DXLINK_NOTIFY_TX_SWITCH_CALLBACK
		define_function dxlinkNotifyTxSwitch (dev dxlinkTxPort1, integer input, integer output)
		{
		}
		
		#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_STATUS_DIGITAL_CALLBACK
		define_function dxlinkNotifyTxVideoInputStatusDigital (dev dxlinkTxDigitalVideoInput, char signalStatus[])
		{
		}
		
		#define INCLUDE_DXLINK_NOTIFY_TX_VIDEO_INPUT_STATUS_ANALOG_CALLBACK
		define_function dxlinkNotifyTxVideoInputStatusAnalog (dev dxlinkTxAnalogVideoInput, char signalStatus[])
		{
		}
		
		#define INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_SCALE_MODE_CALLBACK
		define_function dxlinkNotifyRxVideoOutputScaleMode (dev dxlinkRxVideoOutput, char scaleMode[])
		{
		}
		
		#define INCLUDE_DXLINK_NOTIFY_RX_VIDEO_OUTPUT_MUTE_CALLBACK
		define_function dxlinkNotifyRxVideoOutputMute (dev dxlinkRxVideoOutput, char muteStatus[])
		{
		}
		
		#include 'amx-dxlink-listener'

---------------------------------------------------------------

Author: David Vine - AMX Australia  
Readme formatted with markdown  
Any questions, email <support@amxaustralia.com.au> or phone +61 (7) 5531 3103.
