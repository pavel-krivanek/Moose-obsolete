tests
testCreateTable3

	self 
		parse:	'CREATE TABLE AD_PrintFormatItem(
    AD_PrintFormatItem_ID     NUMBER(10, 0)      NOT NULL,
    AD_Client_ID              NUMBER(10, 0)      NOT NULL,
    AD_Org_ID                 NUMBER(10, 0)      NOT NULL,
    Created                   DATE               DEFAULT SYSDATE NOT NULL,
    CreatedBy                 NUMBER(10, 0)      NOT NULL,
    Updated                   DATE               DEFAULT SYSDATE NOT NULL,
    UpdatedBy                 NUMBER(10, 0)      NOT NULL,
    AD_PrintFormat_ID         NUMBER(10, 0)      NOT NULL,
    Name                      NVARCHAR2(60)      NOT NULL,
    PrintName                 NVARCHAR2(2000)    NOT NULL,
    PrintNameSuffix           NVARCHAR2(60),
    PrintAreaType             CHAR(1)            NOT NULL,
    SeqNo                     NUMBER(10, 0)      DEFAULT 0 NOT NULL,
    PrintFormatType           CHAR(1)            NOT NULL,
    AD_Column_ID              NUMBER(10, 0),
    AD_PrintFormatChild_ID    NUMBER(10, 0),
    AD_PrintGraph_ID          NUMBER(10, 0),
    BelowColumn               NUMBER(10, 0)      DEFAULT 0 NOT NULL,
    Xspace                    NUMBER(10, 0)      DEFAULT 0 NOT NULL,
    Yspace                    NUMBER(10, 0)      DEFAULT 0 NOT NULL,
    Xposition                 NUMBER(10, 0)      DEFAULT 0 NOT NULL,
    Yposition                 NUMBER(10, 0)      DEFAULT 0 NOT NULL,
    MaxWidth                  NUMBER(10, 0)      DEFAULT 0 NOT NULL,
    MaxHeight                 NUMBER(10, 0)      DEFAULT 0 NOT NULL,
    FieldAlignmentType        CHAR(1)            NOT NULL,
    LineAlignmentType         CHAR(1)            NOT NULL,
    AD_PrintColor_ID          NUMBER(10, 0),
    AD_PrintFont_ID           NUMBER(10, 0),
    SortNo                    NUMBER(10, 0)      DEFAULT 0 NOT NULL,
    RunningTotalLines         NUMBER(10, 0)      DEFAULT 0 NOT NULL,
    ImageURL                  NVARCHAR2(120),
    IsFilledRectangle         CHAR(1)            DEFAULT ''N'' NOT NULL
                              CHECK (IsFilledRectangle in (''Y'',''N'')),
    LineWidth                 NUMBER(10, 0)      DEFAULT 0,
    ArcDiameter               NUMBER(10, 0)      DEFAULT 0,
    ShapeType                 CHAR(1),
    CONSTRAINT AS_PrintFormatItem_Key PRIMARY KEY (AD_PrintFormatItem_ID)
)'
		rule:#createTable