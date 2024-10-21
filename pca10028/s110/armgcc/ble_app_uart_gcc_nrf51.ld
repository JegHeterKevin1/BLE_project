/* Linker script to configure memory regions. */

SEARCH_DIR(.)
GROUP(-lgcc -lc -lnosys)

MEMORY

/*		flash				pcb noir ram AA			pcb bleu ram AC		*/
/*----------------------------------------------------------------------*/
/*	0x3ffff					0x20003fff				0x20007fff			*/
/*																		*/
/*		160ko						8ko						24ko		*/
/*																		*/
/*	0x18000					0x20002000				0x20002000			*/
/*																		*/
/*		96ko						8ko						8ko			*/
/*																		*/
/*	0x0						0x20000000				0x20000000			*/
/*----------------------------------------------------------------------*/
{
  /* en utilisant la pile BT */
 FLASH (rx) : ORIGIN = 0x18000, LENGTH = 0x28000
 RAM (rwx) :  ORIGIN = 0x20002000, LENGTH = 0x2000
}

INCLUDE "gcc_nrf51_common.ld"