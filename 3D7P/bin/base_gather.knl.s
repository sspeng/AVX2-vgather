# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.0.056 Beta Build 20150";
# mark_description "501";
# mark_description "-std=c99 -openmp -O3 -fno-alias -opt-prefetch=0 -xMIC-AVX512 -S";
	.file "base_gather.knl.c"
	.text
..TXTST0:
# -- Begin  main
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl main
# --- main(int, char **)
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0
..___tag_value_main.1:                                          #204.1
..L2:
                                                          #204.1
        pushq     %rbp                                          #204.1
..___tag_value_main.3:                                          #
        movq      %rsp, %rbp                                    #204.1
..___tag_value_main.4:                                          #
        andq      $-128, %rsp                                   #204.1
        subq      $256, %rsp                                    #204.1 c1
        movq      %rbx, 80(%rsp)                                #204.1 c3
        movq      $0x7389d9ffe, %rsi                            #204.1 c3
        movq      %r15, 72(%rsp)                                #204.1 c3
        movl      $3, %edi                                      #204.1 c3
        movq      %r14, 64(%rsp)                                #204.1 c5
        call      __intel_new_feature_proc_init                 #204.1 c5
..___tag_value_main.6:                                          #
                                # LOE r12 r13
..B1.41:                        # Preds ..B1.1
        vstmxcsr  (%rsp)                                        #204.1 c1
        movl      $.2.13_2_kmpc_loc_struct_pack.71, %edi        #204.1 c1
        orl       $32832, (%rsp)                                #204.1 c3
        xorl      %esi, %esi                                    #204.1 c3
        xorl      %eax, %eax                                    #204.1 c3
        vldmxcsr  (%rsp)                                        #204.1 c5
..___tag_value_main.9:                                          #204.1
        call      __kmpc_begin                                  #204.1
..___tag_value_main.10:                                         #
                                # LOE r12 r13
..B1.2:                         # Preds ..B1.41
        movl      $134217728, %edi                              #213.22 c1
        movl      $64, %esi                                     #213.22 c1
#       _mm_malloc(size_t, size_t)
        call      _mm_malloc                                    #213.22 c3
                                # LOE rax r12 r13
..B1.42:                        # Preds ..B1.2
        movq      %rax, %r14                                    #213.22 c1
                                # LOE r12 r13 r14
..B1.3:                         # Preds ..B1.42
        movl      $134217728, %edi                              #214.22 c1
        movl      $64, %esi                                     #214.22 c1
#       _mm_malloc(size_t, size_t)
        call      _mm_malloc                                    #214.22 c3
                                # LOE rax r12 r13 r14
..B1.43:                        # Preds ..B1.3
        movq      %rax, %rbx                                    #214.22 c1
                                # LOE rbx r12 r13 r14
..B1.4:                         # Preds ..B1.43
        movl      $134217728, %edi                              #215.26 c1
        movl      $64, %esi                                     #215.26 c1
#       _mm_malloc(size_t, size_t)
        call      _mm_malloc                                    #215.26 c3
                                # LOE rax rbx r12 r13 r14
..B1.44:                        # Preds ..B1.4
        movq      %rax, %r15                                    #215.26 c1
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.44
        testq     %r14, %r14                                    #216.3 c1
        je        ..B1.38       # Prob 0%                       #216.3 c3
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
        testq     %rbx, %rbx                                    #217.3 c1
        je        ..B1.37       # Prob 0%                       #217.3 c3
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
        testq     %r15, %r15                                    #218.3 c1
        je        ..B1.36       # Prob 0%                       #218.3 c3
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
        movl      $8, %eax                                      #254.3 c1
        movq      %r15, (%rsp)                                  #254.3 c1
        xorl      %edx, %edx                                    #254.3 c1
        movq      %rbx, 16(%rsp)                                #254.3 c1
        vmovd     %eax, %xmm0                                   #254.3 c3
        movq      %r12, 24(%rsp)                                #254.3 c3
..___tag_value_main.11:                                         #
        movl      %edx, %ebx                                    #254.3 c3
        movq      %r13, 32(%rsp)                                #254.3 c3
..___tag_value_main.12:                                         #
        movl      %edx, %r12d                                   #254.3 c3
        vpbroadcastd %xmm0, %ymm1                               #254.3 c5
        vmovdqu   %ymm1, 96(%rsp)                               #254.3 c7
        movl      %edx, %r15d                                   #254.3 c7
                                # LOE r14 ebx r12d r15d
..B1.9:                         # Preds ..B1.13 ..B1.8
        vcvtsi2sd %r12d, %xmm16, %xmm16                         #254.3 c1
        movl      %r15d, %r13d                                  #254.3 c1
        vaddsd    .L_2il0floatpacket.3(%rip), %xmm16, %xmm17    #254.3 c3
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm17, %xmm0     #254.3 c9 stall 2
        call      cos                                           #254.3 c11
                                # LOE r14 ebx r12d r13d r15d xmm0
..B1.45:                        # Preds ..B1.9
        vbroadcastsd %xmm0, %zmm2                               #254.3 c1
        movl      %r12d, 8(%rsp)                                #254.3 c1
        movl      %r15d, %eax                                   #254.3 c1
        vmovups   .L_2il0floatpacket.5(%rip), %zmm1             #254.3 c3
        movl      %eax, %r12d                                   #254.3 c3
        vsubpd    %zmm2, %zmm1, %zmm0                           #254.3 c9 stall 2
        vmovups   %zmm0, 128(%rsp)                              #254.3 c15 stall 2
        vmovaps   %zmm1, %zmm21                                 #254.3 c15
                                # LOE r14 ebx r12d r13d zmm21
..B1.10:                        # Preds ..B1.12 ..B1.45
        vcvtsi2sd %r13d, %xmm16, %xmm16                         #254.3 c1
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm1            #254.3 c1
        vmovdqu   %ymm1, 192(%rsp)                              #254.3 c7 stall 2
        xorl      %r15d, %r15d                                  #254.3 c7
        vaddsd    .L_2il0floatpacket.3(%rip), %xmm16, %xmm17    #254.3 c7
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm17, %xmm0     #254.3 c13 stall 2
        call      cos                                           #254.3 c15
                                # LOE r14 r15 ebx r12d r13d xmm0
..B1.46:                        # Preds ..B1.10
        vmovups   .L_2il0floatpacket.5(%rip), %zmm21            # c1
        vbroadcastsd %xmm0, %zmm1                               #254.3 c1
        lea       (%rbx,%r12), %edx                             #254.3 c7 stall 2
        vsubpd    %zmm1, %zmm21, %zmm16                         #254.3 c7
        vmovups   128(%rsp), %zmm18                             #254.3 c7
        movslq    %edx, %rdx                                    #254.3 c9
        vmovups   .L_2il0floatpacket.4(%rip), %zmm17            #254.3 c9
        lea       (%r14,%rdx,8), %rsi                           #254.3 c13 stall 1
        vmovups   .L_2il0floatpacket.1(%rip), %zmm19            #254.3 c15
        vmovups   .L_2il0floatpacket.0(%rip), %zmm20            #254.3 c15
                                # LOE rsi r14 r15 ebx r12d r13d zmm16 zmm17 zmm18 zmm19 zmm20 zmm21
..B1.11:                        # Preds ..B1.47 ..B1.46
        vmovdqu   192(%rsp), %ymm1                              #254.3 c1
        vcvtdq2pd %ymm1, %zmm2                                  #254.3 c9
        vaddpd    %zmm2, %zmm19, %zmm3                          #254.3 c11
        vmulpd    %zmm3, %zmm20, %zmm0                          #254.3 c17 stall 2
        call      __svml_cos8                                   #254.3 c19
                                # LOE rsi r14 r15 ebx r12d r13d zmm0 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21
..B1.47:                        # Preds ..B1.11
        vmovdqu   192(%rsp), %ymm1                              #254.3 c1
        vsubpd    %zmm0, %zmm21, %zmm22                         #254.3 c3
        vpaddd    96(%rsp), %ymm1, %ymm2                        #254.3 c7 stall 1
        vmovdqu   %ymm2, 192(%rsp)                              #254.3 c9
        vmulpd    %zmm22, %zmm17, %zmm23                        #254.3 c9
        vmulpd    %zmm16, %zmm23, %zmm24                        #254.3 c15 stall 2
        vmulpd    %zmm18, %zmm24, %zmm25                        #254.3 c21 stall 2
        vmovupd   %zmm25, (%rsi,%r15,8)                         #254.3 c27 stall 2
        addq      $8, %r15                                      #254.3 c27
        cmpq      $256, %r15                                    #254.3 c29
        jb        ..B1.11       # Prob 82%                      #254.3 c31
                                # LOE rsi r14 r15 ebx r12d r13d zmm16 zmm17 zmm18 zmm19 zmm20 zmm21
..B1.12:                        # Preds ..B1.47
        addl      $1, %r13d                                     #254.3 c1
        addl      $256, %r12d                                   #254.3 c1
        cmpl      $256, %r13d                                   #254.3 c3
        jb        ..B1.10       # Prob 91%                      #254.3 c5
                                # LOE r14 ebx r12d r13d zmm21
..B1.13:                        # Preds ..B1.12
        movl      8(%rsp), %r12d                                # c1
        addl      $65536, %ebx                                  #254.3 c1
        xorl      %r15d, %r15d                                  # c1
        addl      $1, %r12d                                     #254.3 c5 stall 1
        cmpl      $256, %r12d                                   #254.3 c7
        jb        ..B1.9        # Prob 99%                      #254.3 c9
                                # LOE r14 ebx r12d r15d
..B1.14:                        # Preds ..B1.13
        movl      $.L_2__STRING.6, %edi                         #261.3 c1
        movl      $65, %esi                                     #261.3 c1
        movq      (%rsp), %r15                                  # c1
        movq      16(%rsp), %rbx                                # c1
        movl      $256, %edx                                    #261.3 c3
        xorl      %eax, %eax                                    #261.3 c3
        movq      24(%rsp), %r12                                # c5
..___tag_value_main.13:                                         #
        movq      32(%rsp), %r13                                # c5
..___tag_value_main.14:                                         #
#       printf(const char *__restrict__, ...)
        call      printf                                        #261.3
..___tag_value_main.16:                                         #
                                # LOE rbx r12 r13 r14 r15 ebx r12d r13d r15d bl bh r12b r13b r15b
..B1.15:                        # Preds ..B1.14
        movq      stdout(%rip), %rdi                            #261.74 c1
#       fflush(FILE *)
        call      fflush                                        #261.74 c3
                                # LOE rbx r12 r13 r14 r15 ebx r12d r13d r15d bl bh r12b r13b r15b
..B1.16:                        # Preds ..B1.15
..___tag_value_main.19:                                         #263.16
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #263.16
..___tag_value_main.20:                                         #
                                # LOE rbx r12 r13 r14 r15 ebx r12d r13d r15d bl bh r12b r13b r15b xmm0
..B1.48:                        # Preds ..B1.16
        vmovsd    %xmm0, 88(%rsp)                               #263.16 c1
                                # LOE rbx r12 r13 r14 r15 ebx r12d r13d r15d bl bh r12b r13b r15b
..B1.17:                        # Preds ..B1.48
        vmovsd    .L_2il0floatpacket.6(%rip), %xmm0             #264.3 c1
        movl      $256, %edx                                    #264.3 c1
        movq      %r14, %rdi                                    #264.3 c1
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm6             #264.3 c1
        movq      %rbx, %rsi                                    #264.3 c3
        movl      %edx, %ecx                                    #264.3 c3
        movl      %edx, %r8d                                    #264.3 c5
        movl      $65, %r9d                                     #264.3 c5
        vmovapd   %xmm0, %xmm1                                  #264.3 c7
        vmovapd   %xmm0, %xmm2                                  #264.3 c7
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm7             #264.3 c7
        vmovapd   %xmm0, %xmm3                                  #264.3 c9
        vmovapd   %xmm0, %xmm4                                  #264.3 c9
        vmovapd   %xmm0, %xmm5                                  #264.3 c11
..___tag_value_main.21:                                         #264.3
#       diffusion_baseline(double *__restrict__, double *__restrict__, int, int, int, double, double, double, double, double, double, double, double, int)
        call      diffusion_baseline                            #264.3
..___tag_value_main.22:                                         #
                                # LOE rbx r12 r13 r14 r15 ebx r12d r13d r15d bl bh r12b r13b r15b
..B1.18:                        # Preds ..B1.17
..___tag_value_main.23:                                         #266.14
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #266.14
..___tag_value_main.24:                                         #
                                # LOE rbx r12 r13 r14 r15 ebx r12d r13d r15d bl bh r12b r13b r15b xmm0
..B1.19:                        # Preds ..B1.18
        xorl      %edx, %edx                                    #270.3 c1
        vmovsd    %xmm0, (%rsp)                                 #270.3 c1
        movq      %rbx, 16(%rsp)                                #270.3 c1
        movl      %edx, %ebx                                    #270.3 c3
        movq      %r14, 8(%rsp)                                 #270.3 c3
        movl      %edx, %r14d                                   #270.3 c3
        movq      %r12, 24(%rsp)                                #270.3 c5
        movl      %edx, %r12d                                   #270.3 c5
        movq      %r13, 32(%rsp)                                #270.3 c7
                                # LOE r15 ebx r12d r14d
..B1.20:                        # Preds ..B1.24 ..B1.19
        vcvtsi2sd %r12d, %xmm16, %xmm16                         #270.3 c1
        movl      %r14d, %r13d                                  #270.3 c1
        vaddsd    .L_2il0floatpacket.3(%rip), %xmm16, %xmm17    #270.3 c3
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm17, %xmm0     #270.3 c9 stall 2
        call      cos                                           #270.3 c11
                                # LOE r15 ebx r12d r13d r14d xmm0
..B1.50:                        # Preds ..B1.20
        vbroadcastsd %xmm0, %zmm0                               #270.3 c1
        movl      %r12d, 40(%rsp)                               #270.3 c1
        movl      %r14d, %eax                                   #270.3 c1
        vmovups   .L_2il0floatpacket.5(%rip), %zmm1             #270.3 c3
        movl      %eax, %r12d                                   #270.3 c3
        vmovups   .L_2il0floatpacket.9(%rip), %zmm21            #270.3 c7 stall 1
        vfnmadd132pd .L_2il0floatpacket.9(%rip), %zmm1, %zmm0   #270.3 c9
        vmovups   %zmm0, 128(%rsp)                              #270.3 c15 stall 2
        vmovaps   %zmm1, %zmm22                                 #270.3 c15
                                # LOE r15 ebx r12d r13d zmm21 zmm22
..B1.21:                        # Preds ..B1.23 ..B1.50
        vcvtsi2sd %r13d, %xmm16, %xmm16                         #270.3 c1
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm1            #270.3 c1
        vmovdqu   %ymm1, 192(%rsp)                              #270.3 c7 stall 2
        xorl      %r14d, %r14d                                  #270.3 c7
        vaddsd    .L_2il0floatpacket.3(%rip), %xmm16, %xmm17    #270.3 c7
        vmulsd    .L_2il0floatpacket.2(%rip), %xmm17, %xmm0     #270.3 c13 stall 2
        call      cos                                           #270.3 c15
                                # LOE r14 r15 ebx r12d r13d xmm0
..B1.51:                        # Preds ..B1.21
        vmovups   .L_2il0floatpacket.5(%rip), %zmm22            # c1
        vmovups   .L_2il0floatpacket.9(%rip), %zmm21            # c1
        vbroadcastsd %xmm0, %zmm16                              #270.3 c7 stall 2
        lea       (%rbx,%r12), %edx                             #270.3 c7
        movslq    %edx, %rdx                                    #270.3 c9
        vmovups   128(%rsp), %zmm18                             #270.3 c9
        vfnmadd213pd %zmm22, %zmm21, %zmm16                     #270.3 c13 stall 1
        lea       (%r15,%rdx,8), %rsi                           #270.3 c13
        vmovups   .L_2il0floatpacket.4(%rip), %zmm17            #270.3 c15
        vmovups   .L_2il0floatpacket.1(%rip), %zmm19            #270.3 c15
        vmovups   .L_2il0floatpacket.0(%rip), %zmm20            #270.3 c21 stall 2
                                # LOE rsi r14 r15 ebx r12d r13d zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22
..B1.22:                        # Preds ..B1.52 ..B1.51
        vmovdqu   192(%rsp), %ymm1                              #270.3 c1
        vcvtdq2pd %ymm1, %zmm2                                  #270.3 c9
        vaddpd    %zmm2, %zmm19, %zmm3                          #270.3 c11
        vmulpd    %zmm3, %zmm20, %zmm0                          #270.3 c17 stall 2
        call      __svml_cos8                                   #270.3 c19
                                # LOE rsi r14 r15 ebx r12d r13d zmm0 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22
..B1.52:                        # Preds ..B1.22
        vmovdqu   192(%rsp), %ymm1                              #270.3 c1
        vfnmadd213pd %zmm22, %zmm21, %zmm0                      #270.3 c3
        vpaddd    96(%rsp), %ymm1, %ymm2                        #270.3 c7 stall 1
        vmovdqu   %ymm2, 192(%rsp)                              #270.3 c9
        vmulpd    %zmm0, %zmm17, %zmm23                         #270.3 c9
        vmulpd    %zmm16, %zmm23, %zmm24                        #270.3 c15 stall 2
        vmulpd    %zmm18, %zmm24, %zmm25                        #270.3 c21 stall 2
        vmovupd   %zmm25, (%rsi,%r14,8)                         #270.3 c27 stall 2
        addq      $8, %r14                                      #270.3 c27
        cmpq      $256, %r14                                    #270.3 c29
        jb        ..B1.22       # Prob 82%                      #270.3 c31
                                # LOE rsi r14 r15 ebx r12d r13d zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22
..B1.23:                        # Preds ..B1.52
        addl      $1, %r13d                                     #270.3 c1
        addl      $256, %r12d                                   #270.3 c1
        cmpl      $256, %r13d                                   #270.3 c3
        jb        ..B1.21       # Prob 91%                      #270.3 c5
                                # LOE r15 ebx r12d r13d zmm21 zmm22
..B1.24:                        # Preds ..B1.23
        movl      40(%rsp), %r12d                               # c1
        addl      $65536, %ebx                                  #270.3 c1
        xorl      %r14d, %r14d                                  # c1
        addl      $1, %r12d                                     #270.3 c5 stall 1
        cmpl      $256, %r12d                                   #270.3 c7
        jb        ..B1.20       # Prob 99%                      #270.3 c9
                                # LOE r15 ebx r12d r14d
..B1.25:                        # Preds ..B1.24
        vpxorq    %zmm4, %zmm4, %zmm4                           #272.14 c1
        vmovsd    (%rsp), %xmm0                                 # c1
        movq      16(%rsp), %rbx                                # c1
        xorl      %eax, %eax                                    #272.14 c1
        vmovaps   %zmm4, %zmm3                                  #272.14 c3
        vmovaps   %zmm4, %zmm2                                  #272.14 c3
        movq      8(%rsp), %r14                                 # c5
        vmovaps   %zmm4, %zmm1                                  #272.14 c5
        movq      24(%rsp), %r12                                # c7
..___tag_value_main.25:                                         #
        movq      32(%rsp), %r13                                # c9
