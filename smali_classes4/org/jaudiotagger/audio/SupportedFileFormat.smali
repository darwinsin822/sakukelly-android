.class public final enum Lorg/jaudiotagger/audio/SupportedFileFormat;
.super Ljava/lang/Enum;
.source "SupportedFileFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/SupportedFileFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum AIF:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum AIFC:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum AIFF:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum DFF:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum DSF:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum FLAC:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum M4A:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum M4B:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum M4P:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum MP3:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum MP4:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum OGA:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum OGG:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum RA:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum RM:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum WAV:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum WMA:Lorg/jaudiotagger/audio/SupportedFileFormat;


# instance fields
.field private displayName:Ljava/lang/String;

.field private filesuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 9
    new-instance v1, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v0, v1

    const-string v2, "ogg"

    const-string v3, "Ogg"

    const-string v4, "OGG"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->OGG:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 10
    new-instance v2, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v1, v2

    const-string v3, "oga"

    const-string v4, "Oga"

    const-string v5, "OGA"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/SupportedFileFormat;->OGA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 11
    new-instance v3, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v2, v3

    const-string v4, "mp3"

    const-string v5, "Mp3"

    const-string v6, "MP3"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP3:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 12
    new-instance v4, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v3, v4

    const-string v5, "flac"

    const-string v6, "Flac"

    const-string v7, "FLAC"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v5, v6}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/jaudiotagger/audio/SupportedFileFormat;->FLAC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 13
    new-instance v5, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v4, v5

    const-string v6, "MP4"

    const/4 v7, 0x4

    const-string v8, "mp4"

    const-string v12, "Mp4"

    invoke-direct {v5, v6, v7, v8, v12}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP4:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 14
    new-instance v6, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "m4a"

    const-string v9, "M4A"

    invoke-direct {v6, v9, v7, v8, v12}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4A:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 15
    new-instance v7, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v6, v7

    const-string v8, "m4p"

    const-string v9, "M4p"

    const-string v10, "M4P"

    const/4 v11, 0x6

    invoke-direct {v7, v10, v11, v8, v9}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4P:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 16
    new-instance v8, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v7, v8

    const-string v9, "wma"

    const-string v10, "Wma"

    const-string v11, "WMA"

    const/4 v13, 0x7

    invoke-direct {v8, v11, v13, v9, v10}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/jaudiotagger/audio/SupportedFileFormat;->WMA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 17
    new-instance v9, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v8, v9

    const-string v10, "wav"

    const-string v11, "Wav"

    const-string v13, "WAV"

    const/16 v14, 0x8

    invoke-direct {v9, v13, v14, v10, v11}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lorg/jaudiotagger/audio/SupportedFileFormat;->WAV:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 18
    new-instance v10, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v9, v10

    const-string v11, "ra"

    const-string v13, "Ra"

    const-string v14, "RA"

    const/16 v15, 0x9

    invoke-direct {v10, v14, v15, v11, v13}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lorg/jaudiotagger/audio/SupportedFileFormat;->RA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 19
    new-instance v11, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v10, v11

    const-string v13, "rm"

    const-string v14, "Rm"

    const-string v15, "RM"

    move-object/from16 v17, v0

    const/16 v0, 0xa

    invoke-direct {v11, v15, v0, v13, v14}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/jaudiotagger/audio/SupportedFileFormat;->RM:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 20
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v11, v0

    const/16 v13, 0xb

    const-string v14, "m4b"

    const-string v15, "M4B"

    invoke-direct {v0, v15, v13, v14, v12}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4B:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 21
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v12, v0

    const-string v13, "AIF"

    const/16 v14, 0xc

    const-string v15, "aif"

    move-object/from16 v18, v1

    const-string v1, "Aif"

    invoke-direct {v0, v13, v14, v15, v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 22
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "aiff"

    move-object/from16 v19, v2

    const-string v2, "AIFF"

    invoke-direct {v0, v2, v14, v15, v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIFF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 23
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v14, v0

    const-string v1, "aifc"

    const-string v2, "Aif Compressed"

    const-string v15, "AIFC"

    move-object/from16 v20, v3

    const/16 v3, 0xe

    invoke-direct {v0, v15, v3, v1, v2}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIFC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 24
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object v15, v0

    const-string v1, "dsf"

    const-string v2, "Dsf"

    const-string v3, "DSF"

    move-object/from16 v21, v4

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->DSF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 25
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object/from16 v16, v0

    const-string v1, "dff"

    const-string v2, "Dff"

    const-string v3, "DFF"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->DFF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    .line 7
    filled-new-array/range {v0 .. v16}, [Lorg/jaudiotagger/audio/SupportedFileFormat;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->$VALUES:[Lorg/jaudiotagger/audio/SupportedFileFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lorg/jaudiotagger/audio/SupportedFileFormat;->filesuffix:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lorg/jaudiotagger/audio/SupportedFileFormat;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/SupportedFileFormat;
    .locals 1

    .line 7
    const-class v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/SupportedFileFormat;
    .locals 1

    .line 7
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->$VALUES:[Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/SupportedFileFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/SupportedFileFormat;

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/jaudiotagger/audio/SupportedFileFormat;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilesuffix()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/jaudiotagger/audio/SupportedFileFormat;->filesuffix:Ljava/lang/String;

    return-object v0
.end method
