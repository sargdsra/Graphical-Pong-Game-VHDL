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
static const char *ng0 = "D:/books/darsi/7/az_cad/proj/main/counter.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2753033415_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2952);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 3032);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 100);
    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (100 / 2);
    t2 = (t5 < t6);
    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (100 / 2);
    t2 = (t5 >= t6);
    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3032);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3096);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 3096);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

}


extern void work_a_2753033415_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2753033415_3212880686_p_0};
	xsi_register_didat("work_a_2753033415_3212880686", "isim/top_module_tb_isim_beh.exe.sim/work/a_2753033415_3212880686.didat");
	xsi_register_executes(pe);
}