..___tag_value_main.26:                                         #
        .align    16,0x90
                                # LOE rax rbx r12 r13 r14 r15 xmm0 zmm1 zmm2 zmm3 zmm4
..B1.26:                        # Preds ..B1.26 ..B1.25
        vmovups   (%rbx,%rax,8), %zmm5                          #272.14 c1
        vmovups   64(%rbx,%rax,8), %zmm7                        #272.14 c1
        vmovups   128(%rbx,%rax,8), %zmm9                       #272.14 c7 stall 2
        vmovups   192(%rbx,%rax,8), %zmm11                      #272.14 c7
        vsubpd    (%r15,%rax,8), %zmm5, %zmm6                   #272.14 c13 stall 2
        vsubpd    64(%r15,%rax,8), %zmm7, %zmm8                 #272.14 c13
        vsubpd    128(%r15,%rax,8), %zmm9, %zmm10               #272.14 c19 stall 2
        vsubpd    192(%r15,%rax,8), %zmm11, %zmm12              #272.14 c19
        addq      $32, %rax                                     #272.14 c19
        vfmadd231pd %zmm6, %zmm6, %zmm4                         #272.14 c19
        vfmadd231pd %zmm8, %zmm8, %zmm3                         #272.14 c19
        vfmadd231pd %zmm10, %zmm10, %zmm2                       #272.14 c25 stall 2
        vfmadd231pd %zmm12, %zmm12, %zmm1                       #272.14 c25
        cmpq      $16777216, %rax                               #272.14 c25
        jb        ..B1.26       # Prob 82%                      #272.14 c27
                                # LOE rax rbx r12 r13 r14 r15 xmm0 zmm1 zmm2 zmm3 zmm4
..B1.27:                        # Preds ..B1.26
        vaddpd    %zmm3, %zmm4, %zmm3                           #272.14 c1
        vsubsd    88(%rsp), %xmm0, %xmm0                        #273.36 c1
        vmovsd    %xmm0, 96(%rsp)                               #278.3 c7 stall 2
        vaddpd    %zmm1, %zmm2, %zmm1                           #272.14 c7
        movq      stderr(%rip), %rdi                            #278.3 c7
        movl      $.L_2__STRING.7, %esi                         #278.3 c7
        movl      $1, %eax                                      #278.3 c7
        vaddpd    %zmm1, %zmm3, %zmm2                           #272.14 c13 stall 2
        vmovups   %zmm2, (%rsp)                                 #272.14 c19 stall 2
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #278.3 c19
                                # LOE rbx r12 r13 r14 r15
..B1.28:                        # Preds ..B1.27
        vmovsd    96(%rsp), %xmm0                               # c1
        vgetmantsd $0, .L_2il0floatpacket.11(%rip), %xmm19, %xmm19 #279.3 c1
        movl      $.L_2__STRING.8, %esi                         #279.3 c1
        movl      $1, %eax                                      #279.3 c1
        vgetmantsd $0, %xmm0, %xmm0, %xmm1                      #279.3 c7 stall 2
        vmovsd    %xmm1, 120(%rsp)                              #279.3 c13 stall 2
        vrcp28sd  %xmm1, %xmm1, %xmm18                          #279.3 c13
        vmovsd    %xmm18, 104(%rsp)                             #279.3 c21 stall 3
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm20           #279.3 c21
        vmulsd    {rn-sae}, %xmm19, %xmm18, %xmm21              #279.3 c21
        vgetexpsd %xmm0, %xmm0, %xmm17                          #279.3 c21
        vmovsd    %xmm17, 88(%rsp)                              #279.3 c27 stall 2
        vfnmadd231sd {rn-sae}, %xmm1, %xmm18, %xmm20            #279.3 c27
        vgetexpsd .L_2il0floatpacket.11(%rip), %xmm16, %xmm16   #279.3 c27
        vfnmadd231sd {rn-sae}, %xmm1, %xmm21, %xmm19            #279.3 c27
        vfmadd132sd {rn-sae}, %xmm18, %xmm18, %xmm20            #279.3 c33 stall 2
        vmovsd    %xmm20, 112(%rsp)                             #279.3 c35
        vsubsd    %xmm17, %xmm16, %xmm22                        #279.3 c35
        vfmadd231sd {rn-sae}, %xmm20, %xmm19, %xmm21            #279.3 c35
        movq      stderr(%rip), %rdi                            #279.3 c35
        vscalefsd %xmm22, %xmm21, %xmm23                        #279.3 c41 stall 2
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm23, %xmm0    #279.3 c47 stall 2
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #279.3 c49
                                # LOE rbx r12 r13 r14 r15
..B1.29:                        # Preds ..B1.28
        vgetmantsd $0, .L_2il0floatpacket.12(%rip), %xmm18, %xmm18 #280.3 c1
        vmovsd    104(%rsp), %xmm17                             #280.3 c1
        movl      $.L_2__STRING.9, %esi                         #280.3 c1
        movl      $1, %eax                                      #280.3 c1
        vmulsd    {rn-sae}, %xmm18, %xmm17, %xmm20              #280.3 c7 stall 2
        vmovsd    120(%rsp), %xmm1                              # c7
        vgetexpsd .L_2il0floatpacket.12(%rip), %xmm16, %xmm16   #280.3 c7
        vfnmadd231sd {rn-sae}, %xmm1, %xmm20, %xmm18            #280.3 c13 stall 2
        vmovsd    112(%rsp), %xmm19                             #280.3 c13
        vsubsd    88(%rsp), %xmm16, %xmm21                      #280.3 c13
        vfmadd231sd {rn-sae}, %xmm19, %xmm18, %xmm20            #280.3 c19 stall 2
        movq      stderr(%rip), %rdi                            #280.3 c19
        vscalefsd %xmm21, %xmm20, %xmm22                        #280.3 c25 stall 2
        vmulsd    .L_2il0floatpacket.10(%rip), %xmm22, %xmm0    #280.3 c31 stall 2
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #280.3 c33
                                # LOE rbx r12 r13 r14 r15
..B1.30:                        # Preds ..B1.29
        vmovups   (%rsp), %zmm0                                 #272.14 c1
        vxorpd    %xmm6, %xmm6, %xmm6                           #281.3 c1
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm23            #281.3 c1
        movl      $.L_2__STRING.10, %esi                        #281.3 c1
        movl      $1, %eax                                      #281.3 c1
        vextractf64x4 $1, %zmm0, %ymm1                          #272.14 c7 stall 2
        vgetmantsd $0, .L_2il0floatpacket.14(%rip), %xmm29, %xmm29 #281.3 c7
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm28           #281.3 c7
        vaddpd    %ymm0, %ymm1, %ymm2                           #272.14 c9
        vrcp28sd  %xmm29, %xmm29, %xmm31                        #281.3 c13 stall 1
        vgetexpsd .L_2il0floatpacket.14(%rip), %xmm27, %xmm27   #281.3 c13
        movq      stderr(%rip), %rdi                            #281.3 c13
        valignq   $3, %zmm2, %zmm2, %zmm16                      #272.14 c17
        valignq   $2, %zmm2, %zmm2, %zmm17                      #272.14 c19
        valignq   $1, %zmm2, %zmm2, %zmm18                      #272.14 c21
        vaddsd    %xmm18, %xmm17, %xmm3                         #272.14 c25
        vaddsd    %xmm2, %xmm16, %xmm4                          #272.14 c27
        vaddsd    %xmm4, %xmm3, %xmm19                          #272.14 c31 stall 1
        vfnmadd231sd {rn-sae}, %xmm29, %xmm31, %xmm28           #281.3 c33
        vmulsd    .L_2il0floatpacket.13(%rip), %xmm19, %xmm20   #281.3 c37 stall 1
        vmovsd    %xmm20, %xmm6, %xmm25                         #281.3 c43 stall 2
        vcmpsd    $1, .L_2il0floatpacket.3(%rip), %xmm25, %k1   #281.3 c45
        vmovdqa32 %zmm25, %zmm5                                 #281.3 c45
        vscalefsd .L_2il0floatpacket.17(%rip), %xmm25, %xmm5{%k1} #281.3 c47
        vrsqrt28sd %xmm5, %xmm5, %xmm21                         #281.3 c47
        vmulsd    {rn-sae}, %xmm5, %xmm21, %xmm24               #281.3 c55 stall 3
        vscalefsd .L_2il0floatpacket.18(%rip), %xmm21, %xmm22   #281.3 c55
        vfnmadd231sd {rn-sae}, %xmm22, %xmm24, %xmm23           #281.3 c61 stall 2
        vfmadd231sd {rn-sae}, %xmm24, %xmm23, %xmm24            #281.3 c67 stall 2
        vfmadd213sd {rn-sae}, %xmm22, %xmm22, %xmm23            #281.3 c67
        vfnmadd231sd {rn-sae}, %xmm24, %xmm24, %xmm5            #281.3 c73 stall 2
        vfmadd213sd %xmm24, %xmm23, %xmm5                       #281.3 c79 stall 2
        vmovsd    %xmm5, %xmm6, %xmm7                           #281.3 c85 stall 2
        vscalefsd .L_2il0floatpacket.19(%rip), %xmm7, %xmm7{%k1} #281.3 c87
        vfixupimmsd $112, .L_2il0floatpacket.20(%rip), %xmm25, %xmm7 #281.3 c93 stall 2
        vgetmantsd $0, %xmm7, %xmm7, %xmm30                     #281.3 c93
        vgetexpsd %xmm7, %xmm7, %xmm26                          #281.3 c93
        vmulsd    {rn-sae}, %xmm30, %xmm31, %xmm8               #281.3 c99 stall 2
        vfmadd231sd {rn-sae}, %xmm31, %xmm28, %xmm31            #281.3 c99
        vfnmadd231sd {rn-sae}, %xmm29, %xmm8, %xmm30            #281.3 c105 stall 2
        vsubsd    %xmm27, %xmm26, %xmm9                         #281.3 c105
        vfmadd231sd {rn-sae}, %xmm31, %xmm30, %xmm8             #281.3 c111 stall 2
        vscalefsd %xmm9, %xmm8, %xmm0                           #281.3 c117 stall 2
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #281.3 c119
                                # LOE rbx r12 r13 r14 r15
..B1.31:                        # Preds ..B1.30
        movq      %r14, %rdi                                    #283.3 c1
#       _mm_free(void *)
        call      _mm_free                                      #283.3 c3
                                # LOE rbx r12 r13 r15
..B1.32:                        # Preds ..B1.31
        movq      %rbx, %rdi                                    #284.3 c1
#       _mm_free(void *)
        call      _mm_free                                      #284.3 c3
                                # LOE r12 r13 r15
..B1.33:                        # Preds ..B1.32
        movq      %r15, %rdi                                    #285.3 c1
#       _mm_free(void *)
        call      _mm_free                                      #285.3 c3
                                # LOE r12 r13
..B1.34:                        # Preds ..B1.33
        movl      $.2.13_2_kmpc_loc_struct_pack.82, %edi        #286.10 c1
        xorl      %eax, %eax                                    #286.10 c1
..___tag_value_main.29:                                         #286.10
        call      __kmpc_end                                    #286.10
..___tag_value_main.30:                                         #
                                # LOE r12 r13
..B1.35:                        # Preds ..B1.34
        movq      80(%rsp), %rbx                                #286.10 c1
..___tag_value_main.31:                                         #
        movq      64(%rsp), %r14                                #286.10 c1
..___tag_value_main.32:                                         #
        xorl      %eax, %eax                                    #286.10 c1
        movq      72(%rsp), %r15                                #286.10 c5 stall 1
..___tag_value_main.33:                                         #
        movq      %rbp, %rsp                                    #286.10 c7
        popq      %rbp                                          #286.10
..___tag_value_main.34:                                         #
        ret                                                     #286.10
..___tag_value_main.36:                                         #
                                # LOE
..B1.36:                        # Preds ..B1.7                  # Infreq
        movl      $.L_2__STRING.5, %edi                         #218.3 c1
        movl      $.L_2__STRING.2, %esi                         #218.3 c1
        movl      $218, %edx                                    #218.3 c3
        movl      $__$U1, %ecx                                  #218.3 c3
#       __assert_fail(const char *, const char *, unsigned int, const char *)
        call      __assert_fail                                 #218.3 c5
                                # LOE
..B1.37:                        # Preds ..B1.6                  # Infreq
        movl      $.L_2__STRING.4, %edi                         #217.3 c1
        movl      $.L_2__STRING.2, %esi                         #217.3 c1
        movl      $217, %edx                                    #217.3 c3
        movl      $__$U1, %ecx                                  #217.3 c3
#       __assert_fail(const char *, const char *, unsigned int, const char *)
        call      __assert_fail                                 #217.3 c5
                                # LOE
..B1.38:                        # Preds ..B1.5                  # Infreq
        movl      $.L_2__STRING.3, %edi                         #216.3 c1
        movl      $.L_2__STRING.2, %esi                         #216.3 c1
        movl      $216, %edx                                    #216.3 c3
        movl      $__$U1, %ecx                                  #216.3 c3
#       __assert_fail(const char *, const char *, unsigned int, const char *)
        call      __assert_fail                                 #216.3 c5
        .align    16,0x90
..___tag_value_main.43:                                         #
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
	.align 4
	.align 4
.2.13_2_kmpc_loc_struct_pack.71:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.13_2__kmpc_loc_pack.70
	.align 4
.2.13_2__kmpc_loc_pack.70:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	50
	.byte	48
	.byte	52
	.byte	59
	.byte	50
	.byte	48
	.byte	52
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.13_2_kmpc_loc_struct_pack.82:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.13_2__kmpc_loc_pack.81
	.align 4
.2.13_2__kmpc_loc_pack.81:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	50
	.byte	56
	.byte	54
	.byte	59
	.byte	50
	.byte	56
	.byte	54
	.byte	59
	.byte	59
	.data
# -- End  main
	.text
# -- Begin  diffusion_baseline
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl diffusion_baseline
# --- diffusion_baseline(double *__restrict__, double *__restrict__, int, int, int, double, double, double, double, double, double, double, double, int)
diffusion_baseline:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %ecx
# parameter 5: %r8d
# parameter 6: %xmm0
# parameter 7: %xmm1
# parameter 8: %xmm2
# parameter 9: %xmm3
# parameter 10: %xmm4
# parameter 11: %xmm5
# parameter 12: %xmm6
# parameter 13: %xmm7
# parameter 14: %r9d
..B2.1:                         # Preds ..B2.0
..___tag_value_diffusion_baseline.44:                           #103.31
..L45:
                                                         #103.31
        subq      $200, %rsp                                    #103.31 c1
..___tag_value_diffusion_baseline.46:                           #
        movq      %rsi, %r10                                    #103.31 c1
        xorl      %esi, %esi                                    #105.3 c3
        testl     %r9d, %r9d                                    #105.19 c3
        jle       ..B2.3        # Prob 9%                       #105.19 c5
                                # LOE rbx rbp rdi r10 r12 r13 r14 r15 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.2:                         # Preds ..B2.1
        testl     %r8d, %r8d                                    #106.25 c1
        jg        ..B2.4        # Prob 50%                      #106.25 c3
                                # LOE rbx rbp rdi r10 r12 r13 r14 r15 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.3:                         # Preds ..B2.72 ..B2.86 ..B2.84 ..B2.1 ..B2.2
                                #      
        addq      $200, %rsp                                    #187.3 c1
..___tag_value_diffusion_baseline.47:                           #
        ret                                                     #187.3 c3
..___tag_value_diffusion_baseline.48:                           #
                                # LOE
..B2.4:                         # Preds ..B2.2
        testl     %ecx, %ecx                                    #107.27 c1
        jg        ..B2.34       # Prob 50%                      #107.27 c3
                                # LOE rbx rbp rdi r10 r12 r13 r14 r15 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.5:                         # Preds ..B2.4
        movq      %r12, 8(%rsp)                                 # c1
        movq      %r13, 16(%rsp)                                # c1
        movq      %r14, 40(%rsp)                                # c3
        movq      %r15, 48(%rsp)                                # c3
        movq      %rbx, 56(%rsp)                                # c5
..___tag_value_diffusion_baseline.49:                           #
                                # LOE rbp rdi r10 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.6:                         # Preds ..B2.79 ..B2.5 ..B2.83
        xorl      %eax, %eax                                    #106.5 c1
        cmpl      $2, %r8d                                      #106.5 c1
        jl        ..B2.83       # Prob 10%                      #106.5 c3
                                # LOE rbp rdi r10 eax edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.8:                         # Preds ..B2.6 ..B2.92 ..B2.9
        addl      $1, %eax                                      #106.5 c1
        lea       -1(%r8), %ebx                                 #103.31 c1
        cmpl      %ebx, %eax                                    #106.5 c3
        jae       ..B2.78       # Prob 18%                      #106.5 c5
                                # LOE rbp rdi r10 eax edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.9:                         # Preds ..B2.8
        testl     %ecx, %ecx                                    #107.27 c1
        jle       ..B2.8        # Prob 50%                      #107.27 c3
                                # LOE rbp rdi r10 eax edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.10:                        # Preds ..B2.9
        movl      %esi, 32(%rsp)                                # c1
        movq      %r10, 128(%rsp)                               # c1
        movq      %rdi, 168(%rsp)                               # c3
        movl      %eax, 112(%rsp)                               # c3
        movl      %r9d, 24(%rsp)                                # c5
                                # LOE rax rbp eax edx ecx r8d al ah xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.11:                        # Preds ..B2.10 ..B2.60
        xorl      %esi, %esi                                    #108.29 c1
        xorl      %ebx, %ebx                                    #108.29 c1
        testl     %edx, %edx                                    #108.29 c3
        jle       ..B2.76       # Prob 10%                      #108.29 c5
                                # LOE rax rbp eax edx ecx ebx esi r8d al ah xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.12:                        # Preds ..B2.11
        movl      %ecx, %r10d                                   #113.34 c1
        movl      %edx, 120(%rsp)                               #103.31 c1
        lea       3(%rdx), %r12d                                #103.31 c1
        movl      %r8d, 144(%rsp)                               #103.31 c3
        imull     %edx, %r10d                                   #113.34 c3
        sarl      $1, %r12d                                     #103.31 c3
        lea       -2(%r8), %r13d                                #119.24 c3
        movl      %r13d, 176(%rsp)                              #103.31 c5
        shrl      $30, %r12d                                    #103.31 c5
        vpxord    %zmm7, %zmm7, %zmm7                           #122.19 c5
        vmovups   .L_2il0floatpacket.21(%rip), %zmm19           #125.18 c5
        imull     %r10d, %eax                                   #113.11 c7
        lea       3(%rdx,%r12), %r12d                           #103.31 c7
        sarl      $2, %r12d                                     #103.31 c9
        movl      %r12d, 184(%rsp)                              #103.31 c11
        lea       (%r10,%rax), %edi                             #113.11 c11
        lea       (%rax,%r10,2), %r9d                           #113.11 c13
        addl      %edx, %r10d                                   #117.37 c13
        vbroadcastsd %xmm6, %zmm8                               #127.16 c13
        vmovups   .L_2il0floatpacket.23(%rip), %zmm9            #135.22 c15
        addl      %eax, %r10d                                   #113.11 c15
        vbroadcastsd %xmm1, %zmm10                              #138.16 c19 stall 1
        vmovups   .L_2il0floatpacket.24(%rip), %zmm11           #146.22 c21
        vbroadcastsd %xmm0, %zmm12                              #149.16 c25 stall 1
        vbroadcastsd %xmm3, %zmm13                              #156.16 c27
        vbroadcastsd %xmm2, %zmm14                              #162.16 c31 stall 1
        vbroadcastsd %xmm5, %zmm15                              #168.16 c33
        vbroadcastsd %xmm4, %zmm16                              #174.16 c37 stall 1
        vmovups   .L_2il0floatpacket.25(%rip), %zmm17           #144.22 c39
        vmovups   .L_2il0floatpacket.22(%rip), %zmm18           #133.22 c43 stall 1
        lea       -4(%rdx), %r11d                               #143.24 c45
        movq      128(%rsp), %r8                                #103.31 c47
        movq      168(%rsp), %rdx                               #103.31 c49
                                # LOE rdx rbp r8 eax ecx ebx esi edi r9d r10d r11d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.13:                        # Preds ..B2.19 ..B2.12
        lea       (%rdi,%rbx), %r13d                            #113.11 c1
        vpxord    %zmm21, %zmm21, %zmm21                        #126.16 c1
        kxnorw    %k1, %k1, %k1                                 #126.16 c1
        movslq    %r13d, %r12                                   #126.16 c3
        lea       (%rdx,%r12,8), %r14                           #126.16 c5
        vgatherqpd (%r14,%zmm19,8), %zmm21{%k1}                 #126.16 c7
        vfmadd213pd %zmm7, %zmm8, %zmm21                        #128.19 c13 stall 2
        testl     %ebx, %ebx                                    #132.20 c13
        jne       ..B2.15       # Prob 50%                      #132.20 c15
                                # LOE rdx rbp r8 r12 r14 eax ecx ebx esi edi r9d r10d r11d r13d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm21
