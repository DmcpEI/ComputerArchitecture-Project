/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Projects/Projeto_AC/Banco_de_Registos.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1176868809_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    char *t26;
    int t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    char *t32;
    int t33;
    char *t34;
    char *t35;
    int t36;
    char *t37;
    char *t38;
    int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (0 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = (5 - 2);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t9 = (t0 + 7761);
    t3 = xsi_mem_cmp(t9, t1, 3U);
    if (t3 == 1)
        goto LAB28;

LAB37:    t12 = (t0 + 7764);
    t18 = xsi_mem_cmp(t12, t1, 3U);
    if (t18 == 1)
        goto LAB29;

LAB38:    t17 = (t0 + 7767);
    t21 = xsi_mem_cmp(t17, t1, 3U);
    if (t21 == 1)
        goto LAB30;

LAB39:    t20 = (t0 + 7770);
    t24 = xsi_mem_cmp(t20, t1, 3U);
    if (t24 == 1)
        goto LAB31;

LAB40:    t23 = (t0 + 7773);
    t27 = xsi_mem_cmp(t23, t1, 3U);
    if (t27 == 1)
        goto LAB32;

LAB41:    t26 = (t0 + 7776);
    t30 = xsi_mem_cmp(t26, t1, 3U);
    if (t30 == 1)
        goto LAB33;

LAB42:    t29 = (t0 + 7779);
    t33 = xsi_mem_cmp(t29, t1, 3U);
    if (t33 == 1)
        goto LAB34;

LAB43:    t32 = (t0 + 7782);
    t36 = xsi_mem_cmp(t32, t1, 3U);
    if (t36 == 1)
        goto LAB35;

LAB44:
LAB36:    xsi_set_current_line(65, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)1, 8U);
    t9 = (t0 + 5176);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 8U);
    xsi_driver_first_trans_fast_port(t9);

LAB27:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = (5 - 5);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t9 = (t0 + 7785);
    t3 = xsi_mem_cmp(t9, t1, 3U);
    if (t3 == 1)
        goto LAB47;

LAB56:    t12 = (t0 + 7788);
    t18 = xsi_mem_cmp(t12, t1, 3U);
    if (t18 == 1)
        goto LAB48;

LAB57:    t17 = (t0 + 7791);
    t21 = xsi_mem_cmp(t17, t1, 3U);
    if (t21 == 1)
        goto LAB49;

LAB58:    t20 = (t0 + 7794);
    t24 = xsi_mem_cmp(t20, t1, 3U);
    if (t24 == 1)
        goto LAB50;

LAB59:    t23 = (t0 + 7797);
    t27 = xsi_mem_cmp(t23, t1, 3U);
    if (t27 == 1)
        goto LAB51;

LAB60:    t26 = (t0 + 7800);
    t30 = xsi_mem_cmp(t26, t1, 3U);
    if (t30 == 1)
        goto LAB52;

LAB61:    t29 = (t0 + 7803);
    t33 = xsi_mem_cmp(t29, t1, 3U);
    if (t33 == 1)
        goto LAB53;

LAB62:    t32 = (t0 + 7806);
    t36 = xsi_mem_cmp(t32, t1, 3U);
    if (t36 == 1)
        goto LAB54;

LAB63:
LAB55:    xsi_set_current_line(82, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)1, 8U);
    t9 = (t0 + 5240);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 8U);
    xsi_driver_first_trans_fast_port(t9);

LAB46:    t1 = (t0 + 4584);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t9 = (t0 + 1152U);
    t10 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t9, 0U, 0U);
    if (t10 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(30, ng0);
    t11 = (t0 + 1352U);
    t12 = *((char **)t11);
    t13 = (5 - 2);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t11 = (t12 + t15);
    t16 = (t0 + 7737);
    t18 = xsi_mem_cmp(t16, t11, 3U);
    if (t18 == 1)
        goto LAB9;

LAB18:    t19 = (t0 + 7740);
    t21 = xsi_mem_cmp(t19, t11, 3U);
    if (t21 == 1)
        goto LAB10;

LAB19:    t22 = (t0 + 7743);
    t24 = xsi_mem_cmp(t22, t11, 3U);
    if (t24 == 1)
        goto LAB11;

LAB20:    t25 = (t0 + 7746);
    t27 = xsi_mem_cmp(t25, t11, 3U);
    if (t27 == 1)
        goto LAB12;

LAB21:    t28 = (t0 + 7749);
    t30 = xsi_mem_cmp(t28, t11, 3U);
    if (t30 == 1)
        goto LAB13;

LAB22:    t31 = (t0 + 7752);
    t33 = xsi_mem_cmp(t31, t11, 3U);
    if (t33 == 1)
        goto LAB14;

LAB23:    t34 = (t0 + 7755);
    t36 = xsi_mem_cmp(t34, t11, 3U);
    if (t36 == 1)
        goto LAB15;

LAB24:    t37 = (t0 + 7758);
    t39 = xsi_mem_cmp(t37, t11, 3U);
    if (t39 == 1)
        goto LAB16;

LAB25:
LAB17:    xsi_set_current_line(43, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)1, 8U);
    t9 = (t0 + 5176);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(44, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)1, 8U);
    t9 = (t0 + 5240);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 8U);
    xsi_driver_first_trans_fast_port(t9);

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(33, ng0);
    t40 = (t0 + 1512U);
    t41 = *((char **)t40);
    t40 = (t0 + 4664);
    t42 = (t40 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t41, 8U);
    xsi_driver_first_trans_fast(t40);
    goto LAB8;

LAB10:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4728);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB11:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4792);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB12:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4856);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB13:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4920);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB14:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB15:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5048);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB16:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5112);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB26:;
LAB28:    xsi_set_current_line(56, ng0);
    t35 = (t0 + 1992U);
    t37 = *((char **)t35);
    t35 = (t0 + 5176);
    t38 = (t35 + 56U);
    t40 = *((char **)t38);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memcpy(t42, t37, 8U);
    xsi_driver_first_trans_fast_port(t35);
    goto LAB27;

LAB29:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB27;

LAB30:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB27;

LAB31:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB27;

LAB32:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB27;

LAB33:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB27;

LAB34:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB27;

LAB35:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB27;

LAB45:;
LAB47:    xsi_set_current_line(73, ng0);
    t35 = (t0 + 1992U);
    t37 = *((char **)t35);
    t35 = (t0 + 5240);
    t38 = (t35 + 56U);
    t40 = *((char **)t38);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memcpy(t42, t37, 8U);
    xsi_driver_first_trans_fast_port(t35);
    goto LAB46;

LAB48:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5240);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB46;

LAB49:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5240);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB46;

LAB50:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5240);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB46;

LAB51:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5240);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB46;

LAB52:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5240);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB46;

LAB53:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 5240);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB46;

LAB54:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 5240);
    t9 = (t1 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB46;

LAB64:;
}


extern void work_a_1176868809_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1176868809_3212880686_p_0};
	xsi_register_didat("work_a_1176868809_3212880686", "isim/Test_Placa_Mae_isim_beh.exe.sim/work/a_1176868809_3212880686.didat");
	xsi_register_executes(pe);
}
