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
if {[info exist IP4CONFIG2_INC] == 1} {
  return
}
set IP4CONFIG2_INC 1

Include Include/EntsProtocolTest.inc.tcl
Include Include/EntsConfigure.tcl
Include Include/EfiBootService.inc.tcl
Include Include/EfiGenericService.inc.tcl
Include EfiUtil/EfiInclude.tcl

Include IP4/Include/Ip4.inc.tcl
Include IP4Config2/Include/Ip4Config2Define.tcl
Include IP4Config2/Include/Ip4Config2.proc.tcl
Include IP4Config2/Include/Ip4Config2AssertionGuid.tcl
Include Include/GenericAssertionGuid.tcl

###################################################################
# Function Declaration
###################################################################
Func Ip4Config2->SetData {
    UINT32
    UINTN
    POINTER
    POINTER
}

Func Ip4Config2->GetData {
    UINT32
    POINTER
    POINTER
    POINTER
}

Func Ip4Config2->RegisterDataNotify {
    UINT32
    UINTN
    POINTER
}

Func Ip4Config2->UnregisterDataNotify {
    UINT32
    UINTN
    POINTER
}

###################################################################
# EFI_IP4_CONFIG2_INTERFACE_INFO
###################################################################
Struct EFI_IP4_CONFIG2_INTERFACE_INFO {
  CHAR16                Name(32);
  UINT8                 IfType;
  UINT32                HwAddressSize;
  EFI_MAC_ADDRESS       HwAddress;
  EFI_IPv4_ADDRESS      StationAddress;
  EFI_IPv4_ADDRESS      SubnetMask;
  UINT32                RouteTableSize;
  POINTER               RouteTable;
}

###################################################################
# EFI_IP4_CONFIG2_MANUAL_ADDRESS
###################################################################
Struct EFI_IP4_CONFIG2_MANUAL_ADDRESS {
  EFI_IPv4_ADDRESS      Address;
  EFI_IPv4_ADDRESS      SubnetMask;
}

