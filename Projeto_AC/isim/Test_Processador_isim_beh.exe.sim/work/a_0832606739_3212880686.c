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
static const char *ng0 = "/home/ise/Projects/Projeto_AC/ALU.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833316239837_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16447329934917513135_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16447329948342641973_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1306455576395559435_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1306455576397931277_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1366267000076357978_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t29[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;

LAB0:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5292);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB13:    t5 = (t0 + 5296);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB14:    t8 = (t0 + 5300);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB15:    t11 = (t0 + 5304);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB16:    t14 = (t0 + 5308);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB17:    t17 = (t0 + 5312);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB18:    t20 = (t0 + 5316);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB19:    t23 = (t0 + 5320);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB20:    t26 = (t0 + 5324);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB21:
LAB12:    xsi_set_current_line(57, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)1, 5U);
    t3 = (t0 + 3344);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 3408);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3264);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(29, ng0);
    t30 = (t0 + 1192U);
    t31 = *((char **)t30);
    t30 = (t0 + 5176U);
    t32 = (t0 + 1352U);
    t33 = *((char **)t32);
    t32 = (t0 + 5192U);
    t34 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t29, t31, t30, t33, t32);
    t35 = (t0 + 1968U);
    t36 = *((char **)t35);
    t35 = (t36 + 0);
    t37 = (t29 + 12U);
    t38 = *((unsigned int *)t37);
    t39 = (1U * t38);
    memcpy(t35, t34, t39);
    goto LAB2;

LAB4:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t6 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB5:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t6 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB6:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t6 = ieee_p_2592010699_sub_16447329934917513135_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB7:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t6 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB8:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t6 = ieee_p_2592010699_sub_16439989833316239837_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB9:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t6 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB10:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t6 = ieee_p_2592010699_sub_16447329948342641973_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB11:    xsi_set_current_line(39, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)2, 5U);
    t3 = (t0 + 3344);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t40 = ieee_p_3620187407_sub_1366267000076357978_3965413181(IEEE_P_3620187407, t2, t1, t5, t3);
    if (t40 != 0)
        goto LAB23;

LAB25:
LAB24:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t40 = ieee_p_3620187407_sub_1306455576395559435_3965413181(IEEE_P_3620187407, t2, t1, t5, t3);
    if (t40 != 0)
        goto LAB26;

LAB28:
LAB27:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t40 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t3);
    if (t40 != 0)
        goto LAB29;

LAB31:
LAB30:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t40 = ieee_p_3620187407_sub_1306455576397931277_3965413181(IEEE_P_3620187407, t2, t1, t5, t3);
    if (t40 != 0)
        goto LAB32;

LAB34:
LAB33:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5192U);
    t40 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t3);
    if (t40 != 0)
        goto LAB35;

LAB37:
LAB36:    goto LAB2;

LAB22:;
LAB23:    xsi_set_current_line(42, ng0);
    t6 = (t0 + 3344);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 4U, 1, 0LL);
    goto LAB24;

LAB26:    xsi_set_current_line(45, ng0);
    t6 = (t0 + 3344);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 3U, 1, 0LL);
    goto LAB27;

LAB29:    xsi_set_current_line(48, ng0);
    t6 = (t0 + 3344);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 2U, 1, 0LL);
    goto LAB30;

LAB32:    xsi_set_current_line(51, ng0);
    t6 = (t0 + 3344);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 1U, 1, 0LL);
    goto LAB33;

LAB35:    xsi_set_current_line(54, ng0);
    t6 = (t0 + 3344);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 0U, 1, 0LL);
    goto LAB36;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/Test_Processador_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
