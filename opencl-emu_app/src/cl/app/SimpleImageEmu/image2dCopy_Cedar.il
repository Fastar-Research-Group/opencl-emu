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
func 1120 ; __OpenCL_image2dCopy_kernel
mov r1019, l1.0
dcl_resource_id(0)_type(2d)_fmtx(unknown)_fmty(unknown)_fmtz(unknown)_fmtw(unknown)
dcl_uav_id(0)_type(2d)_fmtx(uint)
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
dcl_cb cb1[4]
; Kernel arg setup: input
mov r1, cb1[0]
; Kernel arg setup: output
mov r2, cb1[2]
call 1128 ; image2dCopy
ret
endfunc ; __OpenCL_image2dCopy_kernel
;ARGSTART:__OpenCL_image2dCopy_kernel
;version:1:4:53
;device:cedar
;uniqueid:1120
;memory:hwprivate:0
;memory:hwlocal:0
;image:input:2D:RO:0:1:0
;image:output:2D:WO:0:1:32
;function:1:1128
;sampler:unknown_22:0:1:22
;uavid:8
;ARGEND:__OpenCL_image2dCopy_kernel
func 1128 ; image2dCopy                 ; @__OpenCL_image2dCopy_kernel
; BB#0:                                 ; %get_global_id.exit1
	mov r257.x___, r2.xxxx
	mov r259, r1021.xyz0
	mov r259, r259.x000 
	itof r260.x___, r259.xxxx
	mov r260, r260.xxxx
	mov r261, l8
	iadd r260, r260.xyz0, r261.000x
	iadd r260, r260.xy0w, r261.00x0
	mov r261, r1021.xyz0
	mov r261, r261.y000 
	itof r262.x___, r261.xxxx
	iadd r260, r260.x0zw, r262.0x00
	mov r262, l9
	mov r263, l8
	mov r2.x___, r262.xxxx
	mov r3, r260
	mov r4.x___, r263.xxxx
	flr r3, r3
	sample_resource(0)_sampler(0)_coordtype(unnormalized) r1, r3 ; __amdil_sample_data2d_0_0_0_0_1_0
	mov r258, r1
	mov r259, r259.xxxx
	iadd r259, r259.x0zw, r261.0x00
	mov r1.x___, r257.xxxx
	mov r2.xy__, r259.xyxy
	mov r3, r258
	uav_store_id(0) r2.xyz, r3
	ret_dyn
endfunc ; image2dCopy
;ARGSTART:image2dCopy
;uniqueid:1128
;memory:hwlocal:0
;ARGEND:image2dCopy


end
