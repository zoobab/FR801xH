About
=====

Freqchip Bluetooth low energy SDK for FR801x SOC series
(FR8012H/FR8016H/FR8018H). This SDK has been verified on Freqchip official EVM.

Several cheap smartwatches (5EUR to 2EUR during promos) on Aliexpress use this chip.

Contents
========

./examples:
All the sample codes we provide. More examples are added from time to time.

./components:
Specific codes related to BLE stack and the relevant profiles.

./tools:
The tools for debugging and flashing.

Pictures
========

Some pictures of the Smartmarch PCB and disassembly to come here.

Serial console
==============

I soldered a serial console on the TX RX GND and VCC_5V_USB pins, and got some serial messages:

```
$ screen /dev/ttyS2 115200
freqchipfreqchipfreqchipfreqchipuser_entry_after_ble_init
user_sleep_disable
vbat_vol :4326
battery_percent:100
battery_level:5
charge full
charge in
spi_lcd_init:id=0 0 0 0
LCD_ID:0
spi_lcd_init:id=0 0 0 0
LCD_ID:0
charge full
chip_id: = 231
0x3C 0xBB 0x28 0x1E 0xFC 0xC2
chip_id: = 231
vbat_vol :4390
battery_percent:100
battery_level:5
all svc added
battery_percent:100
battery_level:5
vbat_vol :4490
vbat_vol :4609
vbat_vol :4201
vbat_vol :4286
vbat_vol :4679
vbat_vol :3898
vbat_vol :4291
```

I need now to solder the SWD pins, and see if I can flash something.

Support
=======

* Forum: http://www.freqchip.net
* WeChat: FREQCHIP

Todo
====

* Docker build some bins
* Openocd support
* Reverse the Windows serial upload tool and make a python program instead