..B2.14:                        # Preds ..B2.13
        vmovaps   %zmm18, %zmm20                                #133.22 c1
        jmp       ..B2.16       # Prob 100%                     #133.22 c1
                                # LOE rdx rbp r8 r12 r14 eax ecx ebx esi edi r9d r10d r11d r13d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21
..B2.15:                        # Preds ..B2.13
        vmovaps   %zmm9, %zmm20                                 #135.22 c1
                                # LOE rdx rbp r8 r12 r14 eax ecx ebx esi edi r9d r10d r11d r13d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21
..B2.16:                        # Preds ..B2.14 ..B2.15
        vpxord    %zmm22, %zmm22, %zmm22                        #137.16 c1
        kxnorw    %k1, %k1, %k1                                 #137.16 c1
        vgatherqpd (%r14,%zmm20,8), %zmm22{%k1}                 #137.16 c3
        vfmadd213pd %zmm21, %zmm10, %zmm22                      #139.19 c9 stall 2
        cmpl      %r11d, %ebx                                   #143.24 c9
        jl        ..B2.18       # Prob 50%                      #143.24 c11
                                # LOE rdx rbp r8 r12 r14 eax ecx ebx esi edi r9d r10d r11d r13d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm22
..B2.17:                        # Preds ..B2.16
        vmovaps   %zmm17, %zmm20                                #144.22 c1
        jmp       ..B2.19       # Prob 100%                     #144.22 c1
                                # LOE rdx rbp r8 r12 r14 eax ecx ebx esi edi r9d r10d r11d r13d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm22
..B2.18:                        # Preds ..B2.16
        vmovaps   %zmm11, %zmm20                                #146.22 c1
                                # LOE rdx rbp r8 r12 r14 eax ecx ebx esi edi r9d r10d r11d r13d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm22
..B2.19:                        # Preds ..B2.17 ..B2.18
        vpxord    %zmm21, %zmm21, %zmm21                        #148.16 c1
        kxnorw    %k1, %k1, %k1                                 #148.16 c1
        lea       (%r10,%rbx), %r15d                            #155.16 c1
        cmpl      $1, %ecx                                      #155.16 c1
        vpxord    %zmm23, %zmm23, %zmm23                        #167.16 c1
        cmove     %r13d, %r15d                                  #155.16 c3
        kxnorw    %k2, %k2, %k2                                 #155.16 c3
        vpxord    %zmm24, %zmm24, %zmm24                        #173.16 c3
        vgatherqpd (%r14,%zmm20,8), %zmm21{%k1}                 #148.16 c3
        vpxord    %zmm20, %zmm20, %zmm20                        #155.16 c3
        movslq    %r15d, %r15                                   #155.16 c5
        kxnorw    %k3, %k3, %k3                                 #161.16 c5
        lea       (%rdx,%r15,8), %r15                           #155.16 c7
        kxnorw    %k4, %k4, %k4                                 #167.16 c7
        kxnorw    %k5, %k5, %k5                                 #173.16 c7
        vfmadd213pd %zmm22, %zmm12, %zmm21                      #150.19 c9
        vpxord    %zmm22, %zmm22, %zmm22                        #161.16 c9
        addl      $1, %esi                                      #108.9 c9
        vgatherqpd (%r15,%zmm19,8), %zmm20{%k2}                 #155.16 c9
        vgatherqpd (%r14,%zmm19,8), %zmm22{%k3}                 #161.16 c11
        lea       (%rax,%rbx), %r14d                            #167.16 c15 stall 1
        vfmadd213pd %zmm21, %zmm13, %zmm20                      #157.19 c15
        movslq    %r14d, %r14                                   #167.16 c17
        lea       (%rdx,%r14,8), %r15                           #167.16 c19
        movl      112(%rsp), %r14d                              #173.16 c19
        vfmadd213pd %zmm20, %zmm14, %zmm22                      #163.19 c21
        vgatherqpd (%r15,%zmm19,8), %zmm23{%k4}                 #167.16 c21
        lea       (%rbx,%r9), %r15d                             #173.16 c23
        addl      $4, %ebx                                      #108.9 c23
        cmpl      176(%rsp), %r14d                              #173.16 c25
        cmove     %r13d, %r15d                                  #173.16 c27
        vfmadd213pd %zmm22, %zmm15, %zmm23                      #169.19 c27
        movslq    %r15d, %r15                                   #173.16 c29
        lea       (%rdx,%r15,8), %r13                           #173.16 c31
        vgatherqpd (%r13,%zmm19,8), %zmm24{%k5}                 #173.16 c33
        vfmadd213pd %zmm23, %zmm16, %zmm24                      #175.19 c39 stall 2
        vmovups   %zmm24, (%r8,%r12,8)                          #179.27 c45 stall 2
        cmpl      184(%rsp), %esi                               #108.9 c45
        jb        ..B2.13       # Prob 82%                      #108.9 c47
                                # LOE rdx rbp r8 eax ecx ebx esi edi r9d r10d r11d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.20:                        # Preds ..B2.19
        movq      %r8, 128(%rsp)                                # c1
        movl      144(%rsp), %r8d                               # c1
        movq      %rdx, 168(%rsp)                               # c3
        movl      120(%rsp), %edx                               # c5
        cmpl      $2, %ecx                                      #107.7 c5
        jl        ..B2.92       # Prob 10%                      #107.7 c7
                                # LOE rdx rbp r8 edx ecx r8d dl dh r8b xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.21:                        # Preds ..B2.89 ..B2.20
        movl      %ecx, %r12d                                   #119.43 c1
        movl      %ecx, (%rsp)                                  #103.31 c1
        movl      112(%rsp), %edi                               #113.11 c1
        movl      %r8d, 144(%rsp)                               #103.31 c3
        imull     %edx, %r12d                                   #119.43 c3
        xorl      %esi, %esi                                    #122.19 c3
        lea       3(%rdx), %r15d                                #103.31 c5
        lea       -2(%rcx), %r14d                               #117.24 c5
        movl      %r14d, 88(%rsp)                               #103.31 c7
        sarl      $1, %r15d                                     #103.31 c7
        imull     %r12d, %edi                                   #113.11 c7
        lea       (%rdx,%r12), %eax                             #113.11 c7
        shrl      $30, %r15d                                    #103.31 c9
        lea       (%r12,%rdx,2), %r10d                          #113.11 c9
        lea       -2(%r8), %r13d                                #119.24 c9
        movl      %r13d, 104(%rsp)                              #103.31 c11
        lea       3(%rdx,%r15), %r15d                           #103.31 c11
        addl      %edi, %r10d                                   #113.11 c11
        lea       (%rax,%rdi), %r11d                            #113.11 c13
        addl      %r12d, %eax                                   #113.11 c13
        sarl      $2, %r15d                                     #103.31 c13
        movl      %r15d, 96(%rsp)                               #103.31 c15
        lea       -1(%rcx), %ebx                                #103.31 c15
        addl      %edi, %eax                                    #113.11 c15
        lea       (%rdx,%rdi), %r9d                             #113.11 c17
        addl      %r12d, %edi                                   #113.11 c17
        lea       -4(%rdx), %r12d                               #143.24 c17
        movq      128(%rsp), %r8                                #103.31 c19
        movq      168(%rsp), %rcx                               #103.31 c19
                                # LOE rcx rbp r8 eax edx ebx esi edi r9d r10d r11d r12d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.22:                        # Preds ..B2.32 ..B2.21
        xorl      %r14d, %r14d                                  #108.29 c1
        xorl      %r13d, %r13d                                  #108.29 c1
        testl     %edx, %edx                                    #108.29 c3
        jle       ..B2.32       # Prob 10%                      #108.29 c5
                                # LOE rcx rbp r8 eax edx ebx esi edi r9d r10d r11d r12d r13d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.23:                        # Preds ..B2.22
        movl      %r9d, 160(%rsp)                               # c1
        movl      %ebx, 152(%rsp)                               # c1
        movl      %edx, 120(%rsp)                               # c3
                                # LOE rcx rbp r8 eax esi edi r10d r11d r12d r13d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.24:                        # Preds ..B2.30 ..B2.23
        lea       (%r11,%r13), %ebx                             #113.11 c1
        vpxord    %zmm21, %zmm21, %zmm21                        #126.16 c1
        kxnorw    %k1, %k1, %k1                                 #126.16 c1
        movslq    %ebx, %rdx                                    #126.16 c3
        lea       (%rcx,%rdx,8), %r9                            #126.16 c5
        vgatherqpd (%r9,%zmm19,8), %zmm21{%k1}                  #126.16 c7
        vfmadd213pd %zmm7, %zmm8, %zmm21                        #128.19 c13 stall 2
        testl     %r13d, %r13d                                  #132.20 c13
        jne       ..B2.26       # Prob 50%                      #132.20 c15
                                # LOE rdx rcx rbp r8 r9 eax ebx esi edi r10d r11d r12d r13d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm21
..B2.25:                        # Preds ..B2.24
        vmovaps   %zmm18, %zmm20                                #133.22 c1
        jmp       ..B2.27       # Prob 100%                     #133.22 c1
                                # LOE rdx rcx rbp r8 r9 eax ebx esi edi r10d r11d r12d r13d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21
..B2.26:                        # Preds ..B2.24
        vmovaps   %zmm9, %zmm20                                 #135.22 c1
                                # LOE rdx rcx rbp r8 r9 eax ebx esi edi r10d r11d r12d r13d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21
..B2.27:                        # Preds ..B2.25 ..B2.26
        vpxord    %zmm22, %zmm22, %zmm22                        #137.16 c1
        kxnorw    %k1, %k1, %k1                                 #137.16 c1
        vgatherqpd (%r9,%zmm20,8), %zmm22{%k1}                  #137.16 c3
        vfmadd213pd %zmm21, %zmm10, %zmm22                      #139.19 c9 stall 2
        cmpl      %r12d, %r13d                                  #143.24 c9
        jl        ..B2.29       # Prob 50%                      #143.24 c11
                                # LOE rdx rcx rbp r8 r9 eax ebx esi edi r10d r11d r12d r13d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm22
..B2.28:                        # Preds ..B2.27
        vmovaps   %zmm17, %zmm20                                #144.22 c1
        jmp       ..B2.30       # Prob 100%                     #144.22 c1
                                # LOE rdx rcx rbp r8 r9 eax ebx esi edi r10d r11d r12d r13d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm22
..B2.29:                        # Preds ..B2.27
        vmovaps   %zmm11, %zmm20                                #146.22 c1
                                # LOE rdx rcx rbp r8 r9 eax ebx esi edi r10d r11d r12d r13d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm22
..B2.30:                        # Preds ..B2.28 ..B2.29
        vpxord    %zmm21, %zmm21, %zmm21                        #148.16 c1
        kxnorw    %k1, %k1, %k1                                 #148.16 c1
        cmpl      88(%rsp), %esi                                #155.16 c1
        kxnorw    %k2, %k2, %k2                                 #155.16 c1
        vpxord    %zmm23, %zmm23, %zmm23                        #167.16 c1
        kxnorw    %k3, %k3, %k3                                 #161.16 c3
        kxnorw    %k4, %k4, %k4                                 #167.16 c3
        vpxord    %zmm24, %zmm24, %zmm24                        #173.16 c3
        vgatherqpd (%r9,%zmm20,8), %zmm21{%k1}                  #148.16 c3
        lea       (%r10,%r13), %r9d                             #155.16 c3
        vpxord    %zmm20, %zmm20, %zmm20                        #155.16 c3
        cmove     %ebx, %r9d                                    #155.16 c5
        kxnorw    %k5, %k5, %k5                                 #173.16 c5
        movslq    %r9d, %r9                                     #155.16 c7
        addl      $1, %r14d                                     #108.9 c7
        lea       (%rcx,%r9,8), %r15                            #155.16 c9
        lea       (%r13,%rdi), %r9d                             #161.16 c9
        vfmadd213pd %zmm22, %zmm12, %zmm21                      #150.19 c9
        vpxord    %zmm22, %zmm22, %zmm22                        #161.16 c9
        movslq    %r9d, %r9                                     #161.16 c11
        vgatherqpd (%r15,%zmm19,8), %zmm20{%k2}                 #155.16 c11
        lea       (%rcx,%r9,8), %r15                            #161.16 c13
        movl      160(%rsp), %r9d                               #167.16 c15
        vfmadd213pd %zmm21, %zmm13, %zmm20                      #157.19 c17
        vgatherqpd (%r15,%zmm19,8), %zmm22{%k3}                 #161.16 c17
        lea       (%r13,%r9), %r15d                             #167.16 c19
        movslq    %r15d, %r15                                   #167.16 c21
        lea       (%rcx,%r15,8), %r9                            #167.16 c23
        lea       (%r13,%rax), %r15d                            #173.16 c23
        vfmadd213pd %zmm20, %zmm14, %zmm22                      #163.19 c23
        addl      $4, %r13d                                     #108.9 c23
        vgatherqpd (%r9,%zmm19,8), %zmm23{%k4}                  #167.16 c25
        movl      112(%rsp), %r9d                               #173.16 c25
        cmpl      104(%rsp), %r9d                               #173.16 c29 stall 1
        cmove     %ebx, %r15d                                   #173.16 c31
        vfmadd213pd %zmm22, %zmm15, %zmm23                      #169.19 c31
        movslq    %r15d, %r15                                   #173.16 c33
        lea       (%rcx,%r15,8), %rbx                           #173.16 c35
        vgatherqpd (%rbx,%zmm19,8), %zmm24{%k5}                 #173.16 c37
        vfmadd213pd %zmm23, %zmm16, %zmm24                      #175.19 c43 stall 2
        vmovups   %zmm24, (%r8,%rdx,8)                          #179.27 c49 stall 2
        cmpl      96(%rsp), %r14d                               #108.9 c49
        jb        ..B2.24       # Prob 82%                      #108.9 c51
                                # LOE rcx rbp r8 eax esi edi r10d r11d r12d r13d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.31:                        # Preds ..B2.30
        movl      160(%rsp), %r9d                               # c1
        movl      152(%rsp), %ebx                               # c1
        movl      120(%rsp), %edx                               # c5 stall 1
                                # LOE rcx rbp r8 eax edx ebx esi edi r9d r10d r11d r12d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.32:                        # Preds ..B2.31 ..B2.22
        addl      $1, %esi                                      #107.7 c1
        addl      %edx, %edi                                    #107.7 c1
        addl      %edx, %r11d                                   #107.7 c3
        addl      %edx, %r9d                                    #107.7 c3
        addl      %edx, %eax                                    #107.7 c5
        addl      %edx, %r10d                                   #107.7 c5
        cmpl      %ebx, %esi                                    #107.7 c7
        jb        ..B2.22       # Prob 82%                      #107.7 c9
                                # LOE rcx rbp r8 eax edx ebx esi edi r9d r10d r11d r12d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.33:                        # Preds ..B2.32
        movq      %r8, 128(%rsp)                                # c1
        movl      144(%rsp), %r8d                               # c1
        movq      %rcx, 168(%rsp)                               # c3
        movl      (%rsp), %ecx                                  # c5
        jmp       ..B2.92       # Prob 100%                     # c5
..___tag_value_diffusion_baseline.54:                           #
                                # LOE rbp edx ecx r8d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.34:                        # Preds ..B2.4
        movq      %r14, 40(%rsp)                                # c1
        movq      %r15, 48(%rsp)                                # c1
        movq      %rbx, 56(%rsp)                                # c3
..___tag_value_diffusion_baseline.59:                           #
                                # LOE rbp rdi r10 r12 r13 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.35:                        # Preds ..B2.80 ..B2.34
        xorl      %eax, %eax                                    #108.9 c1
        testl     %edx, %edx                                    #108.29 c1
        jle       ..B2.85       # Prob 10%                      #108.29 c3
                                # LOE rbp rdi r10 r12 r13 eax edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.36:                        # Preds ..B2.35
        vpxord    %zmm14, %zmm14, %zmm14                        #122.19 c1
        vmovups   .L_2il0floatpacket.21(%rip), %zmm15           #122.19 c1
        vbroadcastsd %xmm6, %zmm7                               #122.19 c1
        vbroadcastsd %xmm1, %zmm8                               #122.19 c7 stall 2
        vbroadcastsd %xmm0, %zmm9                               #122.19 c7
        vbroadcastsd %xmm3, %zmm10                              #122.19 c13 stall 2
        vbroadcastsd %xmm2, %zmm11                              #122.19 c13
        vbroadcastsd %xmm5, %zmm12                              #122.19 c19 stall 2
        vbroadcastsd %xmm4, %zmm13                              #122.19 c19
                                # LOE rbp rdi r10 r12 r13 eax edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
..B2.37:                        # Preds ..B2.63 ..B2.71 ..B2.43 ..B2.36
        lea       (,%rax,4), %ebx                               #113.11 c1
        vpxord    %zmm17, %zmm17, %zmm17                        #126.16 c1
        kxnorw    %k1, %k1, %k1                                 #126.16 c1
        movslq    %ebx, %r11                                    #126.16 c3
        lea       (%rdi,%r11,8), %r15                           #126.16 c5
        vgatherqpd (%r15,%zmm15,8), %zmm17{%k1}                 #126.16 c7
        vfmadd213pd %zmm14, %zmm7, %zmm17                       #128.19 c13 stall 2
        testl     %ebx, %ebx                                    #132.20 c13
        jne       ..B2.39       # Prob 50%                      #132.20 c15
                                # LOE rbp rdi r10 r11 r12 r13 r15 eax edx ecx ebx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm17
