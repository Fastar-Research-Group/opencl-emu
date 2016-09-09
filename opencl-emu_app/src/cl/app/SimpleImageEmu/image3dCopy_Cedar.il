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
call 1121;$
endmain


func 1121 ; __OpenCL_image3dCopy_kernel
mov r1019, l1.0
dcl_resource_id(0)_type(3d)_fmtx(unknown)_fmty(unknown)_fmtz(unknown)_fmtw(unknown)
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
dcl_literal l11, 0x00000001, 0x00000001, 0x00000001, 0x00000001; f32:i32 1
dcl_literal l9, 0x00000016, 0x00000016, 0x00000016, 0x00000016; f32:i32 22
dcl_literal l10, 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000; f32:i32 1065353216
dcl_cb cb1[4]
; Kernel arg setup: input
mov r1, cb1[0]
; Kernel arg setup: output
mov r2, cb1[2]
call 1129 ; image3dCopy
ret
endfunc ; __OpenCL_image3dCopy_kernel
;ARGSTART:__OpenCL_image3dCopy_kernel
;version:1:4:53
;device:cedar
;uniqueid:1121
;memory:hwprivate:0
;memory:hwlocal:0
;image:input:3D:RO:0:1:0
;image:output:2D:WO:0:1:32
;function:1:1129
;sampler:unknown_22:0:1:22
;uavid:8
;ARGEND:__OpenCL_image3dCopy_kernel
func 1129 ; image3dCopy                 ; @__OpenCL_image3dCopy_kernel
; BB#0:                                 ; %get_global_id.exit3
	mov r257.x___, r2.xxxx
	mov r258.x___, r1.xxxx
	mov r259, r1021.xyz0
	mov r259, r259.x000 
	itof r260.x___, r259.xxxx
	mov r260, r260.xxxx
	mov r261, l8
	iadd r260, r260.xyz0, r261.000x
	iadd r260, r260.xy0w, r261.00x0
	mov r262, r1021.xyz0
	mov r262, r262.y000 
	itof r263.x___, r262.xxxx
	iadd r260, r260.x0zw, r263.0x00
	mov r263, l9
	mov r264, l8
	mov r1.x___, r258.xxxx
	mov r2.x___, r263.xxxx
	mov r3, r260
	mov r4.x___, r264.xxxx
	flr r3, r3
	sample_resource(0)_sampler(0)_coordtype(unnormalized) r1, r3 ; __amdil_sample_data3d_0_0_0_0_1_0
	mov r260, r1
	mov r265, r1021.xyz0
	mov r265, r265.x000 
	itof r265.x___, r265.xxxx
	mov r265, r265.xxxx
	iadd r261, r265.xyz0, r261.000x
	mov r265, l10
	iadd r261, r261.xy0w, r265.00x0
	mov r265, r1021.xyz0
	mov r266, cb0[0].xyz0
	mov r266, r266.y000 
	mov r267, l11
	ushr r266.x___, r266.xxxx, r267.xxxx
	inegate r266.x___, r266.xxxx
	mov r265, r265.y000 
	iadd r265.x___, r265.xxxx, r266.xxxx
	itof r265.x___, r265.xxxx
	iadd r261, r261.x0zw, r265.0x00
	mov r1.x___, r258.xxxx
	mov r2.x___, r263.xxxx
	mov r3, r261
	mov r4.x___, r264.xxxx
	flr r3, r3
	sample_resource(0)_sampler(0)_coordtype(unnormalized) r1, r3 ; __amdil_sample_data3d_0_0_0_0_1_0
	iadd r258, r260, r1
	mov r259, r259.xxxx
	iadd r259, r259.x0zw, r262.0x00
	mov r1.x___, r257.xxxx
	mov r2.xy__, r259.xyxy
	mov r3, r258
	uav_store_id(0) r2.xyz, r3
	ret_dyn
endfunc ; image3dCopy
;ARGSTART:image3dCopy
;uniqueid:1129
;memory:hwlocal:0
;ARGEND:image3dCopy

end
