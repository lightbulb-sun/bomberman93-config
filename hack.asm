.memorymap
defaultslot 7
slotsize $2000
slot 0 $0000
slot 1 $2000
slot 2 $4000
slot 3 $6000
slot 4 $8000
slot 5 $a000
slot 6 $c000
slot 7 $e000
.endme

.rombankmap
bankstotal 64
banksize $2000
banks 64
.endro

.background "bomberman93-jp.pce"

.bank 8 slot 4
.orga $8620
            jmp     $8628
