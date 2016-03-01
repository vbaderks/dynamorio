/* **********************************************************
 * Copyright (c) 2016 ARM Limited. All rights reserved.
 * **********************************************************/

/*
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice,
 *   this list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 *
 * * Neither the name of ARM Limited nor the names of its contributors may be
 *   used to endorse or promote products derived from this software without
 *   specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL ARM LIMITED OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
 * DAMAGE.
 */

/***************************************************************************
 * assembly utilities for which there are no intrinsics
 */

#include "cpp2asm_defines.h"

START_FILE

#define FUNCNAME replace_native_xfer
        DECLARE_FUNC(FUNCNAME)
GLOBAL_LABEL(FUNCNAME:)
        bl       GLOBAL_REF(unexpected_return) /* FIXME i#1569 */
        END_FUNC(FUNCNAME)
#undef FUNCNAME

DECLARE_GLOBAL(replace_native_ret_imms)
DECLARE_GLOBAL(replace_native_ret_imms_end)
#define FUNCNAME replace_native_rets
        DECLARE_FUNC(FUNCNAME)
GLOBAL_LABEL(FUNCNAME:)
ADDRTAKEN_LABEL(replace_native_ret_imms:)
ADDRTAKEN_LABEL(replace_native_ret_imms_end:)
        bl       GLOBAL_REF(unexpected_return) /* FIXME i#1569 */
        END_FUNC(FUNCNAME)
#undef FUNCNAME

#define FUNCNAME get_cur_xsp
        DECLARE_FUNC(FUNCNAME)
GLOBAL_LABEL(FUNCNAME:)
        bl       GLOBAL_REF(unexpected_return) /* FIXME i#1569 */
        END_FUNC(FUNCNAME)

END_FILE
