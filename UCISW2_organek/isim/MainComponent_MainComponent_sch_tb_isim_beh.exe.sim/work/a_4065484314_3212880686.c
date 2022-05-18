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
static const char *ng0 = "/home/daria/Documents/ucisw/UCISW2project/UCISW2_organek/MainComponentTB.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_4065484314_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    int64 t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(116, ng0);

LAB3:    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t4 = (t3 / 2);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t6);
    t1 = (t0 + 5600);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_delta(t1, 0U, 1, t4);
    t12 = (t0 + 5600);
    xsi_driver_intertial_reject(t12, t4, t4);

LAB2:    t13 = (t0 + 5520);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4065484314_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(118, ng0);

LAB3:    t1 = (t0 + 5664);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4065484314_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned char t6;
    int64 t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 5200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(124, ng0);

LAB4:    t2 = (t0 + 3432U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (10U + 20);
    t6 = (t4 < t5);
    if (t6 != 0)
        goto LAB5;

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(125, ng0);
    t7 = (15000000 * 1000LL);
    t2 = (t0 + 5008);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:;
LAB8:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 3432U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t6 = (t4 < 10U);
    if (t6 != 0)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(131, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 5008);
    xsi_process_wait(t2, t7);

LAB17:    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 3272U);
    t8 = *((char **)t2);
    t2 = (t0 + 3432U);
    t9 = *((char **)t2);
    t5 = *((int *)t9);
    t10 = (t5 - 0);
    t11 = (t10 * 1);
    xsi_vhdl_check_range_of_index(0, 9, 1, t5);
    t12 = (8U * t11);
    t13 = (0 + t12);
    t2 = (t8 + t13);
    t14 = (t0 + 5728);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t2, 8U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 3432U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 + 1);
    t2 = (t0 + 5792);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t14 = (t9 + 56U);
    t15 = *((char **)t14);
    *((int *)t15) = t5;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 5856);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB13;

LAB15:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 10008);
    t8 = (t0 + 5728);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 5920);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(134, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 5008);
    xsi_process_wait(t2, t7);

LAB21:    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

LAB19:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 5856);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 5920);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_4065484314_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4065484314_3212880686_p_0,(void *)work_a_4065484314_3212880686_p_1,(void *)work_a_4065484314_3212880686_p_2};
	xsi_register_didat("work_a_4065484314_3212880686", "isim/MainComponent_MainComponent_sch_tb_isim_beh.exe.sim/work/a_4065484314_3212880686.didat");
	xsi_register_executes(pe);
}
