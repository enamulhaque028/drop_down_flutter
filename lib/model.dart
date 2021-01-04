class User {
  bool success;
  List<ClientInfos> clientInfos;
  List<ProjectInfos> projectInfos;
  List<TicketPriorityInfos> ticketPriorityInfos;
  List<TicketTypeInfos> ticketTypeInfos;
  List<TicketModeInfos> ticketModeInfos;
  List<TicketStatusInfos> ticketStatusInfos;
  List<TicketTitleInfos> ticketTitleInfos;

  User(
      {this.success,
      this.clientInfos,
      this.projectInfos,
      this.ticketPriorityInfos,
      this.ticketTypeInfos,
      this.ticketModeInfos,
      this.ticketStatusInfos,
      this.ticketTitleInfos});

  User.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['clientInfos'] != null) {
      clientInfos = new List<ClientInfos>();
      json['clientInfos'].forEach((v) {
        clientInfos.add(new ClientInfos.fromJson(v));
      });
    }
    if (json['projectInfos'] != null) {
      projectInfos = new List<ProjectInfos>();
      json['projectInfos'].forEach((v) {
        projectInfos.add(new ProjectInfos.fromJson(v));
      });
    }
    if (json['ticketPriorityInfos'] != null) {
      ticketPriorityInfos = new List<TicketPriorityInfos>();
      json['ticketPriorityInfos'].forEach((v) {
        ticketPriorityInfos.add(new TicketPriorityInfos.fromJson(v));
      });
    }
    if (json['ticketTypeInfos'] != null) {
      ticketTypeInfos = new List<TicketTypeInfos>();
      json['ticketTypeInfos'].forEach((v) {
        ticketTypeInfos.add(new TicketTypeInfos.fromJson(v));
      });
    }
    if (json['ticketModeInfos'] != null) {
      ticketModeInfos = new List<TicketModeInfos>();
      json['ticketModeInfos'].forEach((v) {
        ticketModeInfos.add(new TicketModeInfos.fromJson(v));
      });
    }
    if (json['ticketStatusInfos'] != null) {
      ticketStatusInfos = new List<TicketStatusInfos>();
      json['ticketStatusInfos'].forEach((v) {
        ticketStatusInfos.add(new TicketStatusInfos.fromJson(v));
      });
    }
    if (json['ticketTitleInfos'] != null) {
      ticketTitleInfos = new List<TicketTitleInfos>();
      json['ticketTitleInfos'].forEach((v) {
        ticketTitleInfos.add(new TicketTitleInfos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.clientInfos != null) {
      data['clientInfos'] = this.clientInfos.map((v) => v.toJson()).toList();
    }
    if (this.projectInfos != null) {
      data['projectInfos'] = this.projectInfos.map((v) => v.toJson()).toList();
    }
    if (this.ticketPriorityInfos != null) {
      data['ticketPriorityInfos'] =
          this.ticketPriorityInfos.map((v) => v.toJson()).toList();
    }
    if (this.ticketTypeInfos != null) {
      data['ticketTypeInfos'] =
          this.ticketTypeInfos.map((v) => v.toJson()).toList();
    }
    if (this.ticketModeInfos != null) {
      data['ticketModeInfos'] =
          this.ticketModeInfos.map((v) => v.toJson()).toList();
    }
    if (this.ticketStatusInfos != null) {
      data['ticketStatusInfos'] =
          this.ticketStatusInfos.map((v) => v.toJson()).toList();
    }
    if (this.ticketTitleInfos != null) {
      data['ticketTitleInfos'] =
          this.ticketTitleInfos.map((v) => v.toJson()).toList();
    }
    return data;
  }

  String show() {
    if (success) {
      return '''
"clientInfos" has ${clientInfos.length} items 
"projectInfos" has ${projectInfos.length} items 
"ticketPriorityInfos" has ${ticketPriorityInfos.length} items 
"ticketTypeInfos" has ${ticketTypeInfos.length} items 
"ticketModeInfos" has ${ticketModeInfos.length} items 
"ticketStatusInfos" has ${ticketStatusInfos.length} items 
"ticketTitleInfos" has ${ticketTitleInfos.length} items 
''';
    } else {
      return "Nothing to show, what a pity!!!";
    }
  }
}

class ClientInfos {
  String cLIENTSID;
  String cLINTNAME;
  String cLTSLOGAN;
  String cLINTABBR;
  String aDRESINFO;
  String wEBADDRESS;
  String cLINTEMAIL;
  Null cPASSWORDS;
  String tELPHONES;
  String cLINTLOGO;
  String aSTATUSFG;
  Null uSERDSLNO;
  String cREATEDBY;
  String cREATEDAT;
  String uPDATEDBY;
  String uPDATEDAT;
  String cATEGORYID;
  String mOBPHONES;
  String cLTDETAIL;
  String cOMPANYID;
  String cBRANCHID;
  String cOBUNITID;
  String pTGUNITID;
  Null cEMAILGRP;
  String rECSHOWFG;
  String bSNSDEVFG;
  String sAFSDEVFG;
  String sUPORMXFG;

  ClientInfos(
      {this.cLIENTSID,
      this.cLINTNAME,
      this.cLTSLOGAN,
      this.cLINTABBR,
      this.aDRESINFO,
      this.wEBADDRESS,
      this.cLINTEMAIL,
      this.cPASSWORDS,
      this.tELPHONES,
      this.cLINTLOGO,
      this.aSTATUSFG,
      this.uSERDSLNO,
      this.cREATEDBY,
      this.cREATEDAT,
      this.uPDATEDBY,
      this.uPDATEDAT,
      this.cATEGORYID,
      this.mOBPHONES,
      this.cLTDETAIL,
      this.cOMPANYID,
      this.cBRANCHID,
      this.cOBUNITID,
      this.pTGUNITID,
      this.cEMAILGRP,
      this.rECSHOWFG,
      this.bSNSDEVFG,
      this.sAFSDEVFG,
      this.sUPORMXFG});

  ClientInfos.fromJson(Map<String, dynamic> json) {
    cLIENTSID = json['CLIENTS_ID'];
    cLINTNAME = json['CLINT_NAME'];
    cLTSLOGAN = json['CLT_SLOGAN'];
    cLINTABBR = json['CLINT_ABBR'];
    aDRESINFO = json['ADRES_INFO'];
    wEBADDRESS = json['WEBADDRESS'];
    cLINTEMAIL = json['CLINTEMAIL'];
    cPASSWORDS = json['CPASSWORDS'];
    tELPHONES = json['TEL_PHONES'];
    cLINTLOGO = json['CLINT_LOGO'];
    aSTATUSFG = json['ASTATUS_FG'];
    uSERDSLNO = json['USERDSL_NO'];
    cREATEDBY = json['CREATED_BY'];
    cREATEDAT = json['CREATED_AT'];
    uPDATEDBY = json['UPDATED_BY'];
    uPDATEDAT = json['UPDATED_AT'];
    cATEGORYID = json['CATEGORYID'];
    mOBPHONES = json['MOB_PHONES'];
    cLTDETAIL = json['CLT_DETAIL'];
    cOMPANYID = json['COMPANY_ID'];
    cBRANCHID = json['CBRANCH_ID'];
    cOBUNITID = json['COBUNIT_ID'];
    pTGUNITID = json['PTGUNIT_ID'];
    cEMAILGRP = json['CEMAIL_GRP'];
    rECSHOWFG = json['RECSHOW_FG'];
    bSNSDEVFG = json['BSNSDEV_FG'];
    sAFSDEVFG = json['SAFSDEV_FG'];
    sUPORMXFG = json['SUPORMX_FG'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CLIENTS_ID'] = this.cLIENTSID;
    data['CLINT_NAME'] = this.cLINTNAME;
    data['CLT_SLOGAN'] = this.cLTSLOGAN;
    data['CLINT_ABBR'] = this.cLINTABBR;
    data['ADRES_INFO'] = this.aDRESINFO;
    data['WEBADDRESS'] = this.wEBADDRESS;
    data['CLINTEMAIL'] = this.cLINTEMAIL;
    data['CPASSWORDS'] = this.cPASSWORDS;
    data['TEL_PHONES'] = this.tELPHONES;
    data['CLINT_LOGO'] = this.cLINTLOGO;
    data['ASTATUS_FG'] = this.aSTATUSFG;
    data['USERDSL_NO'] = this.uSERDSLNO;
    data['CREATED_BY'] = this.cREATEDBY;
    data['CREATED_AT'] = this.cREATEDAT;
    data['UPDATED_BY'] = this.uPDATEDBY;
    data['UPDATED_AT'] = this.uPDATEDAT;
    data['CATEGORYID'] = this.cATEGORYID;
    data['MOB_PHONES'] = this.mOBPHONES;
    data['CLT_DETAIL'] = this.cLTDETAIL;
    data['COMPANY_ID'] = this.cOMPANYID;
    data['CBRANCH_ID'] = this.cBRANCHID;
    data['COBUNIT_ID'] = this.cOBUNITID;
    data['PTGUNIT_ID'] = this.pTGUNITID;
    data['CEMAIL_GRP'] = this.cEMAILGRP;
    data['RECSHOW_FG'] = this.rECSHOWFG;
    data['BSNSDEV_FG'] = this.bSNSDEVFG;
    data['SAFSDEV_FG'] = this.sAFSDEVFG;
    data['SUPORMX_FG'] = this.sUPORMXFG;
    return data;
  }
}

class ProjectInfos {
  String pROJECTID;
  String pROJTNAME;
  String pROJTDESC;
  String cLIENTSID;
  String aSTATUSFG;
  Null uSERDSLNO;
  String pRSTARTAT;
  String pRENDTOAT;
  String wARNTYSAT;
  String wARNTYEAT;
  Null sUPPORTRNO;
  String sUPORTSAT;
  String sUPORTEAT;
  String pRCSTATUS;
  String cREATEDBY;
  String cREATEDAT;
  String uPDATEDBY;
  String uPDATEDAT;
  String pROJTOWNER;
  String sCODEOWNER;
  String rEFPROJID;
  String cOMPANYID;
  String cBRANCHID;
  String cOBUNITID;
  String pTGUNITID;
  Null pEMAILGRP;
  String rECSHOWFG;
  String bSNSDEVFG;
  String sAFSDEVFG;
  String pROJTABBR;
  Null pRODUCTID;
  Null wKGPLTPID;

  ProjectInfos(
      {this.pROJECTID,
      this.pROJTNAME,
      this.pROJTDESC,
      this.cLIENTSID,
      this.aSTATUSFG,
      this.uSERDSLNO,
      this.pRSTARTAT,
      this.pRENDTOAT,
      this.wARNTYSAT,
      this.wARNTYEAT,
      this.sUPPORTRNO,
      this.sUPORTSAT,
      this.sUPORTEAT,
      this.pRCSTATUS,
      this.cREATEDBY,
      this.cREATEDAT,
      this.uPDATEDBY,
      this.uPDATEDAT,
      this.pROJTOWNER,
      this.sCODEOWNER,
      this.rEFPROJID,
      this.cOMPANYID,
      this.cBRANCHID,
      this.cOBUNITID,
      this.pTGUNITID,
      this.pEMAILGRP,
      this.rECSHOWFG,
      this.bSNSDEVFG,
      this.sAFSDEVFG,
      this.pROJTABBR,
      this.pRODUCTID,
      this.wKGPLTPID});

  ProjectInfos.fromJson(Map<String, dynamic> json) {
    pROJECTID = json['PROJECT_ID'];
    pROJTNAME = json['PROJT_NAME'];
    pROJTDESC = json['PROJT_DESC'];
    cLIENTSID = json['CLIENTS_ID'];
    aSTATUSFG = json['ASTATUS_FG'];
    uSERDSLNO = json['USERDSL_NO'];
    pRSTARTAT = json['PR_STARTAT'];
    pRENDTOAT = json['PR_ENDTOAT'];
    wARNTYSAT = json['WARNTY_SAT'];
    wARNTYEAT = json['WARNTY_EAT'];
    sUPPORTRNO = json['SUPPORTRNO'];
    sUPORTSAT = json['SUPORT_SAT'];
    sUPORTEAT = json['SUPORT_EAT'];
    pRCSTATUS = json['PR_CSTATUS'];
    cREATEDBY = json['CREATED_BY'];
    cREATEDAT = json['CREATED_AT'];
    uPDATEDBY = json['UPDATED_BY'];
    uPDATEDAT = json['UPDATED_AT'];
    pROJTOWNER = json['PROJTOWNER'];
    sCODEOWNER = json['SCODEOWNER'];
    rEFPROJID = json['REFPROJ_ID'];
    cOMPANYID = json['COMPANY_ID'];
    cBRANCHID = json['CBRANCH_ID'];
    cOBUNITID = json['COBUNIT_ID'];
    pTGUNITID = json['PTGUNIT_ID'];
    pEMAILGRP = json['PEMAIL_GRP'];
    rECSHOWFG = json['RECSHOW_FG'];
    bSNSDEVFG = json['BSNSDEV_FG'];
    sAFSDEVFG = json['SAFSDEV_FG'];
    pROJTABBR = json['PROJT_ABBR'];
    pRODUCTID = json['PRODUCT_ID'];
    wKGPLTPID = json['WKGPLTP_ID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PROJECT_ID'] = this.pROJECTID;
    data['PROJT_NAME'] = this.pROJTNAME;
    data['PROJT_DESC'] = this.pROJTDESC;
    data['CLIENTS_ID'] = this.cLIENTSID;
    data['ASTATUS_FG'] = this.aSTATUSFG;
    data['USERDSL_NO'] = this.uSERDSLNO;
    data['PR_STARTAT'] = this.pRSTARTAT;
    data['PR_ENDTOAT'] = this.pRENDTOAT;
    data['WARNTY_SAT'] = this.wARNTYSAT;
    data['WARNTY_EAT'] = this.wARNTYEAT;
    data['SUPPORTRNO'] = this.sUPPORTRNO;
    data['SUPORT_SAT'] = this.sUPORTSAT;
    data['SUPORT_EAT'] = this.sUPORTEAT;
    data['PR_CSTATUS'] = this.pRCSTATUS;
    data['CREATED_BY'] = this.cREATEDBY;
    data['CREATED_AT'] = this.cREATEDAT;
    data['UPDATED_BY'] = this.uPDATEDBY;
    data['UPDATED_AT'] = this.uPDATEDAT;
    data['PROJTOWNER'] = this.pROJTOWNER;
    data['SCODEOWNER'] = this.sCODEOWNER;
    data['REFPROJ_ID'] = this.rEFPROJID;
    data['COMPANY_ID'] = this.cOMPANYID;
    data['CBRANCH_ID'] = this.cBRANCHID;
    data['COBUNIT_ID'] = this.cOBUNITID;
    data['PTGUNIT_ID'] = this.pTGUNITID;
    data['PEMAIL_GRP'] = this.pEMAILGRP;
    data['RECSHOW_FG'] = this.rECSHOWFG;
    data['BSNSDEV_FG'] = this.bSNSDEVFG;
    data['SAFSDEV_FG'] = this.sAFSDEVFG;
    data['PROJT_ABBR'] = this.pROJTABBR;
    data['PRODUCT_ID'] = this.pRODUCTID;
    data['WKGPLTP_ID'] = this.wKGPLTPID;
    return data;
  }
}

class TicketPriorityInfos {
  String tKTPRIID;
  String tPRIORITY;

  TicketPriorityInfos({this.tKTPRIID, this.tPRIORITY});

  TicketPriorityInfos.fromJson(Map<String, dynamic> json) {
    tKTPRIID = json['TKT_PRI_ID'];
    tPRIORITY = json['T_PRIORITY'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TKT_PRI_ID'] = this.tKTPRIID;
    data['T_PRIORITY'] = this.tPRIORITY;
    return data;
  }
}

class TicketTypeInfos {
  String tRTYPEID;
  String tREQTYPE;

  TicketTypeInfos({this.tRTYPEID, this.tREQTYPE});

  TicketTypeInfos.fromJson(Map<String, dynamic> json) {
    tRTYPEID = json['TR_TYPE_ID'];
    tREQTYPE = json['T_REQ_TYPE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TR_TYPE_ID'] = this.tRTYPEID;
    data['T_REQ_TYPE'] = this.tREQTYPE;
    return data;
  }
}

class TicketModeInfos {
  String tRMODEID;
  String tREQMODE;

  TicketModeInfos({this.tRMODEID, this.tREQMODE});

  TicketModeInfos.fromJson(Map<String, dynamic> json) {
    tRMODEID = json['TR_MODE_ID'];
    tREQMODE = json['T_REQ_MODE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TR_MODE_ID'] = this.tRMODEID;
    data['T_REQ_MODE'] = this.tREQMODE;
    return data;
  }
}

class TicketStatusInfos {
  String tKTSTUSID;
  String tICKSTATUS;

  TicketStatusInfos({this.tKTSTUSID, this.tICKSTATUS});

  TicketStatusInfos.fromJson(Map<String, dynamic> json) {
    tKTSTUSID = json['TKTSTUS_ID'];
    tICKSTATUS = json['TICKSTATUS'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TKTSTUS_ID'] = this.tKTSTUSID;
    data['TICKSTATUS'] = this.tICKSTATUS;
    return data;
  }
}

class TicketTitleInfos {
  String cTICKETID;
  String cSTTITLES;
  String pROJECTID;

  TicketTitleInfos({this.cTICKETID, this.cSTTITLES, this.pROJECTID});

  TicketTitleInfos.fromJson(Map<String, dynamic> json) {
    cTICKETID = json['CTICKET_ID'];
    cSTTITLES = json['CST_TITLES'];
    pROJECTID = json['PROJECT_ID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CTICKET_ID'] = this.cTICKETID;
    data['CST_TITLES'] = this.cSTTITLES;
    data['PROJECT_ID'] = this.pROJECTID;
    return data;
  }
}
