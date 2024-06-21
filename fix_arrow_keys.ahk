#Requires AutoHotkey v2.0

AppsKey & w::  ; Define hotkey for Shift + AppsKey + W / Shift + AppsKey + L combination
{
	UpFunc  ; Call function to handle Up arrow movement
	return  ; Exit the hotkey
}
AppsKey & l::
{
	UpFunc  ; Call function to handle Up arrow movement
	return  ; Exit the hotkey
}

UpFunc()  ; Function to handle Up arrow movement
{
    if (GetKeyState("Shift", "P"))  ; Check if Shift key is pressed
    {
        SendInput "+{Up}"  ; Send Shift + Up arrow key
    }
    else
    {
        SendInput "{Up}"  ; Send Up arrow key only
    }
    return  ; Exit the function
}

AppsKey & a::  ; Define hotkey for Shift + AppsKey + A / Shift + AppsKey + , combination
{
	LeftFunc  ; Call function to handle Left arrow movement
	return  ; Exit the hotkey
}
AppsKey & ,::
{
	LeftFunc  ; Call function to handle Left arrow movement
	return  ; Exit the hotkey
}

LeftFunc()  ; Function to handle Left arrow movement
{
    if (GetKeyState("Shift", "P"))  ; Check if Shift key is pressed
    {
        SendInput "+{Left}"  ; Send Shift + Left arrow key
    }
    else
    {
        SendInput "{Left}"  ; Send Left arrow key only
    }
    return  ; Exit the function
}

AppsKey & s::  ; Define hotkey for Shift + AppsKey + S / Shift + AppsKey + . combination
{
	DownFunc  ; Call function to handle Down arrow movement
	return  ; Exit the hotkey
}
AppsKey & .::
{
	DownFunc  ; Call function to handle Down arrow movement
	return  ; Exit the hotkey
}

DownFunc()  ; Function to handle Down arrow movement
{
    if (GetKeyState("Shift", "P"))  ; Check if Shift key is pressed
    {
        SendInput "+{Down}"  ; Send Shift + Down arrow key
    }
    else
    {
        SendInput "{Down}"  ; Send Down arrow key only
    }
    return  ; Exit the function
}

AppsKey & d::  ; Define hotkey for Shift + AppsKey + D / Shift + AppsKey + / combination
{
	RightFunc  ; Call function to handle Right arrow movement
	return  ; Exit the hotkey
}
AppsKey & /::
{
	RightFunc  ; Call function to handle Right arrow movement
	return  ; Exit the hotkey
}

RightFunc()  ; Function to handle Right arrow movement
{
    if (GetKeyState("Shift", "P"))  ; Check if Shift key is pressed
    {
        SendInput "+{Right}"  ; Send Shift + Right arrow key
    }
    else
    {
        SendInput "{Right}"  ; Send Right arrow key only
    }
    return  ; Exit the function
}

AppsKey & i:: ; Map AppsKey + I to send Insert
{
	SendInput "{Insert}" ; Send Insert only
}

AppsKey & p:: ; Map AppsKey + P to send Printscreen
{
	SendInput "{Printscreen}" ; Send Printscreen only
}

AppsKey & \:: ; Map AppsKey + \ to send Delete
{
	SendInput "{Delete}" ; Send Delete only
}

^AppsKey:: ; Map Ctrl + AppsKey to send AppsKey
{
	SendInput "{AppsKey}" ; Send Right AppsKey only
}