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
static const char *ng0 = "/home/superciuper/Documents/UCISW2/UCISW2_organek/frequencyGenerator.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_1434214030532789707_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_970019341842465249_3965413181(char *, char *, char *, int );


static void work_a_3976734816_3212880686_p_0(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 7692);
    t3 = (t0 + 4624);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3976734816_3212880686_p_1(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 7696);
    t3 = (t0 + 4688);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3976734816_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7700);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB5:
LAB4:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 4752);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);

LAB2:    t1 = (t0 + 4528);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(56, ng0);
    t5 = (t0 + 4752);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 2987;
    xsi_driver_first_trans_fast(t5);
    goto LAB2;

LAB6:;
}

static void work_a_3976734816_3212880686_p_3(char *t0)
{
    char t13[16];
    char t26[16];
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t1 = (t0 + 7736);
    t7 = ((IEEE_P_2592010699) + 4000);
    t10 = (t0 + 7640U);
    t11 = (t26 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 7;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t8 = (7 - 0);
    t17 = (t8 * 1);
    t17 = (t17 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t17;
    t6 = xsi_base_array_concat(t6, t13, t7, (char)97, t4, t10, (char)97, t1, t26, (char)101);
    t17 = (4U + 8U);
    t2 = (12U != t17);
    if (t2 == 1)
        goto LAB17;

LAB18:    t12 = (t0 + 5008);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 12U);
    xsi_driver_first_trans_fast_port(t12);
    t1 = (t0 + 4544);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 2152U);
    t5 = *((char **)t4);
    t4 = (t0 + 7624U);
    t6 = (t0 + 1992U);
    t7 = *((char **)t6);
    t8 = *((int *)t7);
    t9 = ieee_p_3620187407_sub_970019341842465249_3965413181(IEEE_P_3620187407, t5, t4, t8);
    if (t9 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 7624U);
    t5 = (t0 + 1992U);
    t6 = *((char **)t5);
    t8 = *((int *)t6);
    t2 = ieee_p_3620187407_sub_970019341842465249_3965413181(IEEE_P_3620187407, t4, t1, t8);
    if (t2 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 7624U);
    t5 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t13, t4, t1, 1);
    t6 = (t13 + 12U);
    t17 = *((unsigned int *)t6);
    t25 = (1U * t17);
    t2 = (12U != t25);
    if (t2 == 1)
        goto LAB15;

LAB16:    t7 = (t0 + 4816);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t5, 12U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4944);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(67, ng0);
    t15 = (t0 + 7708);
    t20 = (t0 + 4816);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 12U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 7720);
    t5 = (t0 + 4880);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 4944);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    t6 = (t0 + 2312U);
    t10 = *((char **)t6);
    t6 = (t0 + 7640U);
    t11 = (t0 + 7704);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 3;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t18 = ieee_p_1242562249_sub_1434214030532789707_1035706684(IEEE_P_1242562249, t10, t6, t11, t13);
    t3 = t18;
    goto LAB10;

LAB11:    xsi_set_current_line(72, ng0);
    t5 = (t0 + 7724);
    t10 = (t0 + 4816);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 12U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t1 = (t0 + 7640U);
    t5 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t13, t4, t1, 1);
    t6 = (t13 + 12U);
    t17 = *((unsigned int *)t6);
    t25 = (1U * t17);
    t2 = (4U != t25);
    if (t2 == 1)
        goto LAB13;

LAB14:    t7 = (t0 + 4880);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4944);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB13:    xsi_size_not_matching(4U, t25, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(12U, t25, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(12U, t17, 0);
    goto LAB18;

}


extern void work_a_3976734816_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3976734816_3212880686_p_0,(void *)work_a_3976734816_3212880686_p_1,(void *)work_a_3976734816_3212880686_p_2,(void *)work_a_3976734816_3212880686_p_3};
	xsi_register_didat("work_a_3976734816_3212880686", "isim/frequencyGeneratorTB_isim_beh.exe.sim/work/a_3976734816_3212880686.didat");
	xsi_register_executes(pe);
}
