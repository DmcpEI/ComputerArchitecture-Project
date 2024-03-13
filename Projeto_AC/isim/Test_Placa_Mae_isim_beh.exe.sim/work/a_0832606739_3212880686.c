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
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_0774719531_sub_1306448836232530671_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_1306448836232566608_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_1306455576395559435_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_1306455576397931277_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_1366267000076357978_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_1496620905533649268_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_1496620905533721142_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t29[16];
    char t44[16];
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
    char *t15;
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
    unsigned int t36;
    unsigned int t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5076);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB13:    t5 = (t0 + 5080);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB14:    t8 = (t0 + 5084);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB15:    t11 = (t0 + 5088);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB16:    t14 = (t0 + 5092);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB17:    t17 = (t0 + 5096);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB18:    t20 = (t0 + 5100);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB19:    t23 = (t0 + 5104);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB20:    t26 = (t0 + 5108);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB21:
LAB12:    xsi_set_current_line(53, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)1, 5U);
    t3 = (t0 + 3288);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(53, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)1, 8U);
    t3 = (t0 + 3224);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 3144);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(25, ng0);
    t30 = (t0 + 1192U);
    t31 = *((char **)t30);
    t30 = (t0 + 4984U);
    t32 = (t0 + 1352U);
    t33 = *((char **)t32);
    t32 = (t0 + 5000U);
    t34 = ieee_p_0774719531_sub_1496620905533649268_2162500114(IEEE_P_0774719531, t29, t31, t30, t33, t32);
    t35 = (t29 + 12U);
    t36 = *((unsigned int *)t35);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB23;

LAB24:    t39 = (t0 + 3224);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t34, 8U);
    xsi_driver_first_trans_fast_port(t39);
    goto LAB2;

LAB4:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t6 = ieee_p_0774719531_sub_1496620905533721142_2162500114(IEEE_P_0774719531, t29, t2, t1, t5, t3);
    t8 = (t29 + 12U);
    t36 = *((unsigned int *)t8);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB25;

LAB26:    t9 = (t0 + 3224);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t6 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t29 + 12U);
    t36 = *((unsigned int *)t8);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB27;

LAB28:    t9 = (t0 + 3224);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB6:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t6 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t44, t2, t1, t5, t3);
    t8 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t29, t6, t44);
    t9 = (t29 + 12U);
    t36 = *((unsigned int *)t9);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB29;

LAB30:    t11 = (t0 + 3224);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB2;

LAB7:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t6 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t29 + 12U);
    t36 = *((unsigned int *)t8);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB31;

LAB32:    t9 = (t0 + 3224);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB8:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t6 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t44, t2, t1, t5, t3);
    t8 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t29, t6, t44);
    t9 = (t29 + 12U);
    t36 = *((unsigned int *)t9);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB33;

LAB34:    t11 = (t0 + 3224);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB2;

LAB9:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t6 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t29 + 12U);
    t36 = *((unsigned int *)t8);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB35;

LAB36:    t9 = (t0 + 3224);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB10:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t6 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t44, t2, t1, t5, t3);
    t8 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t29, t6, t44);
    t9 = (t29 + 12U);
    t36 = *((unsigned int *)t9);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB37;

LAB38:    t11 = (t0 + 3224);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB2;

LAB11:    xsi_set_current_line(35, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)2, 5U);
    t3 = (t0 + 3288);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t38 = ieee_p_0774719531_sub_1366267000076357978_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t38 != 0)
        goto LAB39;

LAB41:
LAB40:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t38 = ieee_p_0774719531_sub_1306455576395559435_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t38 != 0)
        goto LAB42;

LAB44:
LAB43:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t38 = ieee_p_0774719531_sub_1306448836232530671_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t38 != 0)
        goto LAB45;

LAB47:
LAB46:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t38 = ieee_p_0774719531_sub_1306455576397931277_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t38 != 0)
        goto LAB48;

LAB50:
LAB49:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4984U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5000U);
    t38 = ieee_p_0774719531_sub_1306448836232566608_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t38 != 0)
        goto LAB51;

LAB53:
LAB52:    goto LAB2;

LAB22:;
LAB23:    xsi_size_not_matching(8U, t37, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(8U, t37, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(8U, t37, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(8U, t37, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(8U, t37, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(8U, t37, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(8U, t37, 0);
    goto LAB36;

LAB37:    xsi_size_not_matching(8U, t37, 0);
    goto LAB38;

LAB39:    xsi_set_current_line(38, ng0);
    t6 = (t0 + 3288);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 4U, 1, 0LL);
    goto LAB40;

LAB42:    xsi_set_current_line(41, ng0);
    t6 = (t0 + 3288);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 3U, 1, 0LL);
    goto LAB43;

LAB45:    xsi_set_current_line(44, ng0);
    t6 = (t0 + 3288);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 2U, 1, 0LL);
    goto LAB46;

LAB48:    xsi_set_current_line(47, ng0);
    t6 = (t0 + 3288);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 1U, 1, 0LL);
    goto LAB49;

LAB51:    xsi_set_current_line(50, ng0);
    t6 = (t0 + 3288);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 0U, 1, 0LL);
    goto LAB52;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/Test_Placa_Mae_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