..B2.38:                        # Preds ..B2.37
        vmovups   .L_2il0floatpacket.22(%rip), %zmm16           #133.22 c1
        jmp       ..B2.40       # Prob 100%                     #133.22 c1
                                # LOE rbp rdi r10 r11 r12 r13 r15 eax edx ecx ebx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17
..B2.39:                        # Preds ..B2.37
        vmovups   .L_2il0floatpacket.23(%rip), %zmm16           #135.22 c1
                                # LOE rbp rdi r10 r11 r12 r13 r15 eax edx ecx ebx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17
..B2.40:                        # Preds ..B2.38 ..B2.39
        vpxord    %zmm18, %zmm18, %zmm18                        #137.16 c1
        kxnorw    %k1, %k1, %k1                                 #137.16 c1
        lea       -4(%rdx), %r14d                               #143.24 c1
        vgatherqpd (%r15,%zmm16,8), %zmm18{%k1}                 #137.16 c5 stall 1
        vfmadd213pd %zmm17, %zmm8, %zmm18                       #139.19 c11 stall 2
        cmpl      %r14d, %ebx                                   #143.24 c11
        jl        ..B2.42       # Prob 50%                      #143.24 c13
                                # LOE rbp rdi r10 r11 r12 r13 r15 eax edx ecx ebx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm18
..B2.41:                        # Preds ..B2.40
        vmovups   .L_2il0floatpacket.25(%rip), %zmm16           #144.22 c1
        jmp       ..B2.43       # Prob 100%                     #144.22 c1
                                # LOE rbp rdi r10 r11 r12 r13 r15 eax edx ecx ebx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18
..B2.42:                        # Preds ..B2.40
        vmovups   .L_2il0floatpacket.24(%rip), %zmm16           #146.22 c1
                                # LOE rbp rdi r10 r11 r12 r13 r15 eax edx ecx ebx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18
..B2.43:                        # Preds ..B2.41 ..B2.42
        vpxord    %zmm17, %zmm17, %zmm17                        #148.16 c1
        kxnorw    %k1, %k1, %k1                                 #148.16 c1
        cmpl      $1, %ecx                                      #155.16 c1
        lea       (%rdx,%rax,4), %r14d                          #155.16 c1
        vpxord    %zmm19, %zmm19, %zmm19                        #167.16 c1
        cmove     %ebx, %r14d                                   #155.16 c3
        kxnorw    %k2, %k2, %k2                                 #161.16 c3
        vpxord    %zmm20, %zmm20, %zmm20                        #173.16 c3
        kxnorw    %k3, %k3, %k3                                 #167.16 c5
        movslq    %r14d, %r14                                   #155.16 c5
        vgatherqpd (%r15,%zmm16,8), %zmm17{%k1}                 #148.16 c5
        vpxord    %zmm16, %zmm16, %zmm16                        #155.16 c5
        kxnorw    %k4, %k4, %k4                                 #155.16 c7
        kxnorw    %k5, %k5, %k5                                 #173.16 c7
        vgatherqpd (%r15,%zmm15,8), %zmm19{%k3}                 #167.16 c7
        vfmadd213pd %zmm18, %zmm9, %zmm17                       #150.19 c11 stall 1
        vpxord    %zmm18, %zmm18, %zmm18                        #161.16 c11
        vgatherqpd (%r15,%zmm15,8), %zmm18{%k2}                 #161.16 c13
        lea       (%rdi,%r14,8), %r15                           #155.16 c13
        movl      %ecx, %r14d                                   #173.16 c13
        imull     %edx, %r14d                                   #173.16 c15
        cmpl      $1, %r8d                                      #173.16 c15
        vgatherqpd (%r15,%zmm15,8), %zmm16{%k4}                 #155.16 c15
        lea       (%r14,%rax,4), %r15d                          #173.16 c19 stall 1
        vfmadd213pd %zmm17, %zmm10, %zmm16                      #157.19 c21
        cmove     %ebx, %r15d                                   #173.16 c21
        addl      $1, %eax                                      #108.9 c21
        movslq    %r15d, %r15                                   #173.16 c23
        lea       (%rdi,%r15,8), %rbx                           #173.16 c25
        vfmadd213pd %zmm16, %zmm11, %zmm18                      #163.19 c27
        vgatherqpd (%rbx,%zmm15,8), %zmm20{%k5}                 #173.16 c27
        vfmadd213pd %zmm18, %zmm12, %zmm19                      #169.19 c33 stall 2
        vfmadd213pd %zmm19, %zmm13, %zmm20                      #175.19 c39 stall 2
        vmovups   %zmm20, (%r10,%r11,8)                         #179.27 c45 stall 2
        lea       3(%rdx), %r11d                                #103.31 c45
        sarl      $1, %r11d                                     #103.31 c47
        shrl      $30, %r11d                                    #103.31 c49
        lea       3(%r11,%rdx), %ebx                            #103.31 c51
        sarl      $2, %ebx                                      #103.31 c53
        cmpl      %ebx, %eax                                    #108.9 c55
        jb        ..B2.37       # Prob 82%                      #108.9 c57
                                # LOE rbp rdi r10 r12 r13 eax edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
..B2.44:                        # Preds ..B2.43                 # Infreq
        cmpl      $2, %ecx                                      #107.7 c1
        jl        ..B2.66       # Prob 10%                      #107.7 c3
                                # LOE rbp rdi r10 r12 r13 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
..B2.45:                        # Preds ..B2.44                 # Infreq
        movl      %esi, 32(%rsp)                                # c1
        movq      %r10, 128(%rsp)                               # c1
        movl      %ecx, (%rsp)                                  # c3
        movl      %r9d, 24(%rsp)                                # c3
        movq      %r12, 8(%rsp)                                 # c5
        movq      %r13, 16(%rsp)                                # c5
..___tag_value_diffusion_baseline.62:                           #
                                # LOE rbp rdi edx r8d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
..B2.46:                        # Preds ..B2.90 ..B2.45         # Infreq
        movl      (%rsp), %r11d                                 #103.31 c1
        lea       3(%rdx), %eax                                 #103.31 c1
        xorl      %esi, %esi                                    #122.19 c1
        xorl      %r14d, %r14d                                  #122.19 c1
        sarl      $1, %eax                                      #103.31 c3
        movq      128(%rsp), %rbx                               #179.27 c3
        lea       -1(%r11), %r9d                                #103.31 c5
        shrl      $30, %eax                                     #103.31 c5
        lea       -2(%r11), %ecx                                #117.24 c7
        movl      %ecx, 64(%rsp)                                #122.19 c9
        imull     %edx, %r11d                                   #119.43 c9
        lea       (%rdx,%rdx), %r10d                            #117.37 c9
        lea       -4(%rdx), %r12d                               #143.24 c11
        lea       3(%rdx,%rax), %eax                            #103.31 c11
        addl      %edx, %r11d                                   #119.43 c13
        movslq    %edx, %rdx                                    #126.16 c13
        vmovups   .L_2il0floatpacket.23(%rip), %zmm19           #135.22 c13
        vmovups   .L_2il0floatpacket.24(%rip), %zmm18           #146.22 c13
        sarl      $2, %eax                                      #103.31 c15
        movl      %eax, 72(%rsp)                                #122.19 c19 stall 1
        lea       (%rbx,%rdx,8), %r15                           #179.27 c19
        movq      %r15, 80(%rsp)                                #122.19 c21
        vmovups   .L_2il0floatpacket.25(%rip), %zmm17           #144.22 c21
        movl      %edx, %ebx                                    #122.19 c21
        vmovups   .L_2il0floatpacket.22(%rip), %zmm16           #133.22 c23
        lea       (%rdi,%rdx,8), %r13                           #126.16 c27 stall 1
                                # LOE rbp rdi r13 edx ebx esi r8d r9d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.47:                        # Preds ..B2.57 ..B2.46         # Infreq
        xorl      %ecx, %ecx                                    #108.29 c1
        xorl      %eax, %eax                                    #108.29 c1
        testl     %edx, %edx                                    #108.29 c3
        jle       ..B2.57       # Prob 10%                      #108.29 c5
                                # LOE rbp rdi r13 eax edx ecx ebx esi r8d r9d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.48:                        # Preds ..B2.47                 # Infreq
        movl      %r9d, 136(%rsp)                               # c1
        movl      %edx, 120(%rsp)                               # c1
                                # LOE rbp rdi r13 eax ecx ebx esi r8d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.49:                        # Preds ..B2.55 ..B2.48         # Infreq
        lea       (%rax,%r14), %edx                             #113.11 c1
        vpxord    %zmm21, %zmm21, %zmm21                        #126.16 c1
        kxnorw    %k1, %k1, %k1                                 #126.16 c1
        lea       (%rbx,%rax), %r9d                             #113.11 c1
        movslq    %edx, %rdx                                    #126.16 c3
        lea       (%r13,%rdx,8), %r15                           #126.16 c5
        vgatherqpd (%r15,%zmm15,8), %zmm21{%k1}                 #126.16 c7
        vfmadd213pd %zmm14, %zmm7, %zmm21                       #128.19 c13 stall 2
        testl     %eax, %eax                                    #132.20 c13
        jne       ..B2.51       # Prob 50%                      #132.20 c15
                                # LOE rdx rbp rdi r13 r15 eax ecx ebx esi r8d r9d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm21
..B2.50:                        # Preds ..B2.49                 # Infreq
        vmovaps   %zmm16, %zmm20                                #133.22 c1
        jmp       ..B2.52       # Prob 100%                     #133.22 c1
                                # LOE rdx rbp rdi r13 r15 eax ecx ebx esi r8d r9d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21
..B2.51:                        # Preds ..B2.49                 # Infreq
        vmovaps   %zmm19, %zmm20                                #135.22 c1
                                # LOE rdx rbp rdi r13 r15 eax ecx ebx esi r8d r9d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21
..B2.52:                        # Preds ..B2.50 ..B2.51         # Infreq
        vpxord    %zmm22, %zmm22, %zmm22                        #137.16 c1
        kxnorw    %k1, %k1, %k1                                 #137.16 c1
        vgatherqpd (%r15,%zmm20,8), %zmm22{%k1}                 #137.16 c3
        vfmadd213pd %zmm21, %zmm8, %zmm22                       #139.19 c9 stall 2
        cmpl      %r12d, %eax                                   #143.24 c9
        jl        ..B2.54       # Prob 50%                      #143.24 c11
                                # LOE rdx rbp rdi r13 r15 eax ecx ebx esi r8d r9d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm22
..B2.53:                        # Preds ..B2.52                 # Infreq
        vmovaps   %zmm17, %zmm20                                #144.22 c1
        jmp       ..B2.55       # Prob 100%                     #144.22 c1
                                # LOE rdx rbp rdi r13 r15 eax ecx ebx esi r8d r9d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm22
..B2.54:                        # Preds ..B2.52                 # Infreq
        vmovaps   %zmm18, %zmm20                                #146.22 c1
                                # LOE rdx rbp rdi r13 r15 eax ecx ebx esi r8d r9d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19 zmm20 zmm22
..B2.55:                        # Preds ..B2.53 ..B2.54         # Infreq
        vpxord    %zmm21, %zmm21, %zmm21                        #148.16 c1
        kxnorw    %k1, %k1, %k1                                 #148.16 c1
        cmpl      64(%rsp), %esi                                #155.16 c1
        kxnorw    %k2, %k2, %k2                                 #155.16 c1
        vpxord    %zmm23, %zmm23, %zmm23                        #167.16 c1
        kxnorw    %k3, %k3, %k3                                 #161.16 c3
        kxnorw    %k4, %k4, %k4                                 #167.16 c3
        vpxord    %zmm24, %zmm24, %zmm24                        #173.16 c3
        vgatherqpd (%r15,%zmm20,8), %zmm21{%k1}                 #148.16 c3
        lea       (%r10,%rax), %r15d                            #155.16 c3
        vpxord    %zmm20, %zmm20, %zmm20                        #155.16 c3
        cmove     %r9d, %r15d                                   #155.16 c5
        movslq    %r9d, %r9                                     #167.16 c5
        movslq    %r15d, %r15                                   #155.16 c7
        cmpl      $1, %r8d                                      #173.16 c7
        lea       (%rdi,%r15,8), %r15                           #155.16 c9
        vfmadd213pd %zmm22, %zmm9, %zmm21                       #150.19 c9
        vpxord    %zmm22, %zmm22, %zmm22                        #161.16 c9
        kxnorw    %k5, %k5, %k5                                 #173.16 c9
        vgatherqpd (%r15,%zmm15,8), %zmm20{%k2}                 #155.16 c11
        lea       (%rdi,%rdx,8), %r15                           #161.16 c11
        vgatherqpd (%r15,%zmm15,8), %zmm22{%k3}                 #161.16 c13
        vfmadd213pd %zmm21, %zmm10, %zmm20                      #157.19 c17 stall 1
        lea       (%rdi,%r9,8), %r15                            #167.16 c17
        vgatherqpd (%r15,%zmm15,8), %zmm23{%k4}                 #167.16 c19
        lea       (%rax,%r11), %r15d                            #173.16 c19
        cmove     %r9d, %r15d                                   #173.16 c21
        addl      $1, %ecx                                      #108.9 c21
        vfmadd213pd %zmm20, %zmm11, %zmm22                      #163.19 c23
        movslq    %r15d, %r15                                   #173.16 c23
        addl      $4, %eax                                      #108.9 c23
        lea       (%rdi,%r15,8), %r9                            #173.16 c25
        vgatherqpd (%r9,%zmm15,8), %zmm24{%k5}                  #173.16 c27
        movq      80(%rsp), %r9                                 #179.27 c27
        vfmadd213pd %zmm22, %zmm12, %zmm23                      #169.19 c29
        vfmadd213pd %zmm23, %zmm13, %zmm24                      #175.19 c35 stall 2
        vmovups   %zmm24, (%r9,%rdx,8)                          #179.27 c41 stall 2
        cmpl      72(%rsp), %ecx                                #108.9 c41
        jb        ..B2.49       # Prob 82%                      #108.9 c43
                                # LOE rbp rdi r13 eax ecx ebx esi r8d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.56:                        # Preds ..B2.55                 # Infreq
        movl      136(%rsp), %r9d                               # c1
        movl      120(%rsp), %edx                               # c1
                                # LOE rbp rdi r13 edx ebx esi r8d r9d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.57:                        # Preds ..B2.56 ..B2.47         # Infreq
        addl      $1, %esi                                      #107.7 c1
        addl      %edx, %ebx                                    #107.7 c1
        addl      %edx, %r11d                                   #107.7 c3
        addl      %edx, %r10d                                   #107.7 c3
        addl      %edx, %r14d                                   #107.7 c5
        cmpl      %r9d, %esi                                    #107.7 c5
        jb        ..B2.47       # Prob 82%                      #107.7 c7
                                # LOE rbp rdi r13 edx ebx esi r8d r9d r10d r11d r12d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.58:                        # Preds ..B2.57                 # Infreq
        cmpl      $2, %r8d                                      #106.5 c1
        jl        ..B2.61       # Prob 10%                      #106.5 c3
                                # LOE rbp rdi edx r8d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
..B2.59:                        # Preds ..B2.58                 # Infreq
        movl      32(%rsp), %esi                                # c1
        movl      (%rsp), %ecx                                  # c1
        movl      24(%rsp), %r9d                                # c5 stall 1
        movq      8(%rsp), %r12                                 # c5
..___tag_value_diffusion_baseline.64:                           #
        movq      16(%rsp), %r13                                # c9 stall 1
..___tag_value_diffusion_baseline.65:                           #
        movq      128(%rsp), %r10                               # c9
                                # LOE rbp rdi r10 r12 r13 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.60:                        # Preds ..B2.66 ..B2.59         # Infreq
        xorl      %eax, %eax                                    #122.19 c1
        movl      %esi, 32(%rsp)                                #122.19 c1
        movq      %rdi, 168(%rsp)                               #122.19 c1
        movl      %eax, 112(%rsp)                               #122.19 c3
        movl      %r9d, 24(%rsp)                                #122.19 c3
        movq      %r10, 128(%rsp)                               #122.19 c5
        movq      %r12, 8(%rsp)                                 #122.19 c5
        movq      %r13, 16(%rsp)                                #122.19 c7
        jmp       ..B2.11       # Prob 100%                     #122.19 c7
..___tag_value_diffusion_baseline.66:                           #
                                # LOE rax rbp eax edx ecx r8d al ah xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.61:                        # Preds ..B2.58                 # Infreq
        movl      32(%rsp), %ecx                                #105.3 c1
        movq      %rdi, %rax                                    #183.15 c1
        movq      128(%rsp), %rdi                               #184.5 c1
        movq      %rax, 128(%rsp)                               #185.5 c5 stall 1
        addl      $1, %ecx                                      #105.3 c5
        movl      %ecx, 32(%rsp)                                #105.3 c7
        cmpl      24(%rsp), %ecx                                #105.3 c7
        jae       ..B2.84       # Prob 18%                      #105.3 c9
                                # LOE rcx rbp rdi edx ecx edi r8d cl ch dil xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
..B2.62:                        # Preds ..B2.61                 # Infreq
        xorl      %eax, %eax                                    #108.9 c1
        testl     %edx, %edx                                    #108.29 c1
        jle       ..B2.64       # Prob 10%                      #108.29 c3
                                # LOE rcx rbp rdi eax edx ecx edi r8d cl ch dil xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
..B2.63:                        # Preds ..B2.62                 # Infreq
        movl      %ecx, %esi                                    # c1
        movq      128(%rsp), %r10                               # c1
        movl      (%rsp), %ecx                                  # c1
        movl      24(%rsp), %r9d                                # c5 stall 1
        movq      8(%rsp), %r12                                 # c5
..___tag_value_diffusion_baseline.68:                           #
        movq      16(%rsp), %r13                                # c9 stall 1
..___tag_value_diffusion_baseline.69:                           #
        jmp       ..B2.37       # Prob 100%                     # c9 stall 1
..___tag_value_diffusion_baseline.70:                           #
                                # LOE rbp rdi r10 r12 r13 eax edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
..B2.64:                        # Preds ..B2.62 ..B2.85         # Infreq
        cmpl      $2, (%rsp)                                    #107.7 c1
        jl        ..B2.65       # Prob 10%                      #107.7 c3
                                # LOE rbp rdi edx r8d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.90:                        # Preds ..B2.64                 # Infreq
        vpxord    %zmm14, %zmm14, %zmm14                        #122.19 c1
        vmovups   .L_2il0floatpacket.21(%rip), %zmm15           #122.19 c1
        vbroadcastsd %xmm6, %zmm7                               #122.19 c1
        vbroadcastsd %xmm1, %zmm8                               #122.19 c7 stall 2
        vbroadcastsd %xmm0, %zmm9                               #122.19 c7
        vbroadcastsd %xmm3, %zmm10                              #122.19 c13 stall 2
        vbroadcastsd %xmm2, %zmm11                              #122.19 c13
        vbroadcastsd %xmm5, %zmm12                              #122.19 c19 stall 2
        vbroadcastsd %xmm4, %zmm13                              #122.19 c19
        jmp       ..B2.46       # Prob 100%                     #122.19 c19
                                # LOE rbp rdi edx r8d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
