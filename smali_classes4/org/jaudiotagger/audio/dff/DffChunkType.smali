.class public final enum Lorg/jaudiotagger/audio/dff/DffChunkType;
.super Ljava/lang/Enum;
.source "DffChunkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/dff/DffChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum CHNL:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum CMPR:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field private static final CODE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/audio/dff/DffChunkType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DATA:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum DITI:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum DSD:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum DST:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum END:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum FRM8:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum FRTE:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum FS:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum ID3:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum PROP:Lorg/jaudiotagger/audio/dff/DffChunkType;

.field public static final enum SND:Lorg/jaudiotagger/audio/dff/DffChunkType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 13
    new-instance v0, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const-string v1, "FRM8"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/dff/DffChunkType;->FRM8:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 14
    new-instance v1, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const-string v2, "DSD"

    const/4 v3, 0x1

    const-string v4, "DSD "

    invoke-direct {v1, v2, v3, v4}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->DSD:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 15
    new-instance v2, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const-string v3, "PROP"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v3}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/dff/DffChunkType;->PROP:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 16
    new-instance v3, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const/4 v5, 0x3

    const-string v6, "SND "

    const-string v7, "SND"

    invoke-direct {v3, v7, v5, v6}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/jaudiotagger/audio/dff/DffChunkType;->SND:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 17
    new-instance v5, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const/4 v6, 0x4

    const-string v7, "FS  "

    const-string v8, "FS"

    invoke-direct {v5, v8, v6, v7}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/jaudiotagger/audio/dff/DffChunkType;->FS:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 18
    new-instance v6, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const-string v7, "CHNL"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v7}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/jaudiotagger/audio/dff/DffChunkType;->CHNL:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 19
    new-instance v7, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const-string v8, "CMPR"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v8}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/jaudiotagger/audio/dff/DffChunkType;->CMPR:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 20
    new-instance v8, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const-string v9, "DITI"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v9}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/jaudiotagger/audio/dff/DffChunkType;->DITI:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 21
    new-instance v9, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const-string v10, "END"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v4}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/jaudiotagger/audio/dff/DffChunkType;->END:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 22
    new-instance v10, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const/16 v4, 0x9

    const-string v11, "DST "

    const-string v12, "DST"

    invoke-direct {v10, v12, v4, v11}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/jaudiotagger/audio/dff/DffChunkType;->DST:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 23
    new-instance v11, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const-string v4, "FRTE"

    const/16 v12, 0xa

    invoke-direct {v11, v4, v12, v4}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/jaudiotagger/audio/dff/DffChunkType;->FRTE:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 24
    new-instance v12, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const/16 v4, 0xb

    const-string v13, "ID3 "

    const-string v14, "ID3"

    invoke-direct {v12, v14, v4, v13}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/jaudiotagger/audio/dff/DffChunkType;->ID3:Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 25
    new-instance v13, Lorg/jaudiotagger/audio/dff/DffChunkType;

    const/16 v4, 0xc

    const-string v14, "data"

    const-string v15, "DATA"

    invoke-direct {v13, v15, v4, v14}, Lorg/jaudiotagger/audio/dff/DffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/jaudiotagger/audio/dff/DffChunkType;->DATA:Lorg/jaudiotagger/audio/dff/DffChunkType;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    .line 11
    filled-new-array/range {v0 .. v12}, [Lorg/jaudiotagger/audio/dff/DffChunkType;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/dff/DffChunkType;->$VALUES:[Lorg/jaudiotagger/audio/dff/DffChunkType;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/dff/DffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lorg/jaudiotagger/audio/dff/DffChunkType;->code:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lorg/jaudiotagger/audio/dff/DffChunkType;
    .locals 7

    const-class v0, Lorg/jaudiotagger/audio/dff/DffChunkType;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lorg/jaudiotagger/audio/dff/DffChunkType;->values()[Lorg/jaudiotagger/audio/dff/DffChunkType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 50
    sget-object v5, Lorg/jaudiotagger/audio/dff/DffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/dff/DffChunkType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/dff/DffChunkType;
    .locals 1

    .line 11
    const-class v0, Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/dff/DffChunkType;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/dff/DffChunkType;
    .locals 1

    .line 11
    sget-object v0, Lorg/jaudiotagger/audio/dff/DffChunkType;->$VALUES:[Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/dff/DffChunkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/dff/DffChunkType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jaudiotagger/audio/dff/DffChunkType;->code:Ljava/lang/String;

    return-object v0
.end method
