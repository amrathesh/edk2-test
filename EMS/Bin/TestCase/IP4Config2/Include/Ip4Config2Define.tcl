#
# The material contained herein is not a license, either      
# expressly or impliedly, to any intellectual property owned  
# or controlled by any of the authors or developers of this   
# material or to any contribution thereto. The material       
# contained herein is provided on an "AS IS" basis and, to the
# maximum extent permitted by applicable law, this information
# is provided AS IS AND WITH ALL FAULTS, and the authors and  
# developers of this material hereby disclaim all other       
# warranties and conditions, either express, implied or       
# statutory, including, but not limited to, any (if any)      
# implied warranties, duties or conditions of merchantability,
# of fitness for a particular purpose, of accuracy or         
# completeness of responses, of results, of workmanlike       
# effort, of lack of viruses and of lack of negligence, all   
# with regard to this material and any contribution thereto.  
# Designers must not rely on the absence or characteristics of
# any features or instructions marked "reserved" or           
# "undefined." The Unified EFI Forum, Inc. reserves any       
# features or instructions so marked for future definition and
# shall have no responsibility whatsoever for conflicts or    
# incompatibilities arising from future changes to them. ALSO,
# THERE IS NO WARRANTY OR CONDITION OF TITLE, QUIET ENJOYMENT,
# QUIET POSSESSION, CORRESPONDENCE TO DESCRIPTION OR          
# NON-INFRINGEMENT WITH REGARD TO THE TEST SUITE AND ANY      
# CONTRIBUTION THERETO.                                       
#                                                             
# IN NO EVENT WILL ANY AUTHOR OR DEVELOPER OF THIS MATERIAL OR
# ANY CONTRIBUTION THERETO BE LIABLE TO ANY OTHER PARTY FOR   
# THE COST OF PROCURING SUBSTITUTE GOODS OR SERVICES, LOST    
# PROFITS, LOSS OF USE, LOSS OF DATA, OR ANY INCIDENTAL,      
# CONSEQUENTIAL, DIRECT, INDIRECT, OR SPECIAL DAMAGES WHETHER 
# UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, ARISING IN ANY
# WAY OUT OF THIS OR ANY OTHER AGREEMENT RELATING TO THIS     
# DOCUMENT, WHETHER OR NOT SUCH PARTY HAD ADVANCE NOTICE OF   
# THE POSSIBILITY OF SUCH DAMAGES.                            
#                                                             
# Copyright 2017 Unified EFI, Inc. All
# Rights Reserved, subject to all existing rights in all      
# matters included within this Test Suite, to which United    
# EFI, Inc. makes no claim of right.                          
#                                                             
# Copyright (c) 2017, Intel Corporation. All rights reserved.<BR> 
#
#
if {[info exist IP4CONFIG2_DEFINE] == 1} {
  return
}
set IP4CONFIG2_DEFINE 1

#
# EUT/ENTS Connection Definition
#
#set DEF_EUT_IP_ADDR   "2002:0000:0000:0000:0000:0000:0000:0001"
#set DEF_EUT_MAC_ADDR  [GetTargetMac]
#set DEF_EUT_PRT       0

#set DEF_ENTS_IP_ADDR  "2002:0000:0000:0000:0000:0000:0000:4321"
#set DEF_ENTS_MAC_ADDR [GetHostMac]
#set DEF_ENTS_PRT      8888

#
# EFI_IP4_CONFIG2_DATA_TYPE
#
set IP4C2DT(InterfaceInfo) 0
set IP4C2DT(Policy) 1
set IP4C2DT(ManualAddress) 2
set IP4C2DT(Gateway) 3
set IP4C2DT(DnsServer) 4
set IP4C2DT(Maximum) 5

#
# EFI_IP4_CONFIG2_POLICY
#
set IP4C2P(Static) 0
set IP4C2P(Dhcp) 1
set IP4C2P(Max) 2

#
# Timers
#
set i 0
set L_TimeOut 30
