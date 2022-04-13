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
static const char *ng0 = "C:/Users/lab/Documents/GitHub/UCISW2project/UCISW2_organek/imageGenerator.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0147977054_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 3272U);
    t5 = *((char **)t3);
    t3 = (t0 + 2952U);
    t6 = *((char **)t3);
    t7 = *((int *)t6);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t7);
    t10 = (8U * t9);
    t11 = (0 + t10);
    t3 = (t5 + t11);
    t12 = 1;
    if (8U == 8U)
        goto LAB8;

LAB9:    t12 = 0;

LAB10:    if (t12 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t7 = *((int *)t3);
    t8 = (t7 + 1);
    t1 = (t0 + 6472);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t14 = *((char **)t6);
    *((int *)t14) = t8;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(62, ng0);
    t16 = (t0 + 2952U);
    t17 = *((char **)t16);
    t18 = *((int *)t17);
    t19 = (t18 + 1);
    t16 = (t0 + 6408);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((int *)t23) = t19;
    xsi_driver_first_trans_fast(t16);
    goto LAB6;

LAB8:    t13 = 0;

LAB11:    if (t13 < 8U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t14 = (t4 + t13);
    t15 = (t3 + t13);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB9;

LAB13:    t13 = (t13 + 1);
    goto LAB11;

}

static void work_a_0147977054_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    int t16;
    int t17;

LAB0:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6328);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 3592U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    if (t5 == 0)
        goto LAB6;

LAB14:    if (t5 == 1)
        goto LAB7;

LAB15:    if (t5 == 2)
        goto LAB8;

LAB16:    if (t5 == 3)
        goto LAB9;

LAB17:    if (t5 == 4)
        goto LAB10;

LAB18:    if (t5 == 5)
        goto LAB11;

LAB19:    if (t5 == 6)
        goto LAB12;

LAB20:
LAB13:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 6728);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 6536);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 6600);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 6664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t10 = (t5 + 1);
    t1 = (t0 + 6728);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 6792);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB7:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 6600);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 6664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 8U);
    if (t2 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t1 = (t0 + 3432U);
    t4 = *((char **)t1);
    t5 = *((int *)t4);
    t10 = (t5 - 0);
    t12 = (t10 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t5);
    t13 = (8U * t12);
    t14 = (0 + t13);
    t1 = (t3 + t14);
    t6 = (t0 + 6856);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t15 = *((char **)t9);
    memcpy(t15, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t10 = (t5 + 1);
    t1 = (t0 + 6792);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t10;
    xsi_driver_first_trans_fast(t1);

LAB23:    goto LAB5;

LAB8:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 6600);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 6664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t10 = (t5 + 1);
    t1 = (t0 + 6728);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 6792);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t10 = (t5 + 1);
    t1 = (t0 + 6728);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t10;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 6600);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 6664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t10 = (t5 + 1);
    t1 = (t0 + 6728);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 6792);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB11:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 6600);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 6664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t1 = (t0 + 2952U);
    t4 = *((char **)t1);
    t10 = *((int *)t4);
    t11 = (t10 * 2);
    t2 = (t5 == t11);
    if (t2 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t1 = (t0 + 3432U);
    t4 = *((char **)t1);
    t5 = *((int *)t4);
    t10 = (t5 - 0);
    t12 = (t10 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t5);
    t13 = (8U * t12);
    t14 = (0 + t13);
    t1 = (t3 + t14);
    t6 = (t0 + 6856);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t15 = *((char **)t9);
    memcpy(t15, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t10 = (t5 + 1);
    t1 = (t0 + 6792);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t10;
    xsi_driver_first_trans_fast(t1);

LAB26:    goto LAB5;

LAB12:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 6600);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 6536);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 6728);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB21:;
LAB22:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3592U);
    t4 = *((char **)t1);
    t10 = *((int *)t4);
    t11 = (t10 + 1);
    t1 = (t0 + 6728);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t11;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB25:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 3592U);
    t6 = *((char **)t1);
    t16 = *((int *)t6);
    t17 = (t16 + 1);
    t1 = (t0 + 6728);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t15 = *((char **)t9);
    *((int *)t15) = t17;
    xsi_driver_first_trans_fast(t1);
    goto LAB26;

}

static void work_a_0147977054_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(127, ng0);

LAB3:    t1 = (t0 + 6920);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0147977054_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(128, ng0);

LAB3:    t1 = (t0 + 6984);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0147977054_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(129, ng0);

LAB3:    t1 = (t0 + 7048);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0147977054_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(130, ng0);

LAB3:    t1 = (t0 + 7112);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0147977054_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0147977054_3212880686_p_0,(void *)work_a_0147977054_3212880686_p_1,(void *)work_a_0147977054_3212880686_p_2,(void *)work_a_0147977054_3212880686_p_3,(void *)work_a_0147977054_3212880686_p_4,(void *)work_a_0147977054_3212880686_p_5};
	xsi_register_didat("work_a_0147977054_3212880686", "isim/imageGeneratorTB_isim_beh.exe.sim/work/a_0147977054_3212880686.didat");
	xsi_register_executes(pe);
}
