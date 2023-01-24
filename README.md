# Joy 2B+

![joy2b](img/joy2bplus.png)

## Table of Contents
 - [Introduction](#Introduction)
 - [Hardware changes](#Hardwarechanges)
 - [Testing program](#Testingprogram)
 - [Games](#Games)
 - [Purchase joystick or gamepad](#purchase)
 - [Adaptations](#Adaptations)
 - [Other supported joysticks](#suportjoy)
 - [Contributors](#Contributors)

<a name="Introduction"/>

## Introduction 

This small modification is to adapt two or three buttons to a joystick for ATARI 2600/XL/XE.

Some advantages of this project :

 - More than 70 [games](https://github.com/ascrnet/Joy2Bplus/wiki/Games) are available and growing in the future
 - Only the joystick needs to be modified by adding a resistor for each button added
 - You can buy a ready-to-play joystick
 - Compatible with some SEGA gamepad to use two buttons
 - For developers it can be emulated from Altirra by configuring a custom joystick
 - Modifications of some commercial joysticks are also available
 - A test program is provided for proper testing of all buttons

<a name="Hardwarechanges"/>

## Hardware changes

The technical details to proceed to perform the modification are documented [here](../../wiki/Instructions)

<a name="Testingprogram"/>

## Testing program

![joy2b](img/testjoy2b.png)

This is a small program to test the buttons, it was developed in assembler using [MADS](http://mads.atari8.info) and right here is the source code and its [executable](https://github.com/ascrnet/Joy2Bplus/releases).

Thank you Eyvind Bernhardsen for your improvements to the test program.

<a name="Games"/>

## Games

A [list](https://github.com/ascrnet/Joy2Bplus/wiki/Games) of currently available games and how to test them on Altirra emulator for ATARI XL-XE

Compatible games for ATARI 2600 with [two buttons](https://atariage.com/forums/topic/158430-rom-hacks-to-support-2-buttons-with-genesis-controllers).

<a name="Purchase"/>

## Purchase joystick or gamepad

Currently there is a seller [retrogameboyz.com](https://retrogameboyz.com/products/atari-8-bit-2-button-action-joystick-control-pad-gamepad-xegs-theme) of a ready to use modified gamepad, just visit his online store.

<a name="Adaptations"/>

## Adaptations

Alternative adaptations are shown below :

### ArcadeR joystick

Thanks to colleague Mr Robot from [Atariage](https://atariage.com/forums/topic/278884-2-button-joystick/?do=findComment&comment=4670068) for sharing this small modification to this joystick

![joyarcader](img/arcaderJoy.jpeg)

Just follow the steps shown in the picture. Here is a 1.5c version of the pcb of the same joystick.

![joyarcader](img/arcaderJoy_v15.png)

collaboration of colleague [Bobo Cujo](https://atariage.com/forums/topic/278884-2-button-joystick/?do=findComment&comment=4828898)


### Retro receiver for SEGA

This adaptation is to make compatible this wireless gamepad with Joy 2B+, made by the colleague Eyvind Bernhardsen from [Atariage](https://atariage.com/forums/topic/316068-diy-sega-mega-drive-genesis-adapter/).

![adaptersega](img/adaptersega.jpeg)

All the information on how to make the project are in his own [repository](https://github.com/eyvind/sega-adapter/).

### Adapt nes gamepad

![nes01](img/nesjoy2b01.jpg)

here are the [directions](https://github.com/ascrnet/Joy2Bplus/wiki/adapt-nes-gamepad) 

### Sega megadrive gamepad

One of the easiest gamepad to adapt is the 3-button gamepad from sega megadrive.

![megadrive](img/gpadmega.jpg)

You will only have to remove the chip and make the corresponding connection.

If you need more information visit the Atarige [forum](https://forums.atariage.com/topic/333051-i-designed-a-joypad-for-the-xexegs-anyone-with-a-3d-printer-want-to-take-a-crack-at-it/#comment-5028852).

<a name="suportjoy"/>
###Other supported joysticks

List of other joysticks that use the Joy 2B+ protocol as a second alternative for use.

- [MXPad](http://www.krupkaj.cz/sblog/article_detail.php?itmid=9000035)

<a name="Contributors"/>

## Contributors

 - Eyvind Bernhardsen
 - Bobo Cujo
 - Playsoft
 - Pepe
