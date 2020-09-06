#ifndef _ALTERA_HPS_0_H_
#define _ALTERA_HPS_0_H_

/*
 * This file was automatically generated by the swinfo2header utility.
 * 
 * Created from SOPC Builder system 'soc_system' in
 * file './soc_system.sopcinfo'.
 */

/*
 * This file contains macros for module 'hps_0' and devices
 * connected to the following masters:
 *   h2f_axi_master
 *   h2f_lw_axi_master
 * 
 * Do not include this header file and another header file created for a
 * different module or master group at the same time.
 * Doing so may result in duplicate macro names.
 * Instead, use the system header file which has macros with unique names.
 */

/*
 * Macros for device 'adder_data_0', class 'adder_data'
 * The macros are prefixed with 'ADDER_DATA_0_'.
 * The prefix is the slave descriptor.
 */
#define ADDER_DATA_0_COMPONENT_TYPE adder_data
#define ADDER_DATA_0_COMPONENT_NAME adder_data_0
#define ADDER_DATA_0_BASE 0x0
#define ADDER_DATA_0_SPAN 32
#define ADDER_DATA_0_END 0x1f

/*
 * Macros for device 'adder_control_0', class 'adder_control'
 * The macros are prefixed with 'ADDER_CONTROL_0_'.
 * The prefix is the slave descriptor.
 */
#define ADDER_CONTROL_0_COMPONENT_TYPE adder_control
#define ADDER_CONTROL_0_COMPONENT_NAME adder_control_0
#define ADDER_CONTROL_0_BASE 0x20
#define ADDER_CONTROL_0_SPAN 32
#define ADDER_CONTROL_0_END 0x3f


#endif /* _ALTERA_HPS_0_H_ */