..B2.65:                        # Preds ..B2.64                 # Infreq
        movl      32(%rsp), %esi                                # c1
        movl      (%rsp), %ecx                                  # c1
        movl      24(%rsp), %r9d                                # c5 stall 1
        movq      8(%rsp), %r12                                 # c5
..___tag_value_diffusion_baseline.72:                           #
        movq      16(%rsp), %r13                                # c9 stall 1
..___tag_value_diffusion_baseline.73:                           #
        movq      128(%rsp), %r10                               # c9
                                # LOE rbp rdi r10 r12 r13 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.66:                        # Preds ..B2.44 ..B2.65         # Infreq
        cmpl      $2, %r8d                                      #106.5 c1
        jge       ..B2.60       # Prob 90%                      #106.5 c3
                                # LOE rbp rdi r10 r12 r13 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.68:                        # Preds ..B2.66                 # Infreq
        addl      $1, %esi                                      #105.3 c1
        movq      %rdi, %rax                                    #183.15 c1
        movq      %r10, %rdi                                    #184.5 c3
        movq      %rax, %r10                                    #185.5 c3
        cmpl      %r9d, %esi                                    #105.3 c5
        jae       ..B2.86       # Prob 18%                      #105.3 c7
                                # LOE rbp rdi r10 r12 r13 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.69:                        # Preds ..B2.68                 # Infreq
        movq      40(%rsp), %r14                                # c1
..___tag_value_diffusion_baseline.74:                           #
        movq      48(%rsp), %r15                                # c1
..___tag_value_diffusion_baseline.75:                           #
        movq      56(%rsp), %rbx                                # c5 stall 1
..___tag_value_diffusion_baseline.76:                           #
                                # LOE rbx rbp rdi r10 r12 r13 r14 r15 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.70:                        # Preds ..B2.72 ..B2.69         # Infreq
        xorl      %eax, %eax                                    #108.9 c1
        testl     %edx, %edx                                    #108.29 c1
        jle       ..B2.72       # Prob 10%                      #108.29 c3
                                # LOE rbx rbp rdi r10 r12 r13 r14 r15 eax edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.71:                        # Preds ..B2.70                 # Infreq
        movq      %r14, 40(%rsp)                                # c1
        vpxord    %zmm14, %zmm14, %zmm14                        #122.19 c1
        movq      %r15, 48(%rsp)                                # c1
        vmovups   .L_2il0floatpacket.21(%rip), %zmm15           #122.19 c3
        movq      %rbx, 56(%rsp)                                # c3
        vbroadcastsd %xmm6, %zmm7                               #122.19 c5
        vbroadcastsd %xmm1, %zmm8                               #122.19 c9 stall 1
        vbroadcastsd %xmm0, %zmm9                               #122.19 c11
        vbroadcastsd %xmm3, %zmm10                              #122.19 c15 stall 1
        vbroadcastsd %xmm2, %zmm11                              #122.19 c17
        vbroadcastsd %xmm5, %zmm12                              #122.19 c21 stall 1
        vbroadcastsd %xmm4, %zmm13                              #122.19 c23
        jmp       ..B2.37       # Prob 100%                     #122.19 c23
                                # LOE rbp rdi r10 r12 r13 eax edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
..B2.72:                        # Preds ..B2.70                 # Infreq
        addl      $1, %esi                                      #105.3 c1
        movq      %rdi, %rax                                    #183.15 c1
        movq      %r10, %rdi                                    #184.5 c3
        movq      %rax, %r10                                    #185.5 c3
        cmpl      %r9d, %esi                                    #105.3 c5
        jb        ..B2.70       # Prob 82%                      #105.3 c7
        jmp       ..B2.3        # Prob 100%                     #105.3 c7
..___tag_value_diffusion_baseline.80:                           #
                                # LOE rbx rbp rdi r10 r12 r13 r14 r15 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.76:                        # Preds ..B2.11                 # Infreq
        cmpl      $2, %ecx                                      #107.7 c1
        jl        ..B2.92       # Prob 10%                      #107.7 c3
                                # LOE rbp edx ecx r8d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.89:                        # Preds ..B2.76                 # Infreq
        vpxord    %zmm7, %zmm7, %zmm7                           #122.19 c1
        vmovups   .L_2il0floatpacket.21(%rip), %zmm19           #122.19 c1
        vbroadcastsd %xmm6, %zmm8                               #122.19 c1
        vmovups   .L_2il0floatpacket.23(%rip), %zmm9            #135.22 c7 stall 2
        vbroadcastsd %xmm1, %zmm10                              #135.22 c7
        vmovups   .L_2il0floatpacket.24(%rip), %zmm11           #146.22 c13 stall 2
        vbroadcastsd %xmm0, %zmm12                              #146.22 c13
        vbroadcastsd %xmm3, %zmm13                              #146.22 c19 stall 2
        vbroadcastsd %xmm2, %zmm14                              #146.22 c19
        vbroadcastsd %xmm5, %zmm15                              #146.22 c25 stall 2
        vbroadcastsd %xmm4, %zmm16                              #146.22 c25
        vmovups   .L_2il0floatpacket.25(%rip), %zmm17           #144.22 c31 stall 2
        vmovups   .L_2il0floatpacket.22(%rip), %zmm18           #133.22 c31
        jmp       ..B2.21       # Prob 100%                     #133.22 c31
                                # LOE rbp edx ecx r8d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm17 zmm18 zmm19
..B2.92:                        # Preds ..B2.76 ..B2.20 ..B2.33 # Infreq
        movl      32(%rsp), %esi                                # c1
        movl      24(%rsp), %r9d                                # c1
        movq      128(%rsp), %r10                               # c5 stall 1
        movq      168(%rsp), %rdi                               # c5
        movl      112(%rsp), %eax                               # c9 stall 1
        jmp       ..B2.8        # Prob 100%                     # c9 stall 1
                                # LOE rbp rdi r10 eax edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.78:                        # Preds ..B2.8                  # Infreq
        addl      $1, %esi                                      #105.3 c1
        movq      %rdi, %rax                                    #183.15 c1
        movq      %r10, %rdi                                    #184.5 c3
        movq      %rax, %r10                                    #185.5 c3
        cmpl      %r9d, %esi                                    #105.3 c5
        jae       ..B2.84       # Prob 18%                      #105.3 c7
                                # LOE rbp rdi r10 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.79:                        # Preds ..B2.78                 # Infreq
        testl     %ecx, %ecx                                    #107.27 c1
        jle       ..B2.6        # Prob 50%                      #107.27 c3
                                # LOE rbp rdi r10 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.80:                        # Preds ..B2.79                 # Infreq
        movq      8(%rsp), %r12                                 # c1
..___tag_value_diffusion_baseline.82:                           #
        movq      16(%rsp), %r13                                # c1
..___tag_value_diffusion_baseline.83:                           #
        jmp       ..B2.35       # Prob 100%                     # c1
..___tag_value_diffusion_baseline.84:                           #
                                # LOE rbp rdi r10 r12 r13 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.83:                        # Preds ..B2.6                  # Infreq
        addl      $1, %esi                                      #105.3 c1
        movq      %rdi, %rax                                    #183.15 c1
        movq      %r10, %rdi                                    #184.5 c3
        movq      %rax, %r10                                    #185.5 c3
        cmpl      %r9d, %esi                                    #105.3 c5
        jb        ..B2.6        # Prob 82%                      #105.3 c7
                                # LOE rbp rdi r10 edx ecx esi r8d r9d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.84:                        # Preds ..B2.78 ..B2.61 ..B2.83 # Infreq
        movq      8(%rsp), %r12                                 # c1
..___tag_value_diffusion_baseline.86:                           #
        movq      16(%rsp), %r13                                # c1
..___tag_value_diffusion_baseline.87:                           #
        movq      40(%rsp), %r14                                # c5 stall 1
..___tag_value_diffusion_baseline.88:                           #
        movq      48(%rsp), %r15                                # c5
..___tag_value_diffusion_baseline.89:                           #
        movq      56(%rsp), %rbx                                # c9 stall 1
..___tag_value_diffusion_baseline.90:                           #
        jmp       ..B2.3        # Prob 100%                     # c9 stall 1
..___tag_value_diffusion_baseline.91:                           #
                                # LOE rbx rbp r12 r13 r14 r15
..B2.85:                        # Preds ..B2.35                 # Infreq
        movl      %esi, 32(%rsp)                                # c1
        movq      %r10, 128(%rsp)                               # c1
        movl      %ecx, (%rsp)                                  # c3
        movl      %r9d, 24(%rsp)                                # c3
        movq      %r12, 8(%rsp)                                 # c5
        movq      %r13, 16(%rsp)                                # c5
        jmp       ..B2.64       # Prob 100%                     # c5
                                # LOE rbp rdi edx r8d xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6
..B2.86:                        # Preds ..B2.68                 # Infreq
        movq      40(%rsp), %r14                                # c1
..___tag_value_diffusion_baseline.94:                           #
        movq      48(%rsp), %r15                                # c1
..___tag_value_diffusion_baseline.95:                           #
        movq      56(%rsp), %rbx                                # c5 stall 1
..___tag_value_diffusion_baseline.96:                           #
        jmp       ..B2.3        # Prob 100%                     # c5 stall 1
        .align    16,0x90
..___tag_value_diffusion_baseline.97:                           #
                                # LOE rbx rbp r12 r13 r14 r15
# mark_end;
	.type	diffusion_baseline,@function
	.size	diffusion_baseline,.-diffusion_baseline
	.data
# -- End  diffusion_baseline
	.text
# -- Begin  accuracy
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl accuracy
# --- accuracy(const double *, double *, const int, const int)
accuracy:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %ecx
..B3.1:                         # Preds ..B3.0
..___tag_value_accuracy.98:                                     #90.73
..L99:
                                                         #90.73
        movl      %edx, %r8d                                    #90.73 c1
        vxorpd    %xmm0, %xmm0, %xmm0                           #91.12 c1
        testl     %r8d, %r8d                                    #93.19 c3
        jle       ..B3.19       # Prob 50%                      #93.19 c5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx r8d xmm0
..B3.2:                         # Preds ..B3.1
        vpxorq    %zmm4, %zmm4, %zmm4                           #91.12 c1
        vmovaps   %zmm4, %zmm3                                  #91.12 c3
        cmpl      $817, %r8d                                    #93.3 c3
        jl        ..B3.21       # Prob 10%                      #93.3 c5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx r8d zmm3 zmm4
..B3.3:                         # Preds ..B3.2
        movq      %rsi, %rax                                    #93.3 c1
        andq      $63, %rax                                     #93.3 c3
        testl     %eax, %eax                                    #93.3 c3
        je        ..B3.6        # Prob 50%                      #93.3 c5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax ecx r8d zmm3 zmm4
..B3.4:                         # Preds ..B3.3
        testb     $7, %al                                       #93.3 c1
        jne       ..B3.20       # Prob 10%                      #93.3 c3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax ecx r8d zmm3 zmm4
..B3.5:                         # Preds ..B3.4
        negl      %eax                                          #93.3 c1
        addl      $64, %eax                                     #93.3 c3
        shrl      $3, %eax                                      #93.3 c5
        cmpl      %eax, %r8d                                    #93.3 c7
        cmovl     %r8d, %eax                                    #93.3 c9
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax ecx r8d zmm3 zmm4
..B3.6:                         # Preds ..B3.5 ..B3.3
        movl      %r8d, %edx                                    #93.3 c1
        subl      %eax, %edx                                    #93.3 c3
        andl      $15, %edx                                     #93.3 c5
        negl      %edx                                          #93.3 c7
        addl      %r8d, %edx                                    #93.3 c9
        cmpl      $1, %eax                                      #93.3 c9
        jb        ..B3.10       # Prob 50%                      #93.3 c11
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d zmm3 zmm4
..B3.7:                         # Preds ..B3.6
        movl      $8, %r9d                                      #93.3 c1
        vmovd     %eax, %xmm0                                   #93.3 c1
        movl      $255, %r11d                                   #93.3 c1
        vmovd     %r9d, %xmm1                                   #93.3 c3
        vpbroadcastd %xmm0, %ymm0                               #93.3 c3
        xorl      %r10d, %r10d                                  #93.3 c3
        vpbroadcastd %xmm1, %ymm2                               #93.3 c5
        vmovdqu   .L_2il0floatpacket.26(%rip), %ymm1            #93.3 c5
        movslq    %eax, %r9                                     #93.3 c5
        kmovw     %r11d, %k1                                    #93.3 c7
                                # LOE rbx rbp rsi rdi r9 r10 r12 r13 r14 r15 eax edx ecx r8d ymm1 ymm2 zmm0 zmm3 zmm4 k1
..B3.8:                         # Preds ..B3.8 ..B3.7
        vpcmpgtd  %zmm0, %zmm1, %k0{%k1}                        #93.3 c3
        vpaddd    %ymm2, %ymm1, %ymm1                           #93.3 c3
        knotw     %k0, %k2                                      #93.3 c5
        vmovupd   (%rdi,%r10,8), %zmm5{%k2}{z}                  #94.13 c7
        vmovupd   (%rsi,%r10,8), %zmm6{%k2}{z}                  #94.21 c7
        addq      $8, %r10                                      #93.3 c7
        cmpq      %r9, %r10                                     #93.3 c9
        vsubpd    %zmm6, %zmm5, %zmm7                           #94.21 c13 stall 1
        vfmadd231pd %zmm7, %zmm7, %zmm4{%k2}                    #94.5 c19 stall 2
        jb        ..B3.8        # Prob 82%                      #93.3 c19
                                # LOE rbx rbp rsi rdi r9 r10 r12 r13 r14 r15 eax edx ecx r8d ymm1 ymm2 zmm0 zmm3 zmm4 k1
..B3.9:                         # Preds ..B3.8
        cmpl      %eax, %r8d                                    #93.3 c1
        je        ..B3.18       # Prob 10%                      #93.3 c3
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d zmm3 zmm4
..B3.10:                        # Preds ..B3.9 ..B3.6 ..B3.21
        lea       16(%rax), %r9d                                #93.3 c1
        cmpl      %r9d, %edx                                    #93.3 c3
        jl        ..B3.14       # Prob 50%                      #93.3 c5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d zmm3 zmm4
..B3.11:                        # Preds ..B3.10
        movslq    %eax, %rax                                    #93.3 c1
        movslq    %edx, %r9                                     #93.3 c1
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 edx ecx r8d zmm3 zmm4
..B3.12:                        # Preds ..B3.12 ..B3.11
        vmovups   (%rdi,%rax,8), %zmm0                          #94.13 c1
        vmovups   64(%rdi,%rax,8), %zmm1                        #94.13 c1
        vsubpd    (%rsi,%rax,8), %zmm0, %zmm2                   #94.21 c7 stall 2
        vsubpd    64(%rsi,%rax,8), %zmm1, %zmm5                 #94.21 c7
        addq      $16, %rax                                     #93.3 c7
        vfmadd231pd %zmm2, %zmm2, %zmm4                         #94.5 c13 stall 2
        vfmadd231pd %zmm5, %zmm5, %zmm3                         #94.5 c13
        cmpq      %r9, %rax                                     #93.3 c13
        jb        ..B3.12       # Prob 82%                      #93.3 c15
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 edx ecx r8d zmm3 zmm4
..B3.14:                        # Preds ..B3.12 ..B3.10 ..B3.20
        lea       1(%rdx), %eax                                 #93.3 c1
        cmpl      %eax, %r8d                                    #93.3 c3
        jb        ..B3.18       # Prob 50%                      #93.3 c5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 edx ecx r8d zmm3 zmm4
..B3.15:                        # Preds ..B3.14
        movl      %r8d, %r9d                                    #93.3 c1
        movl      $8, %eax                                      #93.3 c1
        subl      %edx, %r9d                                    #93.3 c3
        movslq    %edx, %rdx                                    #94.13 c3
        vmovd     %eax, %xmm1                                   #93.3 c3
        vmovd     %r9d, %xmm0                                   #93.3 c5
        lea       (%rsi,%rdx,8), %r9                            #94.21 c5
        movslq    %r8d, %rsi                                    #93.3 c5
        lea       (%rdi,%rdx,8), %rdi                           #94.13 c5
        vpbroadcastd %xmm1, %ymm2                               #93.3 c5
        vpbroadcastd %xmm0, %ymm0                               #93.3 c7
        subq      %rdx, %rsi                                    #93.3 c7
        vmovdqu   .L_2il0floatpacket.26(%rip), %ymm1            #93.3 c7
        movl      $255, %edx                                    #93.3 c9
        xorl      %eax, %eax                                    #93.3 c9
        kmovw     %edx, %k1                                     #93.3 c11
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 ecx r8d ymm1 ymm2 zmm0 zmm3 zmm4 k1
..B3.16:                        # Preds ..B3.16 ..B3.15
        vpcmpgtd  %zmm0, %zmm1, %k0{%k1}                        #93.3 c3
        vpaddd    %ymm2, %ymm1, %ymm1                           #93.3 c3
        knotw     %k0, %k2                                      #93.3 c5
        vmovupd   (%rdi,%rax,8), %zmm5{%k2}{z}                  #94.13 c7
        vmovupd   (%r9,%rax,8), %zmm6{%k2}{z}                   #94.21 c7
        addq      $8, %rax                                      #93.3 c7
        cmpq      %rsi, %rax                                    #93.3 c9
        vsubpd    %zmm6, %zmm5, %zmm7                           #94.21 c13 stall 1
        vfmadd231pd %zmm7, %zmm7, %zmm4{%k2}                    #94.5 c19 stall 2
        jb        ..B3.16       # Prob 82%                      #93.3 c19
                                # LOE rax rbx rbp rsi rdi r9 r12 r13 r14 r15 ecx r8d ymm1 ymm2 zmm0 zmm3 zmm4 k1
..B3.18:                        # Preds ..B3.16 ..B3.9 ..B3.14
        vaddpd    %zmm3, %zmm4, %zmm0                           #91.12 c3 stall 1
        vextractf64x4 $1, %zmm0, %ymm1                          #91.12 c9 stall 2
        vaddpd    %ymm0, %ymm1, %ymm2                           #91.12 c11
        valignq   $3, %zmm2, %zmm2, %zmm16                      #91.12 c19
        valignq   $2, %zmm2, %zmm2, %zmm17                      #91.12 c19
        valignq   $1, %zmm2, %zmm2, %zmm18                      #91.12 c21
        vaddsd    %xmm18, %xmm17, %xmm3                         #91.12 c25
        vaddsd    %xmm2, %xmm16, %xmm4                          #91.12 c27
        vaddsd    %xmm4, %xmm3, %xmm0                           #91.12 c31 stall 1
                                # LOE rbx rbp r12 r13 r14 r15 ecx r8d xmm0
