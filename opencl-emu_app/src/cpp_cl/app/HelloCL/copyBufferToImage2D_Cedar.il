il_cs_2_0
dcl_cb cb0[9] ; Constant buffer that holds ABI data
dcl_literal l0, 4, 1, 2, 3
dcl_literal l1, 0x00FFFFFF, -1, -2, -3
dcl_literal l2, 0x0000FFFF, 0xFFFFFFFE,0x000000FF,0xFFFFFFFC
dcl_literal l3, 24, 16, 8, 0xFFFFFFFF
dcl_literal l4, 0xFFFFFF00, 0xFFFF0000, 0xFF00FFFF, 0xFFFF00FF
dcl_literal l5, 0, 4, 8, 12
dcl_literal l6, 32, 32, 32, 32
dcl_literal l7, 24, 31, 16, 31
mov r1013, cb0[8].x
call 1120;$
endmain
func 1120 ; __OpenCL_copyBufferToImage2D_kernel
mov r1019, l1.0
dcl_uav_id(0)_type(2d)_fmtx(uint)
dcl_max_thread_per_group 128 
dcl_raw_uav_id(1)
dcl_arena_uav_id(8)
mov r0.z, vThreadGrpIdFlat.x
mov r1022.xyz0, vTidInGrp.xyz
mov r1023.xyz0, vThreadGrpId.xyz
imad r1021.xyz0, r1023.xyz0, cb0[1].xyz0, r1022.xyz0
iadd r1021.xyz0, r1021.xyz0, cb0[6].xyz0
iadd r1023.xyz0, r1023.xyz0, cb0[7].xyz0
mov r1023.w, r0.z
ishl r1023.w, r1023.w, l0.z
mov r1018.x, l0.0
mov r1015.x, cb0[8].x
dcl_literal l8, 0x00000001, 0x00000001, 0x00000001, 0x00000001; f32:i32 1
dcl_literal l10, 0x00000002, 0x00000002, 0x00000002, 0x00000002; f32:i32 2
dcl_literal l9, 0x00000004, 0x00000004, 0x00000004, 0x00000004; f32:i32 4
dcl_literal l13, 0x00000008, 0x00000008, 0x00000008, 0x00000008; f32:i32 8
dcl_literal l15, 0x0000000c, 0x0000000c, 0x0000000c, 0x0000000c; f32:i32 12
dcl_literal l11, 0x00000010, 0x00000010, 0x00000010, 0x00000010; f32:i32 16
dcl_literal l16, 0x00000018, 0x00000018, 0x00000018, 0x00000018; f32:i32 24
dcl_literal l14, 0x000000ff, 0x000000ff, 0x000000ff, 0x000000ff; f32:i32 255
dcl_literal l12, 0x0000ffff, 0x0000ffff, 0x0000ffff, 0x0000ffff; f32:i32 65535
dcl_cb cb1[7]
; Kernel arg setup: src
mov r1, cb1[0]
; Kernel arg setup: dst
mov r2, cb1[1]
; Kernel arg setup: srcOrigin
mov r3, cb1[3]
; Kernel arg setup: dstOrigin
mov r4, cb1[4]
; Kernel arg setup: size
mov r5, cb1[5]
; Kernel arg setup: format
mov r6, cb1[6]
call 1134 ; copyBufferToImage2D
ret
endfunc ; __OpenCL_copyBufferToImage2D_kernel
;ARGSTART:__OpenCL_copyBufferToImage2D_kernel
;version:1:4:53
;device:cedar
;uniqueid:1120
;memory:hwprivate:0
;memory:hwlocal:0
;pointer:src:i32:1:1:0:uav:1:4
;image:dst:2D:WO:0:1:16
;value:srcOrigin:i32:4:1:48
;value:dstOrigin:i32:4:1:64
;value:size:i32:4:1:80
;value:format:i32:4:1:96
;function:1:1134
;uavid:8
;ARGEND:__OpenCL_copyBufferToImage2D_kernel
func 1134 ; copyBufferToImage2D         ; @__OpenCL_copyBufferToImage2D_kernel
; BB#0:                                 ; %get_global_id.exit2
	mov r257, r6
	mov r258, r5
	mov r259, r4
	mov r260, r3
	mov r261.x___, r2.xxxx
	mov r262.x___, r1.xxxx
	mov r263, r258.x000 
	mov r264, r1021.xyz0
	mov r264, r264.x000 
	ige r265.x___, r264.xxxx, r263.xxxx
	mov r266, r1021.xyz0
	if_logicalnz r265.xxxx
	else
	mov r265, r266.y000 
	mov r258, r258
	mov r258, r258.y000 
	ige r258.x___, r265.xxxx, r258.xxxx
	if_logicalnz r258.xxxx
	else
	imul r258.x___, r265.xxxx, r263.xxxx
	iadd r258.x___, r258.xxxx, r264.xxxx
	mov r263, r257.z000 
	imul r258.x___, r258.xxxx, r263.xxxx
	mov r260, r260.x000 
	iadd r258.x___, r258.xxxx, r260.xxxx
	mov r257, r257
	mov r259, r259
	mov r260.x___, r261.xxxx
	mov r261.x___, r262.xxxx
	mov r262, r259.y000 
	iadd r262.x___, r265.xxxx, r262.xxxx
	mov r259, r259.x000 
	iadd r259.x___, r264.xxxx, r259.xxxx
	mov r259, r259.xxxx
	iadd r259, r259.x0zw, r262.0x00
	mov r262, r257.x000 
	mov r263, l8
	ieq r263.x___, r262.xxxx, r263.xxxx
	if_logicalnz r263.xxxx
	mov r257, r257.y000 
	mov r262, l9
	ieq r262.x___, r257.xxxx, r262.xxxx
	if_logicalnz r262.xxxx
	mov r257, l10
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r261.xxxx, r257.xxxx
	mov r1010.x___, r257.xxxx
	uav_raw_load_id(1) r1011.x___, r1010.x
	mov r257, r1011
	mov r257, r257.xxxx
	mov r257, r257
	else
	mov r262, l10
	ieq r262.x___, r257.xxxx, r262.xxxx
	if_logicalnz r262.xxxx
	mov r257, l8
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r261.xxxx, r257.xxxx
	mov r1010.x___, r257.xxxx
	iand r1010.w, r1010.x, l0.w
	ishr r1010.w, r1010.w, l0.y
	iand r1010.x, r1010.x, l2.w
	cmov_logical r1018.x, r1010.w, l3.y, l3.0
	uav_raw_load_id(1) r1011.x___, r1010.x
	ishr r1011.x, r1011.x, r1018.x
	ishl r1011.x, r1011.x, l3.y
	ushr r1011.x, r1011.x, l3.y
	mov r257, r1011
	mov r257, r257.xxxx
	mov r257, r257
	else
	mov r262, l8
	ine r257.x___, r257.xxxx, r262.xxxx
	if_logicalnz r257.xxxx
	else
	iadd r257.x___, r261.xxxx, r258.xxxx
	mov r1010.x___, r257.xxxx
	iand r1010.w, r1010.x, l0.w
	iand r1010.x, r1010.x, l2.w
	iadd r1020, r1010.wwww, l1.0yzw
	ieq r1020, r1020, l0.0000
	cmov_logical r1018.x, r1020.x, l3.0, l3.x
	cmov_logical r1018.x, r1020.y, l3.z, r1018.x
	cmov_logical r1018.x, r1020.z, l3.y, r1018.x
	uav_raw_load_id(1) r1011.x___, r1010.x
	ishr r1011.x, r1011.x, r1018.x
	ishl r1011.x, r1011.x, l3.x
	ushr r1011.x, r1011.x, l3.x
	mov r257, r1011
	mov r257, r257.xxxx
	mov r257, r257
	endif
	endif
	endif
	else
	mov r263, l10
	ieq r263.x___, r262.xxxx, r263.xxxx
	if_logicalnz r263.xxxx
	mov r257, r257.y000 
	mov r262, l9
	ieq r262.x___, r257.xxxx, r262.xxxx
	if_logicalnz r262.xxxx
	mov r257, l10
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r261.xxxx, r257.xxxx
	mov r258, l9
	iadd r258.x___, r257.xxxx, r258.xxxx
	mov r1010.x___, r258.xxxx
	uav_raw_load_id(1) r1011.x___, r1010.x
	mov r258, r1011
	mov r1010.x___, r257.xxxx
	uav_raw_load_id(1) r1011.x___, r1010.x
	mov r257, r1011
	mov r257, r257.xxxx
	iadd r257, r257.x0zw, r258.0x00
	mov r257, r257
	else
	mov r262, l10
	ieq r262.x___, r257.xxxx, r262.xxxx
	if_logicalnz r262.xxxx
	mov r257, l10
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r261.xxxx, r257.xxxx
	mov r1010.x___, r257.xxxx
	uav_raw_load_id(1) r1011.x___, r1010.x
	mov r257, r1011
	mov r258, l11
	ushr r258.x___, r257.xxxx, r258.xxxx
	mov r261, l12
	iand r257.x___, r257.xxxx, r261.xxxx
	mov r257, r257.xxxx
	iadd r257, r257.x0zw, r258.0x00
	mov r257, r257
	else
	mov r262, l8
	ine r257.x___, r257.xxxx, r262.xxxx
	if_logicalnz r257.xxxx
	else
	mov r257, l8
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r261.xxxx, r257.xxxx
	mov r1010.x___, r257.xxxx
	iand r1010.w, r1010.x, l0.w
	ishr r1010.w, r1010.w, l0.y
	iand r1010.x, r1010.x, l2.w
	cmov_logical r1018.x, r1010.w, l3.y, l3.0
	uav_raw_load_id(1) r1011.x___, r1010.x
	ishr r1011.x, r1011.x, r1018.x
	ishl r1011.x, r1011.x, l3.y
	ushr r1011.x, r1011.x, l3.y
	mov r257, r1011
	mov r258, l13
	ushr r258.x___, r257.xxxx, r258.xxxx
	mov r261, l14
	iand r257.x___, r257.xxxx, r261.xxxx
	mov r257, r257.xxxx
	iadd r257, r257.x0zw, r258.0x00
	mov r257, r257
	endif
	endif
	endif
	else
	mov r263, l9
	ieq r262.x___, r262.xxxx, r263.xxxx
	if_logicalnz r262.xxxx
	mov r257, r257.y000 
	mov r262, l9
	ieq r262.x___, r257.xxxx, r262.xxxx
	if_logicalnz r262.xxxx
	mov r257, l10
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r261.xxxx, r257.xxxx
	mov r258, l15
	iadd r258.x___, r257.xxxx, r258.xxxx
	mov r1010.x___, r258.xxxx
	uav_raw_load_id(1) r1011.x___, r1010.x
	mov r258, r1011
	mov r1010.x___, r257.xxxx
	uav_raw_load_id(1) r1011.x___, r1010.x
	mov r261, r1011
	mov r261, r261.xxxx
	iadd r258, r261.xyz0, r258.000x
	mov r261, l13
	iadd r261.x___, r257.xxxx, r261.xxxx
	mov r1010.x___, r261.xxxx
	uav_raw_load_id(1) r1011.x___, r1010.x
	mov r261, r1011
	iadd r258, r258.xy0w, r261.00x0
	mov r261, l9
	iadd r257.x___, r257.xxxx, r261.xxxx
	mov r1010.x___, r257.xxxx
	uav_raw_load_id(1) r1011.x___, r1010.x
	mov r257, r1011
	iadd r257, r258.x0zw, r257.0x00
	mov r257, r257
	else
	mov r262, l10
	ieq r262.x___, r257.xxxx, r262.xxxx
	if_logicalnz r262.xxxx
	mov r257, l10
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r261.xxxx, r257.xxxx
	mov r258, l9
	iadd r258.x___, r257.xxxx, r258.xxxx
	mov r1010.x___, r258.xxxx
	uav_raw_load_id(1) r1011.x___, r1010.x
	mov r258, r1011
	mov r261, l11
	ushr r262.x___, r258.xxxx, r261.xxxx
	mov r1010.x___, r257.xxxx
	uav_raw_load_id(1) r1011.x___, r1010.x
	mov r257, r1011
	mov r263, l12
	iand r264.x___, r257.xxxx, r263.xxxx
	mov r264, r264.xxxx
	iadd r262, r264.xyz0, r262.000x
	iand r258.x___, r258.xxxx, r263.xxxx
	iadd r258, r262.xy0w, r258.00x0
	ushr r257.x___, r257.xxxx, r261.xxxx
	iadd r257, r258.x0zw, r257.0x00
	mov r257, r257
	else
	mov r262, l8
	ine r257.x___, r257.xxxx, r262.xxxx
	if_logicalnz r257.xxxx
	else
	mov r257, l10
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r261.xxxx, r257.xxxx
	mov r1010.x___, r257.xxxx
	uav_raw_load_id(1) r1011.x___, r1010.x
	mov r257, r1011
	mov r258, l16
	ushr r258.x___, r257.xxxx, r258.xxxx
	mov r261, l14
	iand r261.x___, r257.xxxx, r261.xxxx
	mov r261, r261.xxxx
	iadd r258, r261.xyz0, r258.000x
	mov r261, l13
	ubit_extract r262.x___, r261.xxxx, r261.xxxx, r257.xxxx
	mov r263, l11
	ubit_extract r257.x___, r261.xxxx, r263.xxxx, r257.xxxx
	iadd r257, r258.xy0w, r257.00x0
	iadd r257, r257.x0zw, r262.0x00
	mov r257, r257
	endif
	endif
	endif
	else
	endif
	endif
	endif
	mov r257, r257
	mov r1.x___, r260.xxxx
	mov r2.xy__, r259.xyxy
	mov r3, r257
	uav_store_id(0) r2.xyz, r3
	endif
	endif
	ret_dyn
endfunc ; copyBufferToImage2D
;ARGSTART:copyBufferToImage2D
;uniqueid:1134
;memory:hwlocal:0
;ARGEND:copyBufferToImage2D














end
