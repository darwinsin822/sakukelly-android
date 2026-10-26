.class public final enum Lorg/jaudiotagger/audio/wav/WavChunkType;
.super Ljava/lang/Enum;
.source "WavChunkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/wav/WavChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/wav/WavChunkType;

.field public static final enum BRDK:Lorg/jaudiotagger/audio/wav/WavChunkType;

.field private static final CODE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/audio/wav/WavChunkType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DATA:Lorg/jaudiotagger/audio/wav/WavChunkType;

.field public static final enum FACT:Lorg/jaudiotagger/audio/wav/WavChunkType;

.field public static final enum FORMAT:Lorg/jaudiotagger/audio/wav/WavChunkType;

.field public static final enum ID3:Lorg/jaudiotagger/audio/wav/WavChunkType;

.field public static final enum ID3_UPPERCASE:Lorg/jaudiotagger/audio/wav/WavChunkType;

.field public static final enum INFO:Lorg/jaudiotagger/audio/wav/WavChunkType;

.field public static final enum IXML:Lorg/jaudiotagger/audio/wav/WavChunkType;

.field public static final enum JUNK:Lorg/jaudiotagger/audio/wav/WavChunkType;

.field public static final enum LIST:Lorg/jaudiotagger/audio/wav/WavChunkType;

.field public static final enum PAD:Lorg/jaudiotagger/audio/wav/WavChunkType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 13
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavChunkType;

    const-string v1, "fmt "

    const-string v2, "Basic Audio Information"

    const-string v3, "FORMAT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/jaudiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavChunkType;->FORMAT:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 14
    new-instance v1, Lorg/jaudiotagger/audio/wav/WavChunkType;

    const-string v2, "fact"

    const-string v3, "Only strictly required for Non-PCM or compressed data"

    const-string v4, "FACT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/jaudiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->FACT:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 15
    new-instance v2, Lorg/jaudiotagger/audio/wav/WavChunkType;

    const-string v3, "data"

    const-string v4, "Stores the actual audio data"

    const-string v5, "DATA"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/jaudiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/wav/WavChunkType;->DATA:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 16
    new-instance v3, Lorg/jaudiotagger/audio/wav/WavChunkType;

    const/4 v4, 0x3

    const-string v5, "List chunk, wraps round other chunks"

    const-string v6, "LIST"

    invoke-direct {v3, v6, v4, v6, v5}, Lorg/jaudiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/jaudiotagger/audio/wav/WavChunkType;->LIST:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 17
    new-instance v4, Lorg/jaudiotagger/audio/wav/WavChunkType;

    const/4 v5, 0x4

    const-string v6, "Original metadata implementation"

    const-string v7, "INFO"

    invoke-direct {v4, v7, v5, v7, v6}, Lorg/jaudiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/jaudiotagger/audio/wav/WavChunkType;->INFO:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 18
    new-instance v5, Lorg/jaudiotagger/audio/wav/WavChunkType;

    const-string v6, "id3 "

    const-string v7, "Stores metadata in ID3 chunk"

    const-string v8, "ID3"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lorg/jaudiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 19
    new-instance v6, Lorg/jaudiotagger/audio/wav/WavChunkType;

    const/4 v7, 0x6

    const-string v8, "Junk Data"

    const-string v9, "JUNK"

    invoke-direct {v6, v9, v7, v9, v8}, Lorg/jaudiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/jaudiotagger/audio/wav/WavChunkType;->JUNK:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 20
    new-instance v7, Lorg/jaudiotagger/audio/wav/WavChunkType;

    const-string v8, "PAD "

    const-string v9, "Official Padding Data"

    const-string v10, "PAD"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v8, v9}, Lorg/jaudiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/jaudiotagger/audio/wav/WavChunkType;->PAD:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 21
    new-instance v8, Lorg/jaudiotagger/audio/wav/WavChunkType;

    const-string v9, "iXML"

    const-string v10, "Location Sound Metadata"

    const-string v11, "IXML"

    const/16 v12, 0x8

    invoke-direct {v8, v11, v12, v9, v10}, Lorg/jaudiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/jaudiotagger/audio/wav/WavChunkType;->IXML:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 22
    new-instance v9, Lorg/jaudiotagger/audio/wav/WavChunkType;

    const-string v10, "BRDK"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v10, v10}, Lorg/jaudiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lorg/jaudiotagger/audio/wav/WavChunkType;->BRDK:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 23
    new-instance v10, Lorg/jaudiotagger/audio/wav/WavChunkType;

    const-string v11, "ID3 "

    const-string v12, "Stores metadata in ID3 chunk, should be lowercase id"

    const-string v13, "ID3_UPPERCASE"

    const/16 v14, 0xa

    invoke-direct {v10, v13, v14, v11, v12}, Lorg/jaudiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3_UPPERCASE:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 11
    filled-new-array/range {v0 .. v10}, [Lorg/jaudiotagger/audio/wav/WavChunkType;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavChunkType;->$VALUES:[Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

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

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lorg/jaudiotagger/audio/wav/WavChunkType;->code:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/WavChunkType;
    .locals 7

    const-class v0, Lorg/jaudiotagger/audio/wav/WavChunkType;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {}, Lorg/jaudiotagger/audio/wav/WavChunkType;->values()[Lorg/jaudiotagger/audio/wav/WavChunkType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 37
    sget-object v5, Lorg/jaudiotagger/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/WavChunkType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/WavChunkType;
    .locals 1

    .line 11
    const-class v0, Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/WavChunkType;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/wav/WavChunkType;
    .locals 1

    .line 11
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavChunkType;->$VALUES:[Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/wav/WavChunkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/wav/WavChunkType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/WavChunkType;->code:Ljava/lang/String;

    return-object v0
.end method
