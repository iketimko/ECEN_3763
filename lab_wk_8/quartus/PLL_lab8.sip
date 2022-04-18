set_global_assignment -entity "PLL_lab8" -library "lib_PLL_lab8" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "PLL_lab8" -library "lib_PLL_lab8" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "PLL_lab8" -library "lib_PLL_lab8" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_PLL_lab8" -name SPD_FILE [file join $::quartus(sip_path) "PLL_lab8.spd"]

set_global_assignment -library "lib_PLL_lab8" -name MISC_FILE [file join $::quartus(sip_path) "PLL_lab8_sim/PLL_lab8.vo"]
