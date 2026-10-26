.class public final enum Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;
.super Ljava/lang/Enum;
.source "WavCorruptChunkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

.field public static final enum CORRUPT_ID3_EARLY:Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

.field public static final enum CORRUPT_ID3_LATE:Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

.field public static final enum CORRUPT_LIST_EARLY:Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

.field public static final enum CORRUPT_LIST_LATE:Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    const/4 v1, 0x0

    const-string v2, "id3"

    const-string v3, "CORRUPT_ID3_EARLY"

    invoke-direct {v0, v3, v1, v2}, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;->CORRUPT_ID3_EARLY:Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    .line 11
    new-instance v1, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    const/4 v2, 0x1

    const-string v3, "d3 "

    const-string v4, "CORRUPT_ID3_LATE"

    invoke-direct {v1, v4, v2, v3}, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;->CORRUPT_ID3_LATE:Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    .line 12
    new-instance v2, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    const/4 v3, 0x2

    const-string v4, "LIS"

    const-string v5, "CORRUPT_LIST_EARLY"

    invoke-direct {v2, v5, v3, v4}, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;->CORRUPT_LIST_EARLY:Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    .line 13
    new-instance v3, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    const/4 v4, 0x3

    const-string v5, "IST"

    const-string v6, "CORRUPT_LIST_LATE"

    invoke-direct {v3, v6, v4, v5}, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;->CORRUPT_LIST_LATE:Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    .line 8
    filled-new-array {v0, v1, v2, v3}, [Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;->$VALUES:[Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;
    .locals 1

    .line 8
    const-class v0, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;
    .locals 1

    .line 8
    sget-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;->$VALUES:[Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/chunk/WavCorruptChunkType;->code:Ljava/lang/String;

    return-object v0
.end method
