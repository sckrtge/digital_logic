
################################################################
# This is a generated script based on design: mux4x3
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source mux4x3_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name mux4x3

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set led [ create_bd_port -dir O -from 2 -to 0 led ]
  set s0 [ create_bd_port -dir I -from 2 -to 0 s0 ]
  set s1 [ create_bd_port -dir I -from 2 -to 0 s1 ]
  set s2 [ create_bd_port -dir I -from 2 -to 0 s2 ]
  set s3 [ create_bd_port -dir I -from 2 -to 0 s3 ]
  set s14 [ create_bd_port -dir I -from 2 -to 0 s14 ]
  set s15 [ create_bd_port -dir I -from 2 -to 0 s15 ]

  # Create instance: and_gate_3_0, and set properties
  set and_gate_3_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:and_gate_3:1.0 and_gate_3_0 ]

  # Create instance: and_gate_3_1, and set properties
  set and_gate_3_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:and_gate_3:1.0 and_gate_3_1 ]

  # Create instance: and_gate_3_2, and set properties
  set and_gate_3_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:and_gate_3:1.0 and_gate_3_2 ]

  # Create instance: and_gate_3_3, and set properties
  set and_gate_3_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:and_gate_3:1.0 and_gate_3_3 ]

  # Create instance: not_gate_0, and set properties
  set not_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:not_gate:1.0 not_gate_0 ]

  # Create instance: not_gate_1, and set properties
  set not_gate_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:not_gate:1.0 not_gate_1 ]

  # Create instance: or_gate_4_0, and set properties
  set or_gate_4_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:or_gate_4:1.0 or_gate_4_0 ]

  # Create port connections
  connect_bd_net -net and_gate_3_0_d [get_bd_pins and_gate_3_0/d] [get_bd_pins or_gate_4_0/a]
  connect_bd_net -net and_gate_3_1_d [get_bd_pins and_gate_3_1/d] [get_bd_pins or_gate_4_0/b]
  connect_bd_net -net and_gate_3_2_d [get_bd_pins and_gate_3_2/d] [get_bd_pins or_gate_4_0/c]
  connect_bd_net -net and_gate_3_3_d [get_bd_pins and_gate_3_3/d] [get_bd_pins or_gate_4_0/d]
  connect_bd_net -net not_gate_0_c [get_bd_pins and_gate_3_0/c] [get_bd_pins and_gate_3_2/c] [get_bd_pins not_gate_1/c]
  connect_bd_net -net not_gate_1_c [get_bd_pins and_gate_3_0/a] [get_bd_pins and_gate_3_1/a] [get_bd_pins not_gate_0/c]
  connect_bd_net -net or_gate_4_0_e [get_bd_ports led] [get_bd_pins or_gate_4_0/e]
  connect_bd_net -net s0_1 [get_bd_ports s0] [get_bd_pins and_gate_3_0/b]
  connect_bd_net -net s14_1 [get_bd_ports s14] [get_bd_pins and_gate_3_1/c] [get_bd_pins and_gate_3_3/c] [get_bd_pins not_gate_1/a]
  connect_bd_net -net s15_1 [get_bd_ports s15] [get_bd_pins and_gate_3_2/a] [get_bd_pins and_gate_3_3/a] [get_bd_pins not_gate_0/a]
  connect_bd_net -net s1_1 [get_bd_ports s1] [get_bd_pins and_gate_3_1/b]
  connect_bd_net -net s2_1 [get_bd_ports s2] [get_bd_pins and_gate_3_2/b]
  connect_bd_net -net s3_1 [get_bd_ports s3] [get_bd_pins and_gate_3_3/b]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


