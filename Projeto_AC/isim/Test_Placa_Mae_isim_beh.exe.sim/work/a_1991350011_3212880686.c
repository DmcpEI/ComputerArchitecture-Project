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
static const char *ng0 = "/home/ise/Projects/Projeto_AC/PC.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1991350011_3212880686_p_0(char *t0)
{
    char t10[16];
    char t14[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3264);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 5075);
    t4 = (t0 + 1968U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 8U);

LAB6:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1968U);
    t3 = *((char **)t1);
    t1 = (t0 + 3344);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1512U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)2);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 1968U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    memcpy(t1, t3, 8U);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 1968U);
    t11 = *((char **)t3);
    t3 = (t0 + 5024U);
    t12 = (t0 + 5067);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 7;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (7 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t16 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t10, t11, t3, t12, t14);
    t19 = (t0 + 1968U);
    t20 = *((char **)t19);
    t19 = (t20 + 0);
    t21 = (t10 + 12U);
    t18 = *((unsigned int *)t21);
    t22 = (1U * t18);
    memcpy(t19, t16, t22);
    goto LAB9;

}


extern void work_a_1991350011_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1991350011_3212880686_p_0};
	xsi_register_didat("work_a_1991350011_3212880686", "isim/Test_Placa_Mae_isim_beh.exe.sim/work/a_1991350011_3212880686.didat");
	xsi_register_executes(pe);
}