..B3.19:                        # Preds ..B3.18 ..B3.1
        vcvtsi2sd %r8d, %xmm16, %xmm16                          #96.25 c1
        vgetmantsd $0, %xmm0, %xmm0, %xmm21                     #96.32 c1
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm19           #96.32 c1
        vmovsd    .L_2il0floatpacket.3(%rip), %xmm28            #96.32 c1
        vgetmantsd $0, %xmm16, %xmm16, %xmm20                   #96.32 c3
        vgetexpsd %xmm0, %xmm0, %xmm17                          #96.32 c7 stall 1
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm5            #96.32 c7
        vrcp28sd  %xmm20, %xmm20, %xmm22                        #96.32 c9
        vgetexpsd %xmm16, %xmm16, %xmm18                        #96.32 c13 stall 1
        vmulsd    {rn-sae}, %xmm21, %xmm22, %xmm23              #96.32 c17 stall 1
        vfnmadd231sd {rn-sae}, %xmm20, %xmm22, %xmm19           #96.32 c19
        vfnmadd231sd {rn-sae}, %xmm20, %xmm23, %xmm21           #96.32 c23 stall 1
        vfmadd231sd {rn-sae}, %xmm22, %xmm19, %xmm22            #96.32 c25
        vsubsd    %xmm18, %xmm17, %xmm24                        #96.32 c29 stall 1
        vfmadd231sd {rn-sae}, %xmm22, %xmm21, %xmm23            #96.32 c31
        vxorpd    %xmm1, %xmm1, %xmm1                           #96.32 c35 stall 1
        vscalefsd %xmm24, %xmm23, %xmm25                        #96.32 c37
        vcvtsi2sd %ecx, %xmm31, %xmm31                          #96.32 c37
        vgetmantsd $0, %xmm31, %xmm31, %xmm6                    #96.32 c39
        vmovsd    %xmm25, %xmm1, %xmm30                         #96.32 c43 stall 1
        vgetexpsd %xmm31, %xmm31, %xmm4                         #96.32 c43
        vcmpsd    $1, .L_2il0floatpacket.3(%rip), %xmm30, %k1   #96.32 c45
        vmovapd   %zmm30, %zmm0                                 #96.32 c45
        vrcp28sd  %xmm6, %xmm6, %xmm8                           #96.32 c47
        vscalefsd .L_2il0floatpacket.17(%rip), %xmm30, %xmm0{%k1} #96.32 c47
        vrsqrt28sd %xmm0, %xmm0, %xmm26                         #96.32 c49
        vfnmadd231sd {rn-sae}, %xmm6, %xmm8, %xmm5              #96.32 c55 stall 2
        vmulsd    {rn-sae}, %xmm0, %xmm26, %xmm29               #96.32 c57
        vscalefsd .L_2il0floatpacket.18(%rip), %xmm26, %xmm27   #96.32 c57
        vfnmadd231sd {rn-sae}, %xmm27, %xmm29, %xmm28           #96.32 c63 stall 2
        vfmadd231sd {rn-sae}, %xmm29, %xmm28, %xmm29            #96.32 c69 stall 2
        vfmadd213sd {rn-sae}, %xmm27, %xmm27, %xmm28            #96.32 c69
        vfnmadd231sd {rn-sae}, %xmm29, %xmm29, %xmm0            #96.32 c75 stall 2
        vfmadd213sd %xmm29, %xmm28, %xmm0                       #96.32 c81 stall 2
        vmovsd    %xmm0, %xmm1, %xmm2                           #96.32 c87 stall 2
        vscalefsd .L_2il0floatpacket.19(%rip), %xmm2, %xmm2{%k1} #96.32 c89
        vfixupimmsd $112, .L_2il0floatpacket.20(%rip), %xmm30, %xmm2 #96.32 c95 stall 2
        vgetmantsd $0, %xmm2, %xmm2, %xmm7                      #96.32 c95
        vgetexpsd %xmm2, %xmm2, %xmm3                           #96.32 c95
        vmulsd    {rn-sae}, %xmm7, %xmm8, %xmm9                 #96.32 c101 stall 2
        vfmadd231sd {rn-sae}, %xmm8, %xmm5, %xmm8               #96.32 c101
        vfnmadd231sd {rn-sae}, %xmm6, %xmm9, %xmm7              #96.32 c107 stall 2
        vsubsd    %xmm4, %xmm3, %xmm10                          #96.32 c107
        vfmadd231sd {rn-sae}, %xmm8, %xmm7, %xmm9               #96.32 c113 stall 2
        vscalefsd %xmm10, %xmm9, %xmm0                          #96.32 c119 stall 2
        ret                                                     #96.32 c121
                                # LOE
..B3.20:                        # Preds ..B3.4                  # Infreq
        xorl      %edx, %edx                                    #93.3 c1
        jmp       ..B3.14       # Prob 100%                     #93.3 c1
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 edx ecx r8d zmm3 zmm4
..B3.21:                        # Preds ..B3.2                  # Infreq
        movl      %r8d, %edx                                    #93.3 c1
        xorl      %eax, %eax                                    #93.3 c1
        andl      $-16, %edx                                    #93.3 c3
        jmp       ..B3.10       # Prob 100%                     #93.3 c3
        .align    16,0x90
..___tag_value_accuracy.100:                                    #
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d zmm3 zmm4
# mark_end;
	.type	accuracy,@function
	.size	accuracy,.-accuracy
	.data
# -- End  accuracy
	.text
# -- Begin  dump_result
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl dump_result
# --- dump_result(double *, int, int, int, char *)
dump_result:
# parameter 1: %rdi
# parameter 2: %esi
# parameter 3: %edx
# parameter 4: %ecx
# parameter 5: %r8
..B4.1:                         # Preds ..B4.0
..___tag_value_dump_result.101:                                 #195.67
..L102:
                                                        #195.67
        subq      $40, %rsp                                     #195.67 c1
..___tag_value_dump_result.103:                                 #
        movq      %r15, 8(%rsp)                                 #195.67 c3
..___tag_value_dump_result.104:                                 #
        movq      %rdi, %r15                                    #195.67 c3
        movq      %r14, 16(%rsp)                                #195.67 c3
..___tag_value_dump_result.105:                                 #
        movl      %esi, %r14d                                   #195.67 c3
        movq      %rbp, 32(%rsp)                                #195.67 c5
        movq      %r8, %rdi                                     #196.15 c5
        movq      %rbx, (%rsp)                                  #195.67 c5
        movl      $.L_2__STRING.0, %esi                         #196.15 c5
        movq      %r13, 24(%rsp)                                #195.67 c7
..___tag_value_dump_result.106:                                 #
        movl      %ecx, %ebp                                    #195.67 c7
        movl      %edx, %r13d                                   #195.67 c7
#       fopen(const char *__restrict__, const char *__restrict__)
        call      fopen                                         #196.15 c9
                                # LOE rax r12 r15 ebp r13d r14d
..B4.9:                         # Preds ..B4.1
        movq      %rax, %rbx                                    #196.15 c1
                                # LOE rbx r12 r15 ebp r13d r14d
..B4.2:                         # Preds ..B4.9
        testq     %rbx, %rbx                                    #197.3 c1
        je        ..B4.6        # Prob 0%                       #197.3 c3
                                # LOE rbx r12 r15 ebp r13d r14d
..B4.3:                         # Preds ..B4.2
        imull     %r13d, %r14d                                  #199.3 c1
        movq      %r15, %rdi                                    #199.3 c1
        movl      $8, %esi                                      #199.3 c3
        imull     %ebp, %r14d                                   #199.3 c5
        movq      %rbx, %rcx                                    #199.3 c5
        movslq    %r14d, %r14                                   #199.3 c9 stall 1
        movq      %r14, %rdx                                    #199.3 c11
#       fwrite(const void *__restrict__, size_t, size_t, FILE *__restrict__)
        call      fwrite                                        #199.3 c13
                                # LOE rbx r12
..B4.4:                         # Preds ..B4.3
        movq      %rbx, %rdi                                    #200.3 c1
        movq      (%rsp), %rbx                                  #200.3 c1
..___tag_value_dump_result.109:                                 #
        movq      32(%rsp), %rbp                                #200.3 c1
..___tag_value_dump_result.110:                                 #
        movq      24(%rsp), %r13                                #200.3 c5 stall 1
..___tag_value_dump_result.111:                                 #
        movq      16(%rsp), %r14                                #200.3 c5
..___tag_value_dump_result.112:                                 #
        movq      8(%rsp), %r15                                 #200.3 c9 stall 1
..___tag_value_dump_result.113:                                 #
        addq      $40, %rsp                                     #200.3 c9
..___tag_value_dump_result.114:                                 #
#       fclose(FILE *)
        jmp       fclose                                        #200.3 c9
..___tag_value_dump_result.115:                                 #
                                # LOE
..B4.6:                         # Preds ..B4.2                  # Infreq
        movl      $.L_2__STRING.1, %edi                         #197.3 c1
        movl      $.L_2__STRING.2, %esi                         #197.3 c1
        movl      $197, %edx                                    #197.3 c3
        movl      $__$U0, %ecx                                  #197.3 c3
#       __assert_fail(const char *, const char *, unsigned int, const char *)
        call      __assert_fail                                 #197.3 c5
        .align    16,0x90
..___tag_value_dump_result.121:                                 #
                                # LOE
# mark_end;
	.type	dump_result,@function
	.size	dump_result,.-dump_result
	.data
# -- End  dump_result
	.text
# -- Begin  init
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl init
# --- init(double *, const int, const int, const int, const double, const double, const double, const double, const double, const double, const double, const double)
init:
# parameter 1: %rdi
# parameter 2: %esi
# parameter 3: %edx
# parameter 4: %ecx
# parameter 5: %xmm0
# parameter 6: %xmm1
# parameter 7: %xmm2
# parameter 8: %xmm3
# parameter 9: %xmm4
# parameter 10: %xmm5
# parameter 11: %xmm6
# parameter 12: %xmm7
..B5.1:                         # Preds ..B5.0
..___tag_value_init.122:                                        #67.46
..L123:
                                                        #67.46
        pushq     %rbp                                          #67.46
..___tag_value_init.124:                                        #
        movq      %rsp, %rbp                                    #67.46
..___tag_value_init.125:                                        #
        andq      $-64, %rsp                                    #67.46
        subq      $768, %rsp                                    #67.46 c1
        vmovsd    %xmm0, 88(%rsp)                               #67.46 c3
        vmulsd    %xmm0, %xmm0, %xmm16                          #70.8 c3
        movq      %rbx, 16(%rsp)                                #67.46 c3
..___tag_value_init.127:                                        #
        movq      %rdi, %rbx                                    #67.46 c3
        movq      %r15, 24(%rsp)                                #67.46 c5
..___tag_value_init.128:                                        #
        movl      %ecx, %r15d                                   #67.46 c5
        movq      %r14, 32(%rsp)                                #67.46 c7
..___tag_value_init.129:                                        #
        movl      %edx, %r14d                                   #67.46 c7
        movq      %r13, 40(%rsp)                                #67.46 c9
        vmulsd    %xmm6, %xmm16, %xmm17                         #70.8 c9
        vmovsd    %xmm7, 8(%rsp)                                #67.46 c9
..___tag_value_init.130:                                        #
        movl      %esi, %r13d                                   #67.46 c9
        vmovsd    %xmm6, (%rsp)                                 #67.46 c11
        vmulsd    %xmm7, %xmm17, %xmm8                          #70.8 c15 stall 1
        vmovsd    %xmm5, 64(%rsp)                               #67.46 c15
        vxorpd    .L_2il0floatpacket.28(%rip), %xmm8, %xmm0     #70.8 c21 stall 2
        vmovsd    %xmm4, 56(%rsp)                               #67.46 c21
        vmovsd    %xmm3, 48(%rsp)                               #67.46 c23
        vmovsd    %xmm2, 104(%rsp)                              #67.46 c27 stall 1
        vmovsd    %xmm1, 96(%rsp)                               #67.46 c29
        call      exp                                           #70.8 c29
                                # LOE rbx r12 r13d r14d r15d xmm0
..B5.41:                        # Preds ..B5.1
        vmovsd    %xmm0, 80(%rsp)                               #70.8 c1
        vmovsd    96(%rsp), %xmm0                               #71.8 c1
        vmulsd    %xmm0, %xmm0, %xmm16                          #71.8 c7 stall 2
        vmulsd    (%rsp), %xmm16, %xmm17                        #71.8 c13 stall 2
        vmulsd    8(%rsp), %xmm17, %xmm1                        #71.8 c19 stall 2
        vxorpd    .L_2il0floatpacket.28(%rip), %xmm1, %xmm0     #71.8 c25 stall 2
        call      exp                                           #71.8 c27
                                # LOE rbx r12 r13d r14d r15d xmm0
..B5.40:                        # Preds ..B5.41
        vmovsd    %xmm0, 72(%rsp)                               #71.8 c1
        vmovsd    104(%rsp), %xmm0                              #72.8 c1
        vmulsd    %xmm0, %xmm0, %xmm16                          #72.8 c7 stall 2
        vmulsd    (%rsp), %xmm16, %xmm17                        #72.8 c13 stall 2
        vmulsd    8(%rsp), %xmm17, %xmm1                        #72.8 c19 stall 2
        vxorpd    .L_2il0floatpacket.28(%rip), %xmm1, %xmm0     #72.8 c25 stall 2
        call      exp                                           #72.8 c27
                                # LOE rbx r12 r13d r14d r15d xmm0
..B5.39:                        # Preds ..B5.40
        xorl      %eax, %eax                                    #73.3 c1
        testl     %r15d, %r15d                                  #73.21 c1
        jle       ..B5.30       # Prob 9%                       #73.21 c3
                                # LOE rbx r12 eax r13d r14d r15d xmm0
..B5.2:                         # Preds ..B5.39
        vmovsd    %xmm0, (%rsp)                                 # c1
        movl      %r14d, %edx                                   # c1
        movq      %rbx, 472(%rsp)                               # c1
        movl      %r15d, 448(%rsp)                              # c3
        movl      %eax, %r15d                                   # c3
        movq      %r12, 8(%rsp)                                 # c5
..___tag_value_init.131:                                        #
        movl      %r13d, %r12d                                  # c5
                                # LOE edx r12d r15d
..B5.3:                         # Preds ..B5.35 ..B5.5 ..B5.2
        xorl      %r13d, %r13d                                  #74.5 c1
        xorl      %ebx, %ebx                                    #75.12 c1
        testl     %edx, %edx                                    #74.23 c3
        jle       ..B5.35       # Prob 10%                      #74.23 c5
                                # LOE edx ebx r12d r13d r15d
..B5.4:                         # Preds ..B5.3
        testl     %r12d, %r12d                                  #75.25 c1
        jg        ..B5.6        # Prob 50%                      #75.25 c3
                                # LOE edx ebx r12d r13d r15d
..B5.5:                         # Preds ..B5.49 ..B5.32 ..B5.4
        addl      $1, %r15d                                     #73.3 c1
        cmpl      448(%rsp), %r15d                              #73.3 c3
        jb        ..B5.3        # Prob 82%                      #73.3 c5
        jmp       ..B5.29       # Prob 100%                     #73.3 c5
                                # LOE edx r12d r15d
..B5.6:                         # Preds ..B5.4
        vmovsd    88(%rsp), %xmm0                               #81.29 c1
        movl      %edx, 512(%rsp)                               #83.22 c1
        vcvtsi2sd %r15d, %xmm19, %xmm19                         #83.22 c1
        movl      $8, %ecx                                      #76.38 c1
        movl      %r12d, %r14d                                  #84.9 c1
        vmovsd    104(%rsp), %xmm2                              #83.22 c3
        vmovd     %ecx, %xmm3                                   #76.38 c3
        imull     %edx, %r14d                                   #84.9 c3
        vpbroadcastd %xmm3, %ymm4                               #75.7 c5
        vmovdqu   %ymm4, 736(%rsp)                              #75.7 c7
        imull     %r15d, %r14d                                  #84.9 c7
        vmulsd    48(%rsp), %xmm0, %xmm16                       #81.29 c9
        vmovsd    96(%rsp), %xmm1                               #82.29 c9
        vmulsd    64(%rsp), %xmm2, %xmm20                       #83.22 c15 stall 2
        vaddsd    .L_2il0floatpacket.3(%rip), %xmm19, %xmm21    #83.22 c15
        vmulsd    56(%rsp), %xmm1, %xmm18                       #82.29 c21 stall 2
        vmovsd    %xmm18, 544(%rsp)                             #82.29 c27 stall 2
        vbroadcastsd %xmm16, %zmm17                             #81.29 c27
        vmovups   %zmm17, 384(%rsp)                             #81.29 c33 stall 2
        vmulsd    %xmm21, %xmm20, %xmm0                         #83.22 c33
        call      cos                                           #83.22 c35
                                # LOE ebx r12d r13d r14d r15d xmm0
..B5.42:                        # Preds ..B5.6
        vbroadcastsd %xmm0, %zmm1                               #83.29 c1
        movl      %r14d, 464(%rsp)                              #75.7 c1
        movl      %r12d, %ecx                                   #75.7 c1
        movl      %r15d, 120(%rsp)                              #75.7 c3
        movslq    %r12d, %rsi                                   #75.7 c3
        movq      %rsi, 456(%rsp)                               #75.7 c5
        andl      $-8, %ecx                                     #75.7 c5
        movl      %ecx, 112(%rsp)                               #75.7 c7
        vbroadcastsd (%rsp), %zmm0                              #72.8 c7
        movl      512(%rsp), %edx                               # c9
        vmovaps   %zmm0, %zmm5                                  #83.22 c13 stall 1
        lea       .L_2il0floatpacket.16(%rip), %rdx             #81.13 c13
        lea       .L_2il0floatpacket.5(%rip), %rax              #81.13 c13
        vfnmadd213pd (%rdx){1to8}, %zmm1, %zmm5                 #83.22 c15
        vmovups   %zmm5, 192(%rsp)                              #75.7 c21 stall 2
        vfnmadd213pd (%rax), %zmm1, %zmm0                       #83.22 c21
        vmovups   %zmm0, 256(%rsp)                              #75.7 c27 stall 2
        vbroadcastsd 80(%rsp), %zmm7                            #70.8 c27
        vmovups   %zmm7, 320(%rsp)                              #75.7 c33 stall 2
        vbroadcastsd 72(%rsp), %zmm6                            #71.8 c33
        vmovups   %zmm6, 128(%rsp)                              #75.7 c39 stall 2
        vbroadcastsd .L_2il0floatpacket.27(%rip), %zmm9         #80.19 c39
        vbroadcastsd (%rdx), %zmm8                              #81.13 c45 stall 2
        vmovups   .L_2il0floatpacket.1(%rip), %zmm4             #77.34 c45
        vmovups   .L_2il0floatpacket.4(%rip), %zmm3             #80.19 c51 stall 2
        vmovups   (%rax), %zmm2                                 #81.13 c51
                                # LOE ebx r12d r13d
..B5.7:                         # Preds ..B5.26 ..B5.23 ..B5.42
        cmpl      $861, %r12d                                   #75.7 c1
        jl        ..B5.34       # Prob 10%                      #75.7 c3
                                # LOE ebx r12d r13d
..B5.8:                         # Preds ..B5.7
        movl      %ebx, 528(%rsp)                               # c1
        movl      %r13d, 536(%rsp)                              # c1
                                # LOE r12d
