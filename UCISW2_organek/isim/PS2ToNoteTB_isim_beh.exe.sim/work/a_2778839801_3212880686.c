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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/lab/Documents/GitHub/UCISW2project/UCISW2_organek/PS2ToNote.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2778839801_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    int t22;
    int t23;
    int t24;
    int t25;
    int t26;
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
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 3976);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 1)
        goto LAB11;

LAB12:    t9 = (unsigned char)0;

LAB13:    if (t9 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 1)
        goto LAB54;

LAB55:    t2 = (unsigned char)0;

LAB56:    if (t2 != 0)
        goto LAB52;

LAB53:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t1 = (t0 + 2152U);
    t7 = *((char **)t1);
    t14 = 1;
    if (8U == 8U)
        goto LAB17;

LAB18:    t14 = 0;

LAB19:    if ((!(t14)) != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 6464);
    t22 = xsi_mem_cmp(t1, t3, 8U);
    if (t22 == 1)
        goto LAB24;

LAB38:    t5 = (t0 + 6472);
    t23 = xsi_mem_cmp(t5, t3, 8U);
    if (t23 == 1)
        goto LAB25;

LAB39:    t7 = (t0 + 6480);
    t24 = xsi_mem_cmp(t7, t3, 8U);
    if (t24 == 1)
        goto LAB26;

LAB40:    t17 = (t0 + 6488);
    t25 = xsi_mem_cmp(t17, t3, 8U);
    if (t25 == 1)
        goto LAB27;

LAB41:    t19 = (t0 + 6496);
    t26 = xsi_mem_cmp(t19, t3, 8U);
    if (t26 == 1)
        goto LAB28;

LAB42:    t21 = (t0 + 6504);
    t28 = xsi_mem_cmp(t21, t3, 8U);
    if (t28 == 1)
        goto LAB29;

LAB43:    t29 = (t0 + 6512);
    t31 = xsi_mem_cmp(t29, t3, 8U);
    if (t31 == 1)
        goto LAB30;

LAB44:    t32 = (t0 + 6520);
    t34 = xsi_mem_cmp(t32, t3, 8U);
    if (t34 == 1)
        goto LAB31;

LAB45:    t35 = (t0 + 6528);
    t37 = xsi_mem_cmp(t35, t3, 8U);
    if (t37 == 1)
        goto LAB32;

LAB46:    t38 = (t0 + 6536);
    t40 = xsi_mem_cmp(t38, t3, 8U);
    if (t40 == 1)
        goto LAB33;

LAB47:    t41 = (t0 + 6544);
    t43 = xsi_mem_cmp(t41, t3, 8U);
    if (t43 == 1)
        goto LAB34;

LAB48:    t44 = (t0 + 6552);
    t46 = xsi_mem_cmp(t44, t3, 8U);
    if (t46 == 1)
        goto LAB35;

LAB49:    t47 = (t0 + 6560);
    t49 = xsi_mem_cmp(t47, t3, 8U);
    if (t49 == 1)
        goto LAB36;

LAB50:
LAB37:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 6672);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);

LAB23:    goto LAB9;

LAB11:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t9 = t13;
    goto LAB13;

LAB14:    xsi_set_current_line(54, ng0);
    t17 = (t0 + 3976);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t17);
    goto LAB15;

LAB17:    t15 = 0;

LAB20:    if (t15 < 8U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t1 = (t6 + t15);
    t16 = (t7 + t15);
    if (*((unsigned char *)t1) != *((unsigned char *)t16))
        goto LAB18;

LAB22:    t15 = (t15 + 1);
    goto LAB20;

LAB24:    xsi_set_current_line(58, ng0);
    t50 = (t0 + 6568);
    t52 = (t0 + 4040);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    memcpy(t56, t50, 8U);
    xsi_driver_first_trans_fast_port(t52);
    goto LAB23;

LAB25:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 6576);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB26:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 6584);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB27:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 6592);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB28:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 6600);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB29:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 6608);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB30:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 6616);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB31:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 6624);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB32:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 6632);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB33:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 6640);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB34:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 6648);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB35:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 6656);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB36:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 6664);
    t4 = (t0 + 4040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB23;

LAB51:;
LAB52:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 6680);
    t6 = (t0 + 4040);
    t7 = (t6 + 56U);
    t16 = *((char **)t7);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3976);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB54:    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    t2 = t11;
    goto LAB56;

}

static void work_a_2778839801_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB3;

LAB4:
LAB2:    t9 = (t0 + 3896);
    *((int *)t9) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 4104);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 8U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

}


extern void work_a_2778839801_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2778839801_3212880686_p_0,(void *)work_a_2778839801_3212880686_p_1};
	xsi_register_didat("work_a_2778839801_3212880686", "isim/PS2ToNoteTB_isim_beh.exe.sim/work/a_2778839801_3212880686.didat");
	xsi_register_executes(pe);
}
