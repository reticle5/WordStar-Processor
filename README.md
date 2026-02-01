Here I detail construction of my WordStar Processor.
A modern computer (Raspberry Pi) using dosbox-x to emulate DOS and therein run the original WordStar 7.0 (the final DOS version).

## Why?
I wanted a modern computer that would be the ideal system for writing that could also be distraction free. The Raspberry Pi Zero is perfect for this. It doesn't have the memory required to run any GUI based web browsers. And whilst it can run a GUI, dosbox-x also runs in the Linux framebuffer. 

## Why WordStar ?
WordStar is a simpler word processor. It's considered by some to be one of the best distraction free. It's control system was originally designed for CP/M systems that didn't have arrow keys and PgUp/Dn keys. At the same time, the controls were placed near to where a writer would normally place their fingers. This lowered the amount of over reaching they had to do, which in turn would have broken the writers stride.

# Hardware
## Raspberry Pi Zero 2 W (header less model)
I went with this option as it's 64 bit. Unlike the standard Raspberry models, it doesn't have the large protruding USB and NIC ports. Making it a much smaller and thinner unit.

## Keychron K3 V3
I already had one of these as my daily keyboard. Here I went with the banana switches as the red switch are too sensitive for touch typing.

Another legacy feature of WordStar's design, was that the caps lock and the left control key were the other way around originally. IBM in the 80's swapped their positions. But when WordStar was first created, the control key was next to the A key. 

Dosbox-x has a keyboard mapper, so you could swap the keys there. There are also a number of DOS switch.com type programs to do the same. But I wanted this machine to be a bit more hardcore. The great thing about the V3 is that they are fully QMK compatible. So I use launcher.keychron.com to remap the left control key to caps lock and vice versa.

OK, but they still say caps lock and control. What about that? Well, I simply painted over the old names, and used white on clear labels from my Brother PT-750W to print out the caps lock and control labels for the "new" keys. If you're interested in doing this, you can find the file for the Brother in the "Brother P-Touch" folder. It's a close enough match to the font used on the Keychron.
