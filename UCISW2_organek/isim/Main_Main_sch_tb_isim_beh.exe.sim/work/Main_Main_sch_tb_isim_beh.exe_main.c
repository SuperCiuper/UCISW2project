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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3499444699;
char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *STD_STANDARD;
char *UNISIM_P_0947159679;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *IEEE_P_1367372525;
char *UNISIM_P_3222816464;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3976734816_3212880686_init();
    work_a_2778839801_3212880686_init();
    work_a_0147977054_3212880686_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_0350208134_1521797606_init();
    unisim_a_2892212195_1521797606_init();
    unisim_a_1446710196_3752513572_init();
    unisim_a_4104775526_3752513572_init();
    unisim_a_3120128138_3752513572_init();
    unisim_a_3822252837_3752513572_init();
    unisim_a_3449702363_3752513572_init();
    unisim_a_1094721527_3752513572_init();
    unisim_a_1863101193_3752513572_init();
    unisim_a_0891762854_3752513572_init();
    unisim_a_1646226234_1266530935_init();
    unisim_a_3484885994_2523279426_init();
    unisim_a_3822233857_3676810390_init();
    unisim_a_0187512676_3676810390_init();
    unisim_a_1494071586_3676810390_init();
    unisim_a_2216379762_3676810390_init();
    unisim_a_0374505480_3676810390_init();
    unisim_a_3309887438_3676810390_init();
    unisim_a_2607035961_3676810390_init();
    unisim_a_2724076670_3676810390_init();
    unisim_a_1903791361_3676810390_init();
    unisim_a_2391488512_3676810390_init();
    unisim_a_1616089631_3676810390_init();
    unisim_a_1455473048_3676810390_init();
    unisim_a_3222824624_3676810390_init();
    unisim_a_0859055989_3676810390_init();
    unisim_a_1486479636_3676810390_init();
    unisim_a_3674940020_3676810390_init();
    unisim_a_0319714735_3676810390_init();
    unisim_a_3671995548_3676810390_init();
    unisim_a_3969285398_3676810390_init();
    unisim_a_3946745907_3676810390_init();
    unisim_a_2363982922_3676810390_init();
    unisim_a_3145390888_3676810390_init();
    unisim_a_2729128116_3676810390_init();
    unisim_a_2903934128_3676810390_init();
    unisim_a_3313216949_3676810390_init();
    unisim_a_2203725902_3676810390_init();
    unisim_a_4130234182_3676810390_init();
    unisim_a_3791686227_3676810390_init();
    unisim_a_1409947607_3676810390_init();
    unisim_a_4166387104_3676810390_init();
    unisim_a_0238683409_3676810390_init();
    unisim_a_0308770884_3676810390_init();
    unisim_a_1998731548_3676810390_init();
    unisim_a_1952449462_3676810390_init();
    unisim_a_1039422302_3676810390_init();
    unisim_a_0193143926_3676810390_init();
    unisim_a_2037604487_3676810390_init();
    unisim_a_2390479211_3676810390_init();
    unisim_a_1141804585_3676810390_init();
    unisim_a_4146501238_3676810390_init();
    unisim_a_3333324666_3676810390_init();
    unisim_a_1824137582_3676810390_init();
    unisim_a_2211114385_3676810390_init();
    unisim_a_3833799735_3676810390_init();
    unisim_a_0823666062_3676810390_init();
    unisim_a_2582833684_3676810390_init();
    unisim_a_3445030796_3676810390_init();
    unisim_a_3588201371_3676810390_init();
    unisim_a_3360933352_3676810390_init();
    unisim_a_3373517694_3676810390_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_3762448000_2971575191_init();
    unisim_a_1717296735_4086321779_init();
    unisim_a_3519694068_2693788048_init();
    unisim_a_1769350033_2693788048_init();
    unisim_a_0868425105_1864968857_init();
    unisim_a_2340387572_1864968857_init();
    unisim_a_1941169844_3118875749_init();
    unisim_a_4285078799_3616886268_init();
    unisim_a_3163574381_0086195937_init();
    unisim_a_2233298088_0124092600_init();
    unisim_a_2661327437_0605893366_init();
    unisim_a_3828308815_1222000726_init();
    unisim_a_0774281858_3731405331_init();
    unisim_a_0277370234_3731405331_init();
    unisim_a_0625313924_3731405331_init();
    unisim_a_1671316308_3731405331_init();
    unisim_a_2622885206_3731405331_init();
    unisim_a_3843083042_3731405331_init();
    unisim_a_3504150236_3731405331_init();
    unisim_a_1693413931_3731405331_init();
    unisim_a_3043723479_3731405331_init();
    unisim_a_2547859818_3731405331_init();
    unisim_a_2261302797_3723259517_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_3890912677_0883528894_init();
    unisim_a_0141283097_1768247982_init();
    unisim_a_0671511049_4148514270_init();
    unisim_a_3502181748_4148514270_init();
    unisim_a_4277385610_4148514270_init();
    unisim_a_2765629989_4148514270_init();
    unisim_a_1781356231_2013640830_init();
    unisim_a_1094588394_2013640830_init();
    unisim_a_2843143151_2013640830_init();
    unisim_a_1391716360_2013640830_init();
    unisim_a_0734454454_2013640830_init();
    unisim_a_2168611197_2013640830_init();
    unisim_a_2090955085_3391448174_init();
    unisim_a_3741343683_3391448174_init();
    unisim_a_1736621615_1981213126_init();
    unisim_a_1284636418_1981213126_init();
    unisim_a_1409560518_1981213126_init();
    unisim_a_2319918220_1981213126_init();
    unisim_a_3213974906_3996864970_init();
    unisim_a_4205656507_3677532803_init();
    unisim_a_2867636556_1359619727_init();
    unisim_a_2312877582_0635394241_init();
    work_a_1608263628_0632001823_init();
    unisim_a_3870564484_3219970547_init();
    work_a_3360046715_3212880686_init();
    work_a_1417662369_1418748358_init();
    work_a_3531136253_3212880686_init();


    xsi_register_tops("work_a_3531136253_3212880686");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}
