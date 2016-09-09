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
call 1122;$
endmain




func 1122 ; __OpenCL_copyImage2DToBuffer_kernel
mov r1019, l1.0
dcl_resource_id(0)_type(2d)_fmtx(unknown)_fmty(unknown)_fmtz(unknown)_fmtw(unknown)
dcl_max_thread_per_group 128 
dcl_raw_uav_id(0)
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
dcl_literal l8, 0x00000000, 0x00000000, 0x00000000, 0x00000000; f32:i32 0
dcl_literal l10, 0x00000001, 0x00000001, 0x00000001, 0x00000001; f32:i32 1
dcl_literal l12, 0x00000002, 0x00000002, 0x00000002, 0x00000002; f32:i32 2
dcl_literal l11, 0x00000004, 0x00000004, 0x00000004, 0x00000004; f32:i32 4
dcl_literal l14, 0x00000008, 0x00000008, 0x00000008, 0x00000008; f32:i32 8
dcl_literal l15, 0x0000000c, 0x0000000c, 0x0000000c, 0x0000000c; f32:i32 12
dcl_literal l13, 0x00000010, 0x00000010, 0x00000010, 0x00000010; f32:i32 16
dcl_literal l9, 0x00000016, 0x00000016, 0x00000016, 0x00000016; f32:i32 22
dcl_literal l16, 0x00000018, 0x00000018, 0x00000018, 0x00000018; f32:i32 24
dcl_cb cb1[7]
; Kernel arg setup: src
mov r1, cb1[0]
; Kernel arg setup: dst
mov r2, cb1[2]
; Kernel arg setup: srcOrigin
mov r3, cb1[3]
; Kernel arg setup: dstOrigin
mov r4, cb1[4]
; Kernel arg setup: size
mov r5, cb1[5]
; Kernel arg setup: format
mov r6, cb1[6]
call 1136 ; copyImage2DToBuffer
ret
endfunc ; __OpenCL_copyImage2DToBuffer_kernel
;ARGSTART:__OpenCL_copyImage2DToBuffer_kernel
;version:1:4:53
;device:cedar
;uniqueid:1122
;memory:hwprivate:0
;memory:hwlocal:0
;image:src:2D:RO:0:1:0
;pointer:dst:i32:1:1:32:uav:0:4
;value:srcOrigin:i32:4:1:48
;value:dstOrigin:i32:4:1:64
;value:size:i32:4:1:80
;value:format:i32:4:1:96
;function:1:1136
;sampler:unknown_22:0:1:22
;uavid:8
;ARGEND:__OpenCL_copyImage2DToBuffer_kernel
func 1136 ; copyImage2DToBuffer         ; @__OpenCL_copyImage2DToBuffer_kernel
; BB#0:                                 ; %get_global_id.exit1
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
	mov r259, r259.x000 
	iadd r258.x___, r258.xxxx, r259.xxxx
	mov r257, r257
	mov r259, r260
	mov r260.x___, r261.xxxx
	mov r261.x___, r262.xxxx
	mov r262, r259.x000 
	iadd r262.x___, r264.xxxx, r262.xxxx
	itof r262.x___, r262.xxxx
	mov r262, r262.xxxx
	mov r263, l8
	iadd r262, r262.xyz0, r263.000x
	iadd r262, r262.xy0w, r263.00x0
	mov r259, r259.y000 
	iadd r259.x___, r265.xxxx, r259.xxxx
	itof r259.x___, r259.xxxx
	iadd r259, r262.x0zw, r259.0x00
	mov r262, l9
	mov r263, l8
	mov r1.x___, r261.xxxx
	mov r2.x___, r262.xxxx
	mov r3, r259
	mov r4.x___, r263.xxxx
	flr r3, r3
	sample_resource(0)_sampler(0)_coordtype(unnormalized) r1, r3 ; __amdil_sample_data2d_0_0_0_0_1_0
	mov r261, r257.x000 
	mov r262, l10
	ieq r262.x___, r261.xxxx, r262.xxxx
	mov r259, r1
	if_logicalnz r262.xxxx
	mov r257, r257.y000 
	mov r261, l11
	ieq r261.x___, r257.xxxx, r261.xxxx
	if_logicalnz r261.xxxx
	mov r257, l12
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r260.xxxx, r257.xxxx
	mov r258, r259.x000 
	mov r1011, r258
	mov r1010.x___, r257.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.x
	else
	mov r261, l12
	ieq r261.x___, r257.xxxx, r261.xxxx
	if_logicalnz r261.xxxx
	mov r257, l10
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r260.xxxx, r257.xxxx
	mov r258, r259.x000 
	mov r1011, r258
	iand r1011, r1011, l2.z
	mov r1010.x___, r257.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.xyzw
	else
	mov r261, l10
	ine r257.x___, r257.xxxx, r261.xxxx
	if_logicalnz r257.xxxx
	else
	iadd r257.x___, r260.xxxx, r258.xxxx
	mov r258, r259.x000 
	mov r1011, r258
	iand r1011, r1011, l2.z
	mov r1010.x___, r257.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.xyzw
	endif
	endif
	endif
	else
	mov r262, l12
	ieq r262.x___, r261.xxxx, r262.xxxx
	if_logicalnz r262.xxxx
	mov r257, r257.y000 
	mov r261, l11
	ieq r261.x___, r257.xxxx, r261.xxxx
	if_logicalnz r261.xxxx
	mov r257, l12
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r260.xxxx, r257.xxxx
	mov r258, r259.x000 
	mov r1011, r258
	mov r1010.x___, r257.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.x
	mov r258, l11
	iadd r257.x___, r257.xxxx, r258.xxxx
	mov r258, r259.y000 
	mov r1011, r258
	mov r1010.x___, r257.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.x
	else
	mov r261, l12
	ieq r261.x___, r257.xxxx, r261.xxxx
	if_logicalnz r261.xxxx
	mov r257, l12
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r260.xxxx, r257.xxxx
	mov r258, r259.y000 
	mov r260, l13
	ishl r258.x___, r258.xxxx, r260.xxxx
	mov r259, r259.x000 
	ior r258.x___, r258.xxxx, r259.xxxx
	mov r1011, r258
	mov r1010.x___, r257.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.x
	else
	mov r261, l10
	ine r257.x___, r257.xxxx, r261.xxxx
	if_logicalnz r257.xxxx
	else
	mov r257, l10
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r260.xxxx, r257.xxxx
	mov r258, r259.y000 
	mov r260, l14
	ishl r258.x___, r258.xxxx, r260.xxxx
	mov r259, r259.x000 
	ior r258.x___, r258.xxxx, r259.xxxx
	mov r1011, r258
	iand r1011, r1011, l2.x
	mov r1010.x___, r257.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.xyzw
	endif
	endif
	endif
	else
	mov r262, l11
	ieq r261.x___, r261.xxxx, r262.xxxx
	if_logicalnz r261.xxxx
	mov r257, r257.y000 
	mov r261, l11
	ieq r261.x___, r257.xxxx, r261.xxxx
	if_logicalnz r261.xxxx
	mov r257, l12
	ishl r257.x___, r258.xxxx, r257.xxxx
	iadd r257.x___, r260.xxxx, r257.xxxx
	mov r258, r259.x000 
	mov r1011, r258
	mov r1010.x___, r257.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.x
	mov r258, l11
	iadd r258.x___, r257.xxxx, r258.xxxx
	mov r260, r259.y000 
	mov r1011, r260
	mov r1010.x___, r258.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.x
	mov r258, l14
	iadd r258.x___, r257.xxxx, r258.xxxx
	mov r260, r259.z000 
	mov r1011, r260
	mov r1010.x___, r258.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.x
	mov r258, l15
	iadd r257.x___, r257.xxxx, r258.xxxx
	mov r258, r259.w000 
	mov r1011, r258
	mov r1010.x___, r257.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.x
	else
	mov r261, l12
	ieq r261.x___, r257.xxxx, r261.xxxx
	if_logicalnz r261.xxxx
	mov r257, l12
	ishl r258.x___, r258.xxxx, r257.xxxx
	iadd r258.x___, r260.xxxx, r258.xxxx
	mov r260, r259.y000 
	mov r257, l13
	ishl r260.x___, r260.xxxx, r257.xxxx
	mov r261, r259.x000 
	ior r260.x___, r260.xxxx, r261.xxxx
	mov r1011, r260
	mov r1010.x___, r258.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.x
	mov r260, l11
	iadd r258.x___, r258.xxxx, r260.xxxx
	mov r260, r259.w000 
	ishl r260.x___, r260.xxxx, r257.xxxx
	mov r259, r259.z000 
	ior r259.x___, r260.xxxx, r259.xxxx
	mov r1011, r259
	mov r1010.x___, r258.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.x
	else
	mov r261, l10
	ine r257.x___, r257.xxxx, r261.xxxx
	if_logicalnz r257.xxxx
	else
	mov r257, r259.z000 
	mov r261, l13
	ishl r257.x___, r257.xxxx, r261.xxxx
	mov r261, r259.w000 
	mov r262, l16
	ishl r261.x___, r261.xxxx, r262.xxxx
	mov r262, r259.x000 
	ior r261.x___, r261.xxxx, r262.xxxx
	ior r257.x___, r261.xxxx, r257.xxxx
	mov r259, r259.y000 
	mov r261, l14
	ishl r259.x___, r259.xxxx, r261.xxxx
	ior r259.x___, r257.xxxx, r259.xxxx
	mov r257, l12
	ishl r258.x___, r258.xxxx, r257.xxxx
	iadd r258.x___, r260.xxxx, r258.xxxx
	mov r1011, r259
	mov r1010.x___, r258.x
	uav_raw_store_id(0) mem0.x___, r1010.x, r1011.x
	endif
	endif
	endif
	else
	endif
	endif
	endif
	endif
	endif
	ret_dyn
endfunc ; copyImage2DToBuffer
;ARGSTART:copyImage2DToBuffer
;uniqueid:1136
;memory:hwlocal:0
;ARGEND:copyImage2DToBuffer










end
