.class public final enum Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
.super Ljava/lang/Enum;
.source "WavInfoIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ALBUM:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ALBUM_ARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ALBUM_GAIN:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field private static final CODE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COMMENTS:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum COMPOSER:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum CONDUCTOR:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum COPYRIGHT:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ENCODER:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field private static final FIELDKEY_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            "Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GENRE:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ISRC:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum LABEL:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum LYRICIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum QOBUZ_ALBUMARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum QOBUZ_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum QOBUZ_TRACK_TOTAL:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum RATING:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TITLE:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TRACK_GAIN:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TWONKY_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum YEAR:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;


# instance fields
.field private code:Ljava/lang/String;

.field private fieldKey:Lorg/jaudiotagger/tag/FieldKey;

.field private preferredWriteOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 44

    .line 16
    new-instance v7, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object v6, v7

    sget-object v4, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v5, 0x1

    const-string v1, "ARTIST"

    const/4 v2, 0x0

    const-string v3, "IART"

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v7, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 17
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object v7, v0

    sget-object v12, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v13, 0x2

    const-string v9, "ALBUM"

    const/4 v10, 0x1

    const-string v11, "IPRD"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 18
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object v8, v0

    sget-object v18, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v19, 0x3

    const-string v15, "TITLE"

    const/16 v16, 0x2

    const-string v17, "INAM"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TITLE:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 19
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object v9, v0

    sget-object v24, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v25, 0x4

    const-string v21, "TRACKNO"

    const/16 v22, 0x3

    const-string v23, "ITRK"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 20
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object v10, v0

    sget-object v15, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v16, 0x5

    const-string v12, "YEAR"

    const/4 v13, 0x4

    const-string v14, "ICRD"

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->YEAR:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 21
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object v11, v0

    sget-object v21, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v22, 0x6

    const-string v18, "GENRE"

    const/16 v19, 0x5

    const-string v20, "IGNR"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->GENRE:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 23
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object v12, v0

    sget-object v27, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v28, 0x7

    const-string v24, "ALBUM_ARTIST"

    const/16 v25, 0x6

    const-string v26, "iaar"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM_ARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 24
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object v13, v0

    sget-object v18, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v19, 0x8

    const-string v15, "COMMENTS"

    const/16 v16, 0x7

    const-string v17, "ICMT"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->COMMENTS:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 25
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object v14, v0

    sget-object v24, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v25, 0x9

    const-string v21, "COMPOSER"

    const/16 v22, 0x8

    const-string v23, "IMUS"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->COMPOSER:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 26
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object v15, v0

    sget-object v30, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v31, 0xa

    const-string v27, "CONDUCTOR"

    const/16 v28, 0x9

    const-string v29, "ITCH"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->CONDUCTOR:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 27
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v16, v0

    sget-object v21, Lorg/jaudiotagger/tag/FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v22, 0xb

    const-string v18, "LYRICIST"

    const/16 v19, 0xa

    const-string v20, "IWRI"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->LYRICIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 28
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v17, v0

    sget-object v27, Lorg/jaudiotagger/tag/FieldKey;->ENCODER:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v28, 0xc

    const-string v24, "ENCODER"

    const/16 v25, 0xb

    const-string v26, "ISFT"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ENCODER:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 29
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v18, v0

    sget-object v33, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v34, 0xd

    const-string v30, "RATING"

    const/16 v31, 0xc

    const-string v32, "IRTD"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->RATING:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 30
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v19, v0

    sget-object v24, Lorg/jaudiotagger/tag/FieldKey;->ISRC:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v25, 0xe

    const-string v21, "ISRC"

    const/16 v22, 0xd

    const-string v23, "ISRC"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ISRC:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 31
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v20, v0

    sget-object v30, Lorg/jaudiotagger/tag/FieldKey;->RECORD_LABEL:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v31, 0xf

    const-string v27, "LABEL"

    const/16 v28, 0xe

    const-string v29, "ICMS"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->LABEL:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 32
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v21, v0

    sget-object v36, Lorg/jaudiotagger/tag/FieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v37, 0x10

    const-string v33, "COPYRIGHT"

    const/16 v34, 0xf

    const-string v35, "ICOP"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->COPYRIGHT:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 34
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v22, v0

    const/16 v27, 0x0

    const/16 v28, 0x11

    const-string v24, "QOBUZ_TRACKNO"

    const/16 v25, 0x10

    const-string v26, "IPRT"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->QOBUZ_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 35
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v23, v0

    const/16 v33, 0x0

    const/16 v34, 0x12

    const-string v30, "QOBUZ_TRACK_TOTAL"

    const/16 v31, 0x11

    const-string v32, "IFRM"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->QOBUZ_TRACK_TOTAL:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 36
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v24, v0

    const/16 v39, 0x0

    const/16 v40, 0x13

    const-string v36, "QOBUZ_ALBUMARTIST"

    const/16 v37, 0x12

    const-string v38, "ISTR"

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->QOBUZ_ALBUMARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 38
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v25, v0

    const/16 v30, 0x0

    const/16 v31, 0x14

    const-string v27, "TRACK_GAIN"

    const/16 v28, 0x13

    const-string v29, "ITGL"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACK_GAIN:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 39
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v26, v0

    const/16 v36, 0x0

    const/16 v37, 0x15

    const-string v33, "ALBUM_GAIN"

    const/16 v34, 0x14

    const-string v35, "IAGL"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM_GAIN:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 40
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-object/from16 v27, v0

    const/16 v42, 0x0

    const/16 v43, 0x1

    const-string v39, "TWONKY_TRACKNO"

    const/16 v40, 0x15

    const-string v41, "itrk"

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v43}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TWONKY_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 14
    filled-new-array/range {v6 .. v27}, [Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->$VALUES:[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/FieldKey;",
            "I)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->code:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->fieldKey:Lorg/jaudiotagger/tag/FieldKey;

    .line 52
    iput p5, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->preferredWriteOrder:I

    return-void
.end method

.method public static declared-synchronized getByCode(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 7

    const-class v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->values()[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 82
    sget-object v5, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getByFieldKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 7

    const-class v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->values()[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 100
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 102
    sget-object v5, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_1
    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 1

    .line 14
    const-class v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 1

    .line 14
    sget-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->$VALUES:[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldKey()Lorg/jaudiotagger/tag/FieldKey;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->fieldKey:Lorg/jaudiotagger/tag/FieldKey;

    return-object v0
.end method

.method public getPreferredWriteOrder()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->preferredWriteOrder:I

    return v0
.end method