..B5.9:                         # Preds ..B5.31 ..B5.8
        movl      464(%rsp), %ebx                               #84.9 c1
        movl      528(%rsp), %eax                               #84.9 c1
        movq      472(%rsp), %rcx                               #84.9 c5 stall 1
        lea       (%rbx,%rax), %edx                             #84.9 c5
        movslq    %edx, %rdx                                    #84.9 c7
        lea       (%rcx,%rdx,8), %rbx                           #84.9 c9
        movq      %rbx, %r15                                    #75.7 c11
        andq      $63, %r15                                     #75.7 c13
        testl     %r15d, %r15d                                  #75.7 c13
        je        ..B5.12       # Prob 50%                      #75.7 c15
                                # LOE rax rbx eax r12d r15d al ah
..B5.10:                        # Preds ..B5.9
        testl     $7, %r15d                                     #75.7 c1
        jne       ..B5.33       # Prob 10%                      #75.7 c3
                                # LOE rax rbx eax r12d r15d al ah
..B5.11:                        # Preds ..B5.10
        negl      %r15d                                         #75.7 c1
        addl      $64, %r15d                                    #75.7 c3
        shrl      $3, %r15d                                     #75.7 c5
        cmpl      %r15d, %r12d                                  #75.7 c7
        cmovl     %r12d, %r15d                                  #75.7 c9
                                # LOE rax rbx eax r12d r15d al ah
..B5.12:                        # Preds ..B5.11 ..B5.9
        movl      %r12d, %r14d                                  #75.7 c1
        subl      %r15d, %r14d                                  #75.7 c3
        andl      $7, %r14d                                     #75.7 c5
        negl      %r14d                                         #75.7 c7
        addl      %r12d, %r14d                                  #75.7 c9
        cmpl      $1, %r15d                                     #75.7 c9
        jae       ..B5.14       # Prob 50%                      #75.7 c11
                                # LOE rax rbx eax r12d r14d r15d al ah
..B5.13:                        # Preds ..B5.12
        movl      %eax, %ebx                                    # c1
        movl      536(%rsp), %r13d                              # c1
        jmp       ..B5.18       # Prob 100%                     # c1
                                # LOE ebx r12d r13d r14d r15d
..B5.14:                        # Preds ..B5.12
        vcvtsi2sd 536(%rsp), %xmm16, %xmm16                     #82.22 c1
        vmovdqu   .L_2il0floatpacket.26(%rip), %ymm0            #75.7 c1
        vmovdqu   %ymm0, 704(%rsp)                              #75.7 c7 stall 2
        vmovd     %r15d, %xmm2                                  #75.7 c7
        xorl      %r13d, %r13d                                  #75.7 c7
        vaddsd    .L_2il0floatpacket.3(%rip), %xmm16, %xmm17    #82.22 c7
        vmovdqu   .L_2il0floatpacket.15(%rip), %ymm1            #76.38 c9
        vmovdqu   %ymm1, 672(%rsp)                              #76.38 c15 stall 2
        vpbroadcastd %xmm2, %ymm3                               #75.7 c15
        vmovdqu   %ymm3, 480(%rsp)                              #75.7 c17
        vmulsd    544(%rsp), %xmm17, %xmm0                      #82.22 c17
        call      cos                                           #82.22 c19
                                # LOE rbx r13 r12d r14d r15d xmm0
..B5.43:                        # Preds ..B5.14
        vbroadcastsd %xmm0, %zmm16                              #82.29 c1
        vbroadcastsd .L_2il0floatpacket.16(%rip), %zmm24        #82.22 c1
        movl      $255, %eax                                    #75.7 c1
        xorl      %esi, %esi                                    #75.7 c1
        vpxord    %zmm20, %zmm20, %zmm20                        #75.7 c1
        kmovw     %eax, %k4                                     #75.7 c3
        movslq    %r15d, %rdi                                   #75.7 c3
        vmovdqu   480(%rsp), %ymm1                              #75.7 c7 stall 1
        vfnmadd231pd 128(%rsp), %zmm16, %zmm24                  #82.22 c7
        vmovups   192(%rsp), %zmm17                             #75.7 c13 stall 2
        vmovaps   %zmm1, %zmm16                                 #75.7 c13
        vmovups   320(%rsp), %zmm18                             #75.7 c13
        vmovups   384(%rsp), %zmm23                             #75.7 c19 stall 2
        vbroadcastsd .L_2il0floatpacket.16(%rip), %zmm22        #75.7 c19
        vbroadcastsd .L_2il0floatpacket.27(%rip), %zmm19        #75.7 c25 stall 2
        vbroadcastsd .L_2il0floatpacket.3(%rip), %zmm21         #75.7 c25
                                # LOE rbx rsi rdi r13 r12d r14d r15d zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 k4
..B5.15:                        # Preds ..B5.44 ..B5.43
        vmovdqu   672(%rsp), %ymm2                              #76.38 c1
        vmovdqu   704(%rsp), %ymm3                              #75.7 c1
        vmovaps   %zmm20, %zmm0                                 #81.22 c1
        vcvtdq2pd %ymm2, %zmm25                                 #77.29 c9
        vpcmpgtd  %zmm16, %zmm3, %k0{%k4}                       #75.7 c9
        vaddpd    %zmm25, %zmm21, %zmm26                        #77.34 c11
        knotw     %k0, %k5                                      #75.7 c11
        kmovw     %k5, %k1                                      #81.22 c13
        vmulpd    %zmm26, %zmm23, %zmm1                         #77.34 c17 stall 1
        call      __svml_cos8_mask                              #81.22 c19
                                # LOE rbx rsi rdi r13 r12d r14d r15d zmm0 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 k4 k5
..B5.44:                        # Preds ..B5.15
        vmovaps   %zmm22, %zmm25                                #81.22 c1
        vmovdqu   704(%rsp), %ymm1                              #75.7 c1
        vmovdqu   672(%rsp), %ymm3                              #76.38 c1
        addq      $8, %r13                                      #75.7 c1
        vfnmadd231pd %zmm18, %zmm0, %zmm25                      #81.22 c3
        vpaddd    736(%rsp), %ymm1, %ymm2                       #75.7 c7 stall 1
        vmovdqu   %ymm2, 704(%rsp)                              #75.7 c9
        vmulpd    %zmm25, %zmm19, %zmm26                        #81.22 c9
        vpaddd    736(%rsp), %ymm3, %ymm4                       #76.38 c9
        vmovdqu   %ymm4, 672(%rsp)                              #76.38 c11
        vmulpd    %zmm24, %zmm26, %zmm27                        #82.22 c15 stall 1
        vmulpd    %zmm17, %zmm27, %zmm28                        #83.22 c21 stall 2
        vmovupd   %zmm28, (%rsi,%rbx){%k5}                      #84.9 c27 stall 2
        addq      $64, %rsi                                     #75.7 c27
        cmpq      %rdi, %r13                                    #75.7 c27
        jb        ..B5.15       # Prob 82%                      #75.7 c29
                                # LOE rbx rsi rdi r13 r12d r14d r15d zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 k4
..B5.16:                        # Preds ..B5.44
        cmpl      %r15d, %r12d                                  #75.7 c1
        je        ..B5.31       # Prob 10%                      #75.7 c3
                                # LOE r12d r14d r15d
..B5.17:                        # Preds ..B5.16
        movl      528(%rsp), %ebx                               # c1
        movl      536(%rsp), %r13d                              # c1
                                # LOE ebx r12d r13d r14d r15d
..B5.18:                        # Preds ..B5.17 ..B5.13 ..B5.34
        vmovd     %r15d, %xmm0                                  #76.38 c1
        lea       8(%r15), %eax                                 #75.7 c1
        vpbroadcastd %xmm0, %ymm1                               #76.38 c3
        vpaddd    .L_2il0floatpacket.15(%rip), %ymm1, %ymm2     #76.38 c5
        vmovdqu   %ymm2, 576(%rsp)                              #76.38 c7
        cmpl      %eax, %r14d                                   #75.7 c7
        jl        ..B5.22       # Prob 50%                      #75.7 c9
                                # LOE ebx r12d r13d r14d r15d
..B5.19:                        # Preds ..B5.18
        vcvtsi2sd %r13d, %xmm16, %xmm16                         #82.22 c1
        movl      464(%rsp), %eax                               #84.9 c1
        movq      472(%rsp), %rcx                               #84.9 c1
        movslq    %r15d, %r15                                   #75.7 c1
        vaddsd    .L_2il0floatpacket.3(%rip), %xmm16, %xmm17    #82.22 c5 stall 1
        lea       (%rax,%rbx), %edx                             #84.9 c5
        movslq    %edx, %rdx                                    #84.9 c7
        lea       (%rcx,%rdx,8), %rsi                           #84.9 c9
        movq      %rsi, 520(%rsp)                               #84.9 c11
        vmulsd    544(%rsp), %xmm17, %xmm0                      #82.22 c11
        call      cos                                           #82.22 c13
                                # LOE r15 ebx r12d r13d r14d xmm0
..B5.45:                        # Preds ..B5.19
        vbroadcastsd %xmm0, %zmm1                               #82.29 c1
        vmovups   .L_2il0floatpacket.5(%rip), %zmm16            #82.22 c1
        movslq    %r14d, %rsi                                   #75.7 c1
        vmovups   .L_2il0floatpacket.5(%rip), %zmm20            #75.7 c7 stall 2
        vfnmadd231pd 128(%rsp), %zmm1, %zmm16                   #82.22 c7
        vmovups   256(%rsp), %zmm22                             #75.7 c13 stall 2
        vmovups   320(%rsp), %zmm19                             #75.7 c13
        vmovups   384(%rsp), %zmm21                             #75.7 c19 stall 2
        vmovups   .L_2il0floatpacket.4(%rip), %zmm17            #75.7 c19
        vmovups   .L_2il0floatpacket.1(%rip), %zmm18            #75.7 c25 stall 2
        movq      520(%rsp), %rdi                               #75.7 c25
                                # LOE rsi rdi r15 ebx r12d r13d r14d zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22
..B5.20:                        # Preds ..B5.46 ..B5.45
        vmovdqu   576(%rsp), %ymm1                              #76.38 c1
        vcvtdq2pd %ymm1, %zmm2                                  #77.29 c9
        vaddpd    %zmm2, %zmm18, %zmm3                          #77.34 c11
        vmulpd    %zmm3, %zmm21, %zmm0                          #77.34 c17 stall 2
        call      __svml_cos8                                   #81.22 c19
                                # LOE rsi rdi r15 ebx r12d r13d r14d zmm0 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22
..B5.46:                        # Preds ..B5.20
        vmovaps   %zmm20, %zmm23                                #81.22 c1
        vmovdqu   576(%rsp), %ymm1                              #76.38 c1
        vfnmadd231pd %zmm19, %zmm0, %zmm23                      #81.22 c3
        vpaddd    736(%rsp), %ymm1, %ymm2                       #76.38 c7 stall 1
        vmovdqu   %ymm2, 576(%rsp)                              #76.38 c9
        vmulpd    %zmm23, %zmm17, %zmm24                        #81.22 c9
        vmulpd    %zmm16, %zmm24, %zmm25                        #82.22 c15 stall 2
        vmulpd    %zmm22, %zmm25, %zmm26                        #83.22 c21 stall 2
        vmovupd   %zmm26, (%rdi,%r15,8)                         #84.9 c27 stall 2
        addq      $8, %r15                                      #75.7 c27
        cmpq      %rsi, %r15                                    #75.7 c29
        jb        ..B5.20       # Prob 82%                      #75.7 c31
                                # LOE rsi rdi r15 ebx r12d r13d r14d zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22
..B5.22:                        # Preds ..B5.46 ..B5.18 ..B5.33
        lea       1(%r14), %eax                                 #75.7 c1
        cmpl      %eax, %r12d                                   #75.7 c3
        jae       ..B5.24       # Prob 50%                      #75.7 c5
                                # LOE ebx r12d r13d r14d
..B5.23:                        # Preds ..B5.22
        addl      $1, %r13d                                     #74.5 c1
        addl      %r12d, %ebx                                   #74.5 c1
        cmpl      512(%rsp), %r13d                              #74.5 c3
        jb        ..B5.7        # Prob 82%                      #74.5 c5
        jmp       ..B5.49       # Prob 100%                     #74.5 c5
                                # LOE ebx r12d r13d
..B5.24:                        # Preds ..B5.22
        vcvtsi2sd %r13d, %xmm16, %xmm16                         #82.22 c1
        vmovdqu   .L_2il0floatpacket.26(%rip), %ymm0            #75.7 c1
        vmovdqu   %ymm0, 608(%rsp)                              #75.7 c7 stall 2
        vmovd     %r14d, %xmm1                                  #76.38 c7
        xorl      %r15d, %r15d                                  #75.7 c7
        vaddsd    .L_2il0floatpacket.3(%rip), %xmm16, %xmm17    #82.22 c7
        vpbroadcastd %xmm1, %ymm2                               #76.38 c9
        vpaddd    .L_2il0floatpacket.15(%rip), %ymm2, %ymm3     #76.38 c11
        vmovdqu   %ymm3, 640(%rsp)                              #76.38 c13
        vmulsd    544(%rsp), %xmm17, %xmm0                      #82.22 c13
        call      cos                                           #82.22 c15
                                # LOE r15 ebx r12d r13d r14d xmm0
..B5.47:                        # Preds ..B5.24
        movl      464(%rsp), %edx                               #84.9 c1
        movl      $255, %eax                                    #75.7 c1
        vbroadcastsd %xmm0, %zmm16                              #82.29 c1
        vpxord    %zmm20, %zmm20, %zmm20                        #75.7 c1
        kmovw     %eax, %k4                                     #75.7 c3
        movl      %r12d, %eax                                   #75.7 c3
        vbroadcastsd .L_2il0floatpacket.16(%rip), %zmm24        #82.22 c5
        subl      %r14d, %eax                                   #75.7 c5
        movslq    %r14d, %r14                                   #84.9 c5
        lea       (%rdx,%rbx), %ecx                             #84.9 c7
        vmovd     %eax, %xmm1                                   #75.7 c7
        movq      472(%rsp), %rsi                               #84.9 c9
        movslq    %ecx, %rcx                                    #84.9 c9
        vpbroadcastd %xmm1, %ymm2                               #75.7 c9
        addq      %r14, %rcx                                    #84.9 c11
        negq      %r14                                          #75.7 c11
        vfnmadd231pd 128(%rsp), %zmm16, %zmm24                  #82.22 c11
        vmovaps   %zmm2, %zmm16                                 #75.7 c11
        vmovups   192(%rsp), %zmm17                             #75.7 c13
        lea       (%rsi,%rcx,8), %rsi                           #84.9 c17 stall 1
        addq      456(%rsp), %r14                               #75.7 c19
        vmovups   320(%rsp), %zmm18                             #75.7 c19
        vmovups   384(%rsp), %zmm23                             #75.7 c21
        vbroadcastsd .L_2il0floatpacket.16(%rip), %zmm22        #75.7 c25 stall 1
        vbroadcastsd .L_2il0floatpacket.27(%rip), %zmm19        #75.7 c27
        vbroadcastsd .L_2il0floatpacket.3(%rip), %zmm21         #75.7 c31 stall 1
                                # LOE rsi r14 r15 ebx r12d r13d zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 k4
..B5.25:                        # Preds ..B5.48 ..B5.47
        vmovdqu   640(%rsp), %ymm2                              #76.38 c1
        vmovdqu   608(%rsp), %ymm3                              #75.7 c1
        vmovaps   %zmm20, %zmm0                                 #81.22 c1
        vcvtdq2pd %ymm2, %zmm25                                 #77.29 c9
        vpcmpgtd  %zmm16, %zmm3, %k0{%k4}                       #75.7 c9
        vaddpd    %zmm25, %zmm21, %zmm26                        #77.34 c11
        knotw     %k0, %k5                                      #75.7 c11
        kmovw     %k5, %k1                                      #81.22 c13
        vmulpd    %zmm26, %zmm23, %zmm1                         #77.34 c17 stall 1
        call      __svml_cos8_mask                              #81.22 c19
                                # LOE rsi r14 r15 ebx r12d r13d zmm0 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 k4 k5
..B5.48:                        # Preds ..B5.25
        vmovaps   %zmm22, %zmm25                                #81.22 c1
        vmovdqu   608(%rsp), %ymm1                              #75.7 c1
        vmovdqu   640(%rsp), %ymm3                              #76.38 c1
        addq      $8, %r15                                      #75.7 c1
        vfnmadd231pd %zmm18, %zmm0, %zmm25                      #81.22 c3
        vpaddd    736(%rsp), %ymm1, %ymm2                       #75.7 c7 stall 1
        vmovdqu   %ymm2, 608(%rsp)                              #75.7 c9
        vmulpd    %zmm25, %zmm19, %zmm26                        #81.22 c9
        vpaddd    736(%rsp), %ymm3, %ymm4                       #76.38 c9
        vmovdqu   %ymm4, 640(%rsp)                              #76.38 c11
        vmulpd    %zmm24, %zmm26, %zmm27                        #82.22 c15 stall 1
        vmulpd    %zmm17, %zmm27, %zmm28                        #83.22 c21 stall 2
        vmovupd   %zmm28, (%rsi){%k5}                           #84.9 c27 stall 2
        addq      $64, %rsi                                     #75.7 c27
        cmpq      %r14, %r15                                    #75.7 c27
        jb        ..B5.25       # Prob 82%                      #75.7 c29
                                # LOE rsi r14 r15 ebx r12d r13d zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 k4
..B5.26:                        # Preds ..B5.48
        addl      $1, %r13d                                     #74.5 c1
        addl      %r12d, %ebx                                   #74.5 c1
        cmpl      512(%rsp), %r13d                              #74.5 c3
        jb        ..B5.7        # Prob 82%                      #74.5 c5
                                # LOE ebx r12d r13d
..B5.49:                        # Preds ..B5.23 ..B5.26
        movl      120(%rsp), %r15d                              # c1
        movl      512(%rsp), %edx                               # c1
        jmp       ..B5.5        # Prob 100%                     # c1
                                # LOE rdx r15 edx r12d r15d dl dh r15b
..B5.29:                        # Preds ..B5.35 ..B5.5          # Infreq
        movq      8(%rsp), %r12                                 # c1
..___tag_value_init.132:                                        #
                                # LOE r12
..B5.30:                        # Preds ..B5.29 ..B5.39         # Infreq
        movq      16(%rsp), %rbx                                #88.1 c1
..___tag_value_init.133:                                        #
        movq      40(%rsp), %r13                                #88.1 c1
..___tag_value_init.134:                                        #
        movq      32(%rsp), %r14                                #88.1 c5 stall 1
..___tag_value_init.135:                                        #
        movq      24(%rsp), %r15                                #88.1 c5
..___tag_value_init.136:                                        #
        movq      %rbp, %rsp                                    #88.1 c7
        popq      %rbp                                          #88.1
..___tag_value_init.137:                                        #
        ret                                                     #88.1
..___tag_value_init.139:                                        #
                                # LOE
..B5.31:                        # Preds ..B5.16                 # Infreq
        movl      536(%rsp), %eax                               #74.5 c1
        addl      %r12d, 528(%rsp)                              #74.5 c1
        addl      $1, %eax                                      #74.5 c5 stall 1
        movl      %eax, 536(%rsp)                               #74.5 c7
        cmpl      512(%rsp), %eax                               #74.5 c7
        jb        ..B5.9        # Prob 82%                      #74.5 c9
                                # LOE r12d
