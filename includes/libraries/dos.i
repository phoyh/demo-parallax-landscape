	IFND	LIBRARIES_DOS_I
LIBRARIES_DOS_I	SET	1
DOSNAME	MACRO
	DC.B	'dos.library',0
	ENDM
MODE_OLDFILE	EQU	1005
MODE_NEWFILE	EQU	1006
OFFSET_BEGINNING	EQU	-1
OFFSET_CURRENT	EQU	0
OFFSET_END	EQU	1
OFFSET_BEGINING	EQU	OFFSET_BEGINNING
BITSPERBYTE	EQU	8
BYTESPERLONG	EQU	4
BITSPERLONG	EQU	32
MAXINT	EQU	$7FFFFFFF
MININT	EQU	$80000000
SHARED_LOCK	EQU	-2
ACCESS_READ	EQU	-2
EXCLUSIVE_LOCK	EQU	-1
ACCESS_WRITE	EQU	-1
	rsreset
;DateStamp	rs.b	0
ds_Days	rs.l	1
ds_Minute	rs.l	1
ds_Tick	rs.l	1
ds_SIZEOF	rs.w	0
TICKS_PER_SECOND	EQU	50
	rsreset
FileInfoBlock	rs.b	0
fib_DiskKey	rs.l	1
fib_DirEntryType	rs.l	1
fib_FileName	rs.b	108
fib_Protection	rs.l	1
fib_EntryType	rs.l	1
fib_Size	rs.l	1
fib_NumBlocks	rs.l	1
fib_DateStamp	rs.b	ds_SIZEOF
fib_Comment	rs.b	116
fib_SIZEOF	rs.w	0
FIBB_ARCHIVE	equ	4
FIBF_ARCHIVE	equ	1<<4
FIBB_READ	equ	3
FIBF_READ	equ	1<<3
FIBB_WRITE	equ	2
FIBF_WRITE	equ	1<<2
FIBB_EXECUTE	equ	1
FIBF_EXECUTE	equ	1<<1
FIBB_DELETE	equ	0
FIBF_DELETE	equ	1<<0
BPTR	MACRO
\1	rs.l	1
	ENDM
BSTR	MACRO
\1	rs.l	1
	ENDM
	rsreset
InfoData	rs.b	0
id_NumSoftErrors	rs.l	1
id_UnitNumber	rs.l	1
id_DiskState	rs.l	1
id_NumBlocks	rs.l	1
id_NumBlocksUsed	rs.l	1
id_BytesPerBlock	rs.l	1
id_DiskType	rs.l	1
id_VolumeNode	rs.l	1
id_InUse	rs.l	1
id_SIZEOF	rs.w	0
ID_WRITE_PROTECTED	EQU	80
ID_VALIDATING	EQU	81
ID_VALIDATED	EQU	82
ID_NO_DISK_PRESENT	EQU	-1
ID_UNREADABLE_DISK	EQU	('B'<<24)!('A'<<16)!('D'<<8)
ID_NOT_REALLY_DOS	EQU	('N'<<24)!('D'<<16)!('O'<<8)!('S')
ID_DOS_DISK	EQU	('D'<<24)!('O'<<16)!('S'<<8)
ID_KICKSTART_DISK	EQU	('K'<<24)!('I'<<16)!('C'<<8)!('K')
ERROR_NO_FREE_STORE	EQU	103
ERROR_TASK_TABLE_FULL	EQU	105
ERROR_LINE_TOO_LONG	EQU	120
ERROR_FILE_NOT_OBJECT	EQU	121
ERROR_INVALID_RESIDENT_LIBRARY	EQU	122
ERROR_OBJECT_IN_USE	EQU	202
ERROR_OBJECT_EXISTS	EQU	203
ERROR_OBJECT_NOT_FOUND	EQU	205
ERROR_ACTION_NOT_KNOWN	EQU	209
ERROR_INVALID_COMPONENT_NAME	EQU	210
ERROR_INVALID_LOCK	EQU	211
ERROR_OBJECT_WRONG_TYPE	EQU	212
ERROR_DISK_NOT_VALIDATED	EQU	213
ERROR_DISK_WRITE_PROTECTED	EQU	214
ERROR_RENAME_ACROSS_DEVICES	EQU	215
ERROR_DIRECTORY_NOT_EMPTY	EQU	216
ERROR_DEVICE_NOT_MOUNTED	EQU	218
ERROR_SEEK_ERROR	EQU	219
ERROR_COMMENT_TOO_BIG	EQU	220
ERROR_DISK_FULL	EQU	221
ERROR_DELETE_PROTECTED	EQU	222
ERROR_WRITE_PROTECTED	EQU	223
ERROR_READ_PROTECTED	EQU	224
ERROR_NOT_A_DOS_DISK	EQU	225
ERROR_NO_DISK	EQU	226
ERROR_NO_MORE_ENTRIES	EQU	232
RETURN_OK	EQU	0
RETURN_WARN	EQU	5
RETURN_ERROR	EQU	10
RETURN_FAIL	EQU	20
SIGBREAKB_CTRL_C	equ	12
SIGBREAKF_CTRL_C	equ	1<<12
SIGBREAKB_CTRL_D	equ	13
SIGBREAKF_CTRL_D	equ	1<<13
SIGBREAKB_CTRL_E	equ	14
SIGBREAKF_CTRL_E	equ	1<<14
SIGBREAKB_CTRL_F	equ	15
SIGBREAKF_CTRL_F	equ	1<<15
	ENDC
