.class public final enum Lorg/jaudiotagger/audio/wav/WavOptions;
.super Ljava/lang/Enum;
.source "WavOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/wav/WavOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/wav/WavOptions;

.field public static final enum READ_ID3_ONLY:Lorg/jaudiotagger/audio/wav/WavOptions;

.field public static final enum READ_ID3_ONLY_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;

.field public static final enum READ_ID3_UNLESS_ONLY_INFO:Lorg/jaudiotagger/audio/wav/WavOptions;

.field public static final enum READ_ID3_UNLESS_ONLY_INFO_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;

.field public static final enum READ_INFO_ONLY:Lorg/jaudiotagger/audio/wav/WavOptions;

.field public static final enum READ_INFO_ONLY_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;

.field public static final enum READ_INFO_UNLESS_ONLY_ID3:Lorg/jaudiotagger/audio/wav/WavOptions;

.field public static final enum READ_INFO_UNLESS_ONLY_ID3_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 29
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavOptions;

    const-string v1, "READ_ID3_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_ID3_ONLY:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 30
    new-instance v1, Lorg/jaudiotagger/audio/wav/WavOptions;

    const-string v2, "READ_INFO_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jaudiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_INFO_ONLY:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 31
    new-instance v2, Lorg/jaudiotagger/audio/wav/WavOptions;

    const-string v3, "READ_ID3_UNLESS_ONLY_INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/jaudiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 32
    new-instance v3, Lorg/jaudiotagger/audio/wav/WavOptions;

    const-string v4, "READ_INFO_UNLESS_ONLY_ID3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/jaudiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 33
    new-instance v4, Lorg/jaudiotagger/audio/wav/WavOptions;

    const-string v5, "READ_ID3_ONLY_AND_SYNC"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/jaudiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_ID3_ONLY_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 34
    new-instance v5, Lorg/jaudiotagger/audio/wav/WavOptions;

    const-string v6, "READ_INFO_ONLY_AND_SYNC"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/jaudiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_INFO_ONLY_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 35
    new-instance v6, Lorg/jaudiotagger/audio/wav/WavOptions;

    const-string v7, "READ_ID3_UNLESS_ONLY_INFO_AND_SYNC"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/jaudiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 36
    new-instance v7, Lorg/jaudiotagger/audio/wav/WavOptions;

    const-string v8, "READ_INFO_UNLESS_ONLY_ID3_AND_SYNC"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/jaudiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 27
    filled-new-array/range {v0 .. v7}, [Lorg/jaudiotagger/audio/wav/WavOptions;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavOptions;->$VALUES:[Lorg/jaudiotagger/audio/wav/WavOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/WavOptions;
    .locals 1

    .line 27
    const-class v0, Lorg/jaudiotagger/audio/wav/WavOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/WavOptions;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/wav/WavOptions;
    .locals 1

    .line 27
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavOptions;->$VALUES:[Lorg/jaudiotagger/audio/wav/WavOptions;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/wav/WavOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/wav/WavOptions;

    return-object v0
.end method
