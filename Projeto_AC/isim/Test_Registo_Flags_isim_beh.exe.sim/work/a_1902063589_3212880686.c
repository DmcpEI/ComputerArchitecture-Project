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
static const char *ng0 = "/home/ise/Projects/Projeto_AC/Registo_Flags.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1902063589_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    char *t24;
    int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = xsi_mem_cmp(t1, t3, 3U);
    if (t5 == 1)
        goto LAB9;

LAB15:    t11 = (t0 + 5171);
    t14 = xsi_mem_cmp(t11, t3, 3U);
    if (t14 == 1)
        goto LAB10;

LAB16:    t13 = (t0 + 5174);
    t16 = xsi_mem_cmp(t13, t3, 3U);
    if (t16 == 1)
        goto LAB11;

LAB17:    t17 = (t0 + 5177);
    t19 = xsi_mem_cmp(t17, t3, 3U);
    if (t19 == 1)
        goto LAB12;

LAB18:    t20 = (t0 + 5180);
    t22 = xsi_mem_cmp(t20, t3, 3U);
    if (t22 == 1)
        goto LAB13;

LAB19:
LAB14:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3344);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    t1 = (t0 + 3264);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = (1 - 1);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(30, ng0);
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t11 = (t0 + 1968U);
    t13 = *((char **)t11);
    t11 = (t13 + 0);
    memcpy(t11, t12, 5U);
    goto LAB6;

LAB9:    xsi_set_current_line(40, ng0);
    t23 = (t0 + 1968U);
    t24 = *((char **)t23);
    t25 = (0 - 4);
    t6 = (t25 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t23 = (t24 + t8);
    t2 = *((unsigned char *)t23);
    t26 = (t0 + 3344);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = t2;
    xsi_driver_first_trans_fast_port(t26);
    goto LAB8;

LAB10:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1968U);
    t3 = *((char **)t1);
    t5 = (1 - 4);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3344);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    *((unsigned char *)t15) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB11:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1968U);
    t3 = *((char **)t1);
    t5 = (2 - 4);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3344);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    *((unsigned char *)t15) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB12:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1968U);
    t3 = *((char **)t1);
    t5 = (3 - 4);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3344);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    *((unsigned char *)t15) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB13:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1968U);
    t3 = *((char **)t1);
    t5 = (4 - 4);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3344);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    *((unsigned char *)t15) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB20:;
}


extern void work_a_1902063589_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1902063589_3212880686_p_0};
	xsi_register_didat("work_a_1902063589_3212880686", "isim/Test_Registo_Flags_isim_beh.exe.sim/work/a_1902063589_3212880686.didat");
	xsi_register_executes(pe);
}
