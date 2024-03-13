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
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1176868809_3212880686_p_0(char *t0)
{
    char t18[16];
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
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

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
LAB3:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t9 = *((char **)t1);
    t4 = (5 - 2);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t9 + t6);
    t11 = (t18 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 2;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t3 = (0 - 2);
    t15 = (t3 * -1);
    t15 = (t15 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t15;
    t21 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t1, t18);
    t23 = (t21 - 0);
    t15 = (t23 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t16 = (8U * t15);
    t17 = (0 + t16);
    t12 = (t2 + t17);
    t13 = (t0 + 3504);
    t14 = (t13 + 56U);
    t19 = *((char **)t14);
    t20 = (t19 + 56U);
    t27 = *((char **)t20);
    memcpy(t27, t12, 8U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t9 = *((char **)t1);
    t4 = (5 - 5);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t9 + t6);
    t11 = (t18 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 5;
    t12 = (t11 + 4U);
    *((int *)t12) = 3;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t3 = (3 - 5);
    t15 = (t3 * -1);
    t15 = (t15 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t15;
    t21 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t1, t18);
    t23 = (t21 - 0);
    t15 = (t23 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t16 = (8U * t15);
    t17 = (0 + t16);
    t12 = (t2 + t17);
    t13 = (t0 + 3568);
    t14 = (t13 + 56U);
    t19 = *((char **)t14);
    t20 = (t19 + 56U);
    t27 = *((char **)t20);
    memcpy(t27, t12, 8U);
    xsi_driver_first_trans_fast_port(t13);
    t1 = (t0 + 3424);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t9 = (t0 + 1152U);
    t10 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t9, 0U, 0U);
    if (t10 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(29, ng0);
    t11 = (t0 + 1512U);
    t12 = *((char **)t11);
    t11 = (t0 + 2128U);
    t13 = *((char **)t11);
    t11 = (t0 + 1352U);
    t14 = *((char **)t11);
    t15 = (5 - 2);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t11 = (t14 + t17);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 2;
    t20 = (t19 + 4U);
    *((int *)t20) = 0;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 2);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    t23 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t11, t18);
    t24 = (t23 - 0);
    t22 = (t24 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t23);
    t25 = (8U * t22);
    t26 = (0 + t25);
    t20 = (t13 + t26);
    memcpy(t20, t12, 8U);
    goto LAB6;

}


extern void work_a_1176868809_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1176868809_3212880686_p_0};
	xsi_register_didat("work_a_1176868809_3212880686", "isim/Test_Banco_de_Registos_isim_beh.exe.sim/work/a_1176868809_3212880686.didat");
	xsi_register_executes(pe);
}