..B5.32:                        # Preds ..B5.31                 # Infreq
        movl      120(%rsp), %r15d                              # c1
        movl      512(%rsp), %edx                               # c1
        jmp       ..B5.5        # Prob 100%                     # c1
                                # LOE edx r12d r15d
..B5.33:                        # Preds ..B5.10                 # Infreq
        movl      %eax, %ebx                                    # c1
        movl      536(%rsp), %r13d                              # c1
        xorl      %r14d, %r14d                                  #75.7 c1
        jmp       ..B5.22       # Prob 100%                     #75.7 c1
                                # LOE ebx r12d r13d r14d
..B5.34:                        # Preds ..B5.7                  # Infreq
        movl      112(%rsp), %r14d                              #75.7 c1
        xorl      %r15d, %r15d                                  #75.7 c1
        jmp       ..B5.18       # Prob 100%                     #75.7 c1
                                # LOE ebx r12d r13d r14d r15d
..B5.35:                        # Preds ..B5.3                  # Infreq
        addl      $1, %r15d                                     #73.3 c1
        cmpl      448(%rsp), %r15d                              #73.3 c3
        jb        ..B5.3        # Prob 82%                      #73.3 c5
        jmp       ..B5.29       # Prob 100%                     #73.3 c5
        .align    16,0x90
..___tag_value_init.146:                                        #
                                # LOE edx r12d r15d
# mark_end;
	.type	init,@function
	.size	init,.-init
	.data
# -- End  init
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.0:
	.long	0x54442d18,0x3f9921fb,0x54442d18,0x3f9921fb,0x54442d18,0x3f9921fb,0x54442d18,0x3f9921fb,0x54442d18,0x3f9921fb,0x54442d18,0x3f9921fb,0x54442d18,0x3f9921fb,0x54442d18,0x3f9921fb
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,64
	.align 64
.L_2il0floatpacket.1:
	.long	0x00000000,0x3fe00000,0x00000000,0x3fe00000,0x00000000,0x3fe00000,0x00000000,0x3fe00000,0x00000000,0x3fe00000,0x00000000,0x3fe00000,0x00000000,0x3fe00000,0x00000000,0x3fe00000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,64
	.align 64
.L_2il0floatpacket.4:
	.long	0x00000000,0x3fc00000,0x00000000,0x3fc00000,0x00000000,0x3fc00000,0x00000000,0x3fc00000,0x00000000,0x3fc00000,0x00000000,0x3fc00000,0x00000000,0x3fc00000,0x00000000,0x3fc00000
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,64
	.align 64
.L_2il0floatpacket.5:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,64
	.align 64
.L_2il0floatpacket.9:
	.long	0x8b6320fc,0x3fefdffc,0x8b6320fc,0x3fefdffc,0x8b6320fc,0x3fefdffc,0x8b6320fc,0x3fefdffc,0x8b6320fc,0x3fefdffc,0x8b6320fc,0x3fefdffc,0x8b6320fc,0x3fefdffc,0x8b6320fc,0x3fefdffc
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,64
	.align 64
.L_2il0floatpacket.21:
	.long	0x00000000,0x00000000,0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000,0x00000007,0x00000000
	.type	.L_2il0floatpacket.21,@object
	.size	.L_2il0floatpacket.21,64
	.align 64
.L_2il0floatpacket.22:
	.long	0x00000000,0x00000000,0x00000000,0x00000000,0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000
	.type	.L_2il0floatpacket.22,@object
	.size	.L_2il0floatpacket.22,64
	.align 64
.L_2il0floatpacket.23:
	.long	0xffffffff,0xffffffff,0x00000000,0x00000000,0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000
	.type	.L_2il0floatpacket.23,@object
	.size	.L_2il0floatpacket.23,64
	.align 64
.L_2il0floatpacket.24:
	.long	0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000,0x00000007,0x00000000,0x00000008,0x00000000
	.type	.L_2il0floatpacket.24,@object
	.size	.L_2il0floatpacket.24,64
	.align 64
.L_2il0floatpacket.25:
	.long	0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000,0x00000007,0x00000000,0x00000007,0x00000000
	.type	.L_2il0floatpacket.25,@object
	.size	.L_2il0floatpacket.25,64
	.align 32
.L_2il0floatpacket.15:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007
	.type	.L_2il0floatpacket.15,@object
	.size	.L_2il0floatpacket.15,32
	.align 32
.L_2il0floatpacket.26:
	.long	0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008
	.type	.L_2il0floatpacket.26,@object
	.size	.L_2il0floatpacket.26,32
	.align 16
.L_2il0floatpacket.28:
	.long	0x00000000,0x80000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.28,@object
	.size	.L_2il0floatpacket.28,16
	.align 8
.L_2il0floatpacket.2:
	.long	0x54442d18,0x3f9921fb
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,8
	.align 8
.L_2il0floatpacket.3:
	.long	0x00000000,0x3fe00000
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
	.align 8
.L_2il0floatpacket.6:
	.long	0x9999999a,0x3fb99999
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,8
	.align 8
.L_2il0floatpacket.7:
	.long	0x9999999a,0x3fd99999
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,8
	.align 8
.L_2il0floatpacket.8:
	.long	0x00000000,0x3ef00000
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,8
	.align 8
.L_2il0floatpacket.10:
	.long	0xe826d695,0x3e112e0b
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,8
	.align 8
.L_2il0floatpacket.11:
	.long	0x00000000,0x420a6800
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,8
	.align 8
.L_2il0floatpacket.12:
	.long	0x00000000,0x42186000
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,8
	.align 8
.L_2il0floatpacket.13:
	.long	0x00000000,0x3e700000
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,8
	.align 8
.L_2il0floatpacket.14:
	.long	0x00000000,0x40504000
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,8
	.align 8
.L_2il0floatpacket.16:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.16,@object
	.size	.L_2il0floatpacket.16,8
	.align 8
.L_2il0floatpacket.17:
	.long	0x00000000,0x405b0000
	.type	.L_2il0floatpacket.17,@object
	.size	.L_2il0floatpacket.17,8
	.align 8
.L_2il0floatpacket.18:
	.long	0x00000000,0xbff00000
	.type	.L_2il0floatpacket.18,@object
	.size	.L_2il0floatpacket.18,8
	.align 8
.L_2il0floatpacket.19:
	.long	0x00000000,0xc04b0000
	.type	.L_2il0floatpacket.19,@object
	.size	.L_2il0floatpacket.19,8
	.align 8
.L_2il0floatpacket.20:
	.long	0x03131121,0x00000000
	.type	.L_2il0floatpacket.20,@object
	.size	.L_2il0floatpacket.20,8
	.align 8
.L_2il0floatpacket.27:
	.long	0x00000000,0x3fc00000
	.type	.L_2il0floatpacket.27,@object
	.size	.L_2il0floatpacket.27,8
	.align 1
__$U1:
	.long	1852399981
	.byte	0
	.type	__$U1,@object
	.size	__$U1,5
	.align 1
__$U0:
	.long	1886221668
	.long	1936028255
	.long	7629941
	.type	__$U0,@object
	.size	__$U0,12
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.6:
	.long	1852732754
	.long	543649385
	.long	1717987684
	.long	1869181813
	.long	1701519470
	.long	1818586738
	.long	543434016
	.long	1701669236
	.long	1310731379
	.long	1936269400
	.long	174335264
	.byte	0
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,45
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.long	1885432901
	.long	543450483
	.long	1701669236
	.long	622869024
	.long	543568686
	.long	170488616
	.byte	0
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,25
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.8:
	.long	1347374150
	.long	538976339
	.long	538976288
	.long	622869024
	.long	543568686
	.long	1816545064
	.long	695431279
	.word	10
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,30
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.9:
	.long	1869768788
	.long	1885890421
	.long	538997877
	.long	622869024
	.long	543568686
	.long	792872744
	.long	665971
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,28
	.align 4
.L_2__STRING.10:
	.long	1969447745
	.long	2036556146
	.long	538976288
	.long	622869024
	.word	2661
	.byte	0
	.type	.L_2__STRING.10,@object
	.size	.L_2__STRING.10,19
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	2004053601
	.long	555774565
	.long	673718333
	.long	1684631414
	.long	691022122
	.byte	0
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,21
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	1702060386
	.long	1952540511
	.long	779249000
	.long	778858091
	.word	99
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,18
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	555758182
	.long	673718333
	.long	1684631414
	.long	691022122
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,17
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	555757926
	.long	673718333
	.long	1684631414
	.long	691022122
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,17
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.0:
	.word	119
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	7632239
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,4
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x00000014
	.8byte 0x7801000100000000
	.8byte 0x0000019008070c10
	.4byte 0x00000000
	.4byte 0x00000144
	.4byte 0x0000001c
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.43-..___tag_value_main.1
	.byte 0x04
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.6-..___tag_value_main.4
	.8byte 0xff800d1c380e0310
	.8byte 0xffffff500d1affff
	.8byte 0x800d1c380e0e1022
	.8byte 0xffff400d1affffff
	.8byte 0x0d1c380e0f1022ff
	.8byte 0xff480d1affffff80
	.4byte 0x0422ffff
	.4byte ..___tag_value_main.11-..___tag_value_main.6
	.8byte 0xff800d1c380e0c10
	.8byte 0xffffff180d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.12-..___tag_value_main.11
	.8byte 0xff800d1c380e0d10
	.8byte 0xffffff200d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.13-..___tag_value_main.12
	.2byte 0x04cc
	.4byte ..___tag_value_main.14-..___tag_value_main.13
	.2byte 0x04cd
	.4byte ..___tag_value_main.16-..___tag_value_main.14
	.8byte 0xff800d1c380e0c10
	.8byte 0xffffff180d1affff
	.8byte 0x800d1c380e0d1022
	.8byte 0xffff200d1affffff
	.2byte 0x22ff
	.byte 0x04
	.4byte ..___tag_value_main.25-..___tag_value_main.16
	.2byte 0x04cc
	.4byte ..___tag_value_main.26-..___tag_value_main.25
	.8byte 0x800d1c380e0c10cd
	.8byte 0xffff180d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xff200d1affffff80
	.4byte 0x0422ffff
	.4byte ..___tag_value_main.31-..___tag_value_main.26
	.2byte 0x04c3
	.4byte ..___tag_value_main.32-..___tag_value_main.31
	.2byte 0x04ce
	.4byte ..___tag_value_main.33-..___tag_value_main.32
	.2byte 0x04cf
	.4byte ..___tag_value_main.34-..___tag_value_main.33
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_main.36-..___tag_value_main.34
	.8byte 0x1c380e031010060c
	.8byte 0x500d1affffff800d
	.8byte 0xcdcc028622ffffff
	.8byte 0xff800d1c380e0e10
	.8byte 0xffffff400d1affff
	.8byte 0x800d1c380e0f1022
	.8byte 0xffff480d1affffff
	.2byte 0x22ff
	.4byte 0x00000104
	.4byte 0x00000164
	.8byte ..___tag_value_diffusion_baseline.44
	.8byte ..___tag_value_diffusion_baseline.97-..___tag_value_diffusion_baseline.44
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.46-..___tag_value_diffusion_baseline.44
	.4byte 0x0401d00e
	.4byte ..___tag_value_diffusion_baseline.47-..___tag_value_diffusion_baseline.46
	.2byte 0x080e
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.48-..___tag_value_diffusion_baseline.47
	.4byte 0x0401d00e
	.4byte ..___tag_value_diffusion_baseline.49-..___tag_value_diffusion_baseline.48
	.8byte 0x158e188d198c1383
	.2byte 0x148f
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.54-..___tag_value_diffusion_baseline.49
	.4byte 0xcecdccc3
	.2byte 0x04cf
	.4byte ..___tag_value_diffusion_baseline.59-..___tag_value_diffusion_baseline.54
	.4byte 0x158e1383
	.2byte 0x148f
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.62-..___tag_value_diffusion_baseline.59
	.4byte 0x188d198c
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.64-..___tag_value_diffusion_baseline.62
	.2byte 0x04cc
	.4byte ..___tag_value_diffusion_baseline.65-..___tag_value_diffusion_baseline.64
	.2byte 0x04cd
	.4byte ..___tag_value_diffusion_baseline.66-..___tag_value_diffusion_baseline.65
	.4byte 0x188d198c
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.68-..___tag_value_diffusion_baseline.66
	.2byte 0x04cc
	.4byte ..___tag_value_diffusion_baseline.69-..___tag_value_diffusion_baseline.68
	.2byte 0x04cd
	.4byte ..___tag_value_diffusion_baseline.70-..___tag_value_diffusion_baseline.69
	.4byte 0x188d198c
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.72-..___tag_value_diffusion_baseline.70
	.2byte 0x04cc
	.4byte ..___tag_value_diffusion_baseline.73-..___tag_value_diffusion_baseline.72
	.2byte 0x04cd
	.4byte ..___tag_value_diffusion_baseline.74-..___tag_value_diffusion_baseline.73
	.2byte 0x04ce
	.4byte ..___tag_value_diffusion_baseline.75-..___tag_value_diffusion_baseline.74
	.2byte 0x04cf
	.4byte ..___tag_value_diffusion_baseline.76-..___tag_value_diffusion_baseline.75
	.8byte 0x04148f158e1383c3
	.4byte ..___tag_value_diffusion_baseline.80-..___tag_value_diffusion_baseline.76
	.4byte 0x188d198c
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.82-..___tag_value_diffusion_baseline.80
	.2byte 0x04cc
	.4byte ..___tag_value_diffusion_baseline.83-..___tag_value_diffusion_baseline.82
	.2byte 0x04cd
	.4byte ..___tag_value_diffusion_baseline.84-..___tag_value_diffusion_baseline.83
	.4byte 0x188d198c
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.86-..___tag_value_diffusion_baseline.84
	.2byte 0x04cc
	.4byte ..___tag_value_diffusion_baseline.87-..___tag_value_diffusion_baseline.86
	.2byte 0x04cd
	.4byte ..___tag_value_diffusion_baseline.88-..___tag_value_diffusion_baseline.87
	.2byte 0x04ce
	.4byte ..___tag_value_diffusion_baseline.89-..___tag_value_diffusion_baseline.88
	.2byte 0x04cf
	.4byte ..___tag_value_diffusion_baseline.90-..___tag_value_diffusion_baseline.89
	.2byte 0x04c3
	.4byte ..___tag_value_diffusion_baseline.91-..___tag_value_diffusion_baseline.90
	.4byte 0x158e1383
	.2byte 0x148f
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.94-..___tag_value_diffusion_baseline.91
	.2byte 0x04ce
	.4byte ..___tag_value_diffusion_baseline.95-..___tag_value_diffusion_baseline.94
	.2byte 0x04cf
	.4byte ..___tag_value_diffusion_baseline.96-..___tag_value_diffusion_baseline.95
	.4byte 0x000000c3
	.2byte 0x0000
	.4byte 0x00000014
	.4byte 0x0000026c
	.8byte ..___tag_value_accuracy.98
	.8byte ..___tag_value_accuracy.100-..___tag_value_accuracy.98
	.4byte 0x0000006c
	.4byte 0x00000284
	.8byte ..___tag_value_dump_result.101
	.8byte ..___tag_value_dump_result.121-..___tag_value_dump_result.101
	.byte 0x04
	.4byte ..___tag_value_dump_result.103-..___tag_value_dump_result.101
	.2byte 0x300e
	.byte 0x04
	.4byte ..___tag_value_dump_result.104-..___tag_value_dump_result.103
	.2byte 0x058f
	.byte 0x04
	.4byte ..___tag_value_dump_result.105-..___tag_value_dump_result.104
	.2byte 0x048e
	.byte 0x04
	.4byte ..___tag_value_dump_result.106-..___tag_value_dump_result.105
	.4byte 0x02860683
	.2byte 0x038d
	.byte 0x04
	.4byte ..___tag_value_dump_result.109-..___tag_value_dump_result.106
	.2byte 0x04c3
	.4byte ..___tag_value_dump_result.110-..___tag_value_dump_result.109
	.2byte 0x04c6
	.4byte ..___tag_value_dump_result.111-..___tag_value_dump_result.110
	.2byte 0x04cd
	.4byte ..___tag_value_dump_result.112-..___tag_value_dump_result.111
	.2byte 0x04ce
	.4byte ..___tag_value_dump_result.113-..___tag_value_dump_result.112
	.2byte 0x04cf
	.4byte ..___tag_value_dump_result.114-..___tag_value_dump_result.113
	.2byte 0x080e
	.byte 0x04
	.4byte ..___tag_value_dump_result.115-..___tag_value_dump_result.114
	.8byte 0x038d02860683300e
	.4byte 0x058f048e
	.2byte 0x0000
	.4byte 0x0000011c
	.4byte 0x000002f4
	.8byte ..___tag_value_init.122
	.8byte ..___tag_value_init.146-..___tag_value_init.122
	.byte 0x04
	.4byte ..___tag_value_init.124-..___tag_value_init.122
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_init.125-..___tag_value_init.124
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_init.127-..___tag_value_init.125
	.8byte 0xffc00d1c380e0310
	.8byte 0xfffffd100d1affff
	.2byte 0x0422
	.4byte ..___tag_value_init.128-..___tag_value_init.127
	.8byte 0xffc00d1c380e0f10
	.8byte 0xfffffd180d1affff
	.2byte 0x0422
	.4byte ..___tag_value_init.129-..___tag_value_init.128
	.8byte 0xffc00d1c380e0e10
	.8byte 0xfffffd200d1affff
	.2byte 0x0422
	.4byte ..___tag_value_init.130-..___tag_value_init.129
	.8byte 0xffc00d1c380e0d10
	.8byte 0xfffffd280d1affff
	.2byte 0x0422
	.4byte ..___tag_value_init.131-..___tag_value_init.130
	.8byte 0xffc00d1c380e0c10
	.8byte 0xfffffd080d1affff
	.2byte 0x0422
	.4byte ..___tag_value_init.132-..___tag_value_init.131
	.2byte 0x04cc
	.4byte ..___tag_value_init.133-..___tag_value_init.132
	.2byte 0x04c3
	.4byte ..___tag_value_init.134-..___tag_value_init.133
	.2byte 0x04cd
	.4byte ..___tag_value_init.135-..___tag_value_init.134
	.2byte 0x04ce
	.4byte ..___tag_value_init.136-..___tag_value_init.135
	.2byte 0x04cf
	.4byte ..___tag_value_init.137-..___tag_value_init.136
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_init.139-..___tag_value_init.137
	.8byte 0x1c380e031010060c
	.8byte 0x100d1affffffc00d
	.8byte 0x0c10028622fffffd
	.8byte 0xffffffc00d1c380e
	.8byte 0x1022fffffd080d1a
	.8byte 0xffffc00d1c380e0d
	.8byte 0x22fffffd280d1aff
	.8byte 0xffc00d1c380e0e10
	.8byte 0xfffffd200d1affff
	.8byte 0xc00d1c380e0f1022
	.8byte 0xfffd180d1affffff
	.4byte 0x000022ff
	.byte 0x00
# End
