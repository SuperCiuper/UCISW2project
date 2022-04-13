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
static const char *ng0 = "/home/superciuper/Documents/UCISW2project/UCISW2_organek/PS2ToNote.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2778839801_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    int t21;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;

LAB0:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1632U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3464);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1352U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)2);
    if (t6 == 1)
        goto LAB45;

LAB46:    t1 = (unsigned char)0;

LAB47:    if (t1 != 0)
        goto LAB43;

LAB44:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 3544);
    t15 = (t4 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 5708);
    t19 = xsi_mem_cmp(t2, t4, 8U);
    if (t19 == 1)
        goto LAB15;

LAB29:    t9 = (t0 + 5716);
    t20 = xsi_mem_cmp(t9, t4, 8U);
    if (t20 == 1)
        goto LAB16;

LAB30:    t15 = (t0 + 5724);
    t21 = xsi_mem_cmp(t15, t4, 8U);
    if (t21 == 1)
        goto LAB17;

LAB31:    t17 = (t0 + 5732);
    t22 = xsi_mem_cmp(t17, t4, 8U);
    if (t22 == 1)
        goto LAB18;

LAB32:    t23 = (t0 + 5740);
    t25 = xsi_mem_cmp(t23, t4, 8U);
    if (t25 == 1)
        goto LAB19;

LAB33:    t26 = (t0 + 5748);
    t28 = xsi_mem_cmp(t26, t4, 8U);
    if (t28 == 1)
        goto LAB20;

LAB34:    t29 = (t0 + 5756);
    t31 = xsi_mem_cmp(t29, t4, 8U);
    if (t31 == 1)
        goto LAB21;

LAB35:    t32 = (t0 + 5764);
    t34 = xsi_mem_cmp(t32, t4, 8U);
    if (t34 == 1)
        goto LAB22;

LAB36:    t35 = (t0 + 5772);
    t37 = xsi_mem_cmp(t35, t4, 8U);
    if (t37 == 1)
        goto LAB23;

LAB37:    t38 = (t0 + 5780);
    t40 = xsi_mem_cmp(t38, t4, 8U);
    if (t40 == 1)
        goto LAB24;

LAB38:    t41 = (t0 + 5788);
    t43 = xsi_mem_cmp(t41, t4, 8U);
    if (t43 == 1)
        goto LAB25;

LAB39:    t44 = (t0 + 5796);
    t46 = xsi_mem_cmp(t44, t4, 8U);
    if (t46 == 1)
        goto LAB26;

LAB40:    t47 = (t0 + 5804);
    t49 = xsi_mem_cmp(t47, t4, 8U);
    if (t49 == 1)
        goto LAB27;

LAB41:
LAB28:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 5916);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB14:    goto LAB9;

LAB11:    t4 = (t0 + 1512U);
    t12 = *((char **)t4);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t8 = t14;
    goto LAB13;

LAB15:    xsi_set_current_line(59, ng0);
    t50 = (t0 + 5812);
    t52 = (t0 + 3608);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    memcpy(t56, t50, 8U);
    xsi_driver_first_trans_fast_port(t52);
    goto LAB14;

LAB16:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 5820);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB17:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 5828);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB18:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5836);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB19:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 5844);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB20:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 5852);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB21:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 5860);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB22:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5868);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB23:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 5876);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB24:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 5884);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB25:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 5892);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB26:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 5900);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB27:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 5908);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB42:;
LAB43:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3544);
    t9 = (t2 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 5924);
    t5 = (t0 + 3608);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB9;

LAB45:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB47;

}


extern void work_a_2778839801_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2778839801_3212880686_p_0};
	xsi_register_didat("work_a_2778839801_3212880686", "isim/PS2ToNoteTB_isim_beh.exe.sim/work/a_2778839801_3212880686.didat");
	xsi_register_executes(pe);
}
