Supervisor	EQU	-30 
ExitIntr	EQU	-36 
Schedule	EQU	-42 
Reschedule	EQU	-48 
Switch	EQU	-54 
Dispatch	EQU	-60 
Exception	EQU	-66 
InitCode	EQU	-72 
InitStruct	EQU	-78 
MakeLibrary	EQU	-84 
MakeFunctions	EQU	-90 
FindResident	EQU	-96 
InitResident	EQU	-102 
Alert	EQU	-108 
Debug	EQU	-114 
Disable	EQU	-120 
Enable	EQU	-126 
Forbid	EQU	-132 
Permit	EQU	-138 
SetSR	EQU	-144 
SuperState	EQU	-150 
UserState	EQU	-156 
SetIntVector	EQU	-162 
AddIntServer	EQU	-168 
RemIntServer	EQU	-174 
Cause	EQU	-180 
Allocate	EQU	-186 
Deallocate	EQU	-192 
AllocMem	EQU	-198 
AllocAbs	EQU	-204 
FreeMem	EQU	-210 
AvailMem	EQU	-216 
AllocEntry	EQU	-222 
FreeEntry	EQU	-228 
Insert	EQU	-234 
AddHead	EQU	-240 
AddTail	EQU	-246 
Remove	EQU	-252 
RemHead	EQU	-258 
RemTail	EQU	-264 
Enqueue	EQU	-270 
FindName	EQU	-276 
AddTask	EQU	-282 
RemTask	EQU	-288 
FindTask	EQU	-294 
SetTaskPri	EQU	-300 
SetSignal	EQU	-306 
SetExcept	EQU	-312 
Wait	EQU	-318 
Signal	EQU	-324 
AllocSignal	EQU	-330 
FreeSignal	EQU	-336 
AllocTrap	EQU	-342 
FreeTrap	EQU	-348 
AddPort	EQU	-354 
RemPort	EQU	-360 
PutMsg	EQU	-366 
GetMsg	EQU	-372 
ReplyMsg	EQU	-378 
WaitPort	EQU	-384 
FindPort	EQU	-390 
AddLibrary	EQU	-396 
RemLibrary	EQU	-402 
OldOpenLibrary	EQU	-408 
CloseLibrary	EQU	-414 
SetFunction	EQU	-420 
SumLibrary	EQU	-426 
AddDevice	EQU	-432 
RemDevice	EQU	-438 
OpenDevice	EQU	-444 
CloseDevice	EQU	-450 
DoIO	EQU	-456 
SendIO	EQU	-462 
CheckIO	EQU	-468 
WaitIO	EQU	-474 
AbortIO	EQU	-480 
AddResource	EQU	-486 
RemResource	EQU	-492 
OpenResource	EQU	-498 
RawIOInit	EQU	-504 
RawMayGetChar	EQU	-510 
RawPutChar	EQU	-516 
RawDoFmt	EQU	-522 
GetCC	EQU	-528 
TypeOfMem	EQU	-534 
Procure	EQU	-540 
Vacate	EQU	-546 
OpenLibrary	EQU	-552 
InitSemaphore	EQU	-558 
ObtainSemaphore	EQU	-564 
ReleaseSemaphore	EQU	-570 
AttemptSemaphore	EQU	-576 
ObtainSemaphoreList	EQU	-582 
ReleaseSemaphoreList	EQU	-588 
FindSemaphore	EQU	-594 
AddSemaphore	EQU	-600 
RemSemaphore	EQU	-606 
SumKickData	EQU	-612 
AddMemList	EQU	-618 
CopyMem	EQU	-624 
CopyMemQuick	EQU	-630 
CALLEXEC	MACRO
	move.l	(_SysBase).w,a6
	jsr	\1(a6)
	ENDM
EXECNAME	MACRO
	dc.b	'exec.library',0
	ENDM
_SysBase	EQU	4

