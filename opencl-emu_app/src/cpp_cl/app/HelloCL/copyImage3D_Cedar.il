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
call 1127;$
endmain














func 1127 ; __OpenCL_copyImage3D_kernel
mov r1019, l1.0
dcl_resource_id(0)_type(3d)_fmtx(unknown)_fmty(unknown)_fmtz(unknown)_fmtw(unknown)
dcl_uav_id(0)_type(3d)_fmtx(uint)
dcl_max_thread_per_group 128 
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
dcl_literal l9, 0x00000016, 0x00000016, 0x00000016, 0x00000016; f32:i32 22
dcl_cb cb1[7]
; Kernel arg setup: src
mov r1, cb1[0]
; Kernel arg setup: dst
mov r2, cb1[2]
; Kernel arg setup: srcOrigin
mov r3, cb1[4]
; Kernel arg setup: dstOrigin
mov r4, cb1[5]
; Kernel arg setup: size
mov r5, cb1[6]
call 1141 ; copyImage3D
ret
endfunc ; __OpenCL_copyImage3D_kernel
;ARGSTART:__OpenCL_copyImage3D_kernel
;version:1:4:53
;device:cedar
;uniqueid:1127
;memory:hwprivate:0
;memory:hwlocal:0
;image:src:3D:RO:0:1:0
;image:dst:3D:WO:0:1:32
;value:srcOrigin:i32:4:1:64
;value:dstOrigin:i32:4:1:80
;value:size:i32:4:1:96
;function:1:1141
;sampler:unknown_22:0:1:22
;uavid:8
;ARGEND:__OpenCL_copyImage3D_kernel
func 1141 ; copyImage3D                 ; @__OpenCL_copyImage3D_kernel
; BB#0:                                 ; %get_global_id.exit3
	mov r257, r5
	mov r258, r4
	mov r259, r3
	mov r260.x___, r2.xxxx
	mov r261.x___, r1.xxxx
	mov r262, r257.x000 
	mov r263, r1021.xyz0
	mov r263, r263.x000 
	ige r262.x___, r263.xxxx, r262.xxxx
	mov r264, r1021.xyz0
	mov r265, r1021.xyz0
	if_logicalnz r262.xxxx
	else
	mov r262, r264.y000 
	mov r257, r257
	mov r264, r257.y000 
	ige r264.x___, r262.xxxx, r264.xxxx
	if_logicalnz r264.xxxx
	else
	mov r264, r265.z000 
	mov r257, r257.z000 
	ige r257.x___, r264.xxxx, r257.xxxx
	if_logicalnz r257.xxxx
	else
	mov r257, r263.xxxx
	mov r263, l8
	iadd r257, r257.xyz0, r263.000x
	iadd r257, r257.xy0w, r264.00x0
	iadd r257, r257.x0zw, r262.0x00
	mov r258, r258
	mov r259, r259
	mov r260.x___, r260.xxxx
	mov r261.x___, r261.xxxx
	iadd r259, r257, r259
	mov r262, r259.x000 
	itof r262.x___, r262.xxxx
	mov r262, r262.xxxx
	mov r263, l8
	iadd r262, r262.xyz0, r263.000x
	mov r263, r259.z000 
	itof r263.x___, r263.xxxx
	iadd r262, r262.xy0w, r263.00x0
	mov r259, r259.y000 
	itof r259.x___, r259.xxxx
	iadd r259, r262.x0zw, r259.0x00
	mov r262, l9
	mov r263, l8
	mov r1.x___, r261.xxxx
	mov r2.x___, r262.xxxx
	mov r3, r259
	mov r4.x___, r263.xxxx
	flr r3, r3
	sample_resource(0)_sampler(0)_coordtype(unnormalized) r1, r3 ; __amdil_sample_data3d_0_0_0_0_1_0
	mov r259, r1
	iadd r257, r257, r258
	mov r1.x___, r260.xxxx
	mov r2, r257
	mov r3, r259
	uav_store_id(0) r2.xyz, r3
	endif
	endif
	endif
	ret_dyn
endfunc ; copyImage3D
;ARGSTART:copyImage3D
;uniqueid:1141
;memory:hwlocal:0
;ARGEND:copyImage3D

end
