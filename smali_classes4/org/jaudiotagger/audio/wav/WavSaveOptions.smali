.class public final enum Lorg/jaudiotagger/audio/wav/WavSaveOptions;
.super Ljava/lang/Enum;
.source "WavSaveOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/wav/WavSaveOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/wav/WavSaveOptions;

.field public static final enum SAVE_ACTIVE:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

.field public static final enum SAVE_BOTH:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

.field public static final enum SAVE_BOTH_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

.field public static final enum SAVE_EXISTING_AND_ACTIVE:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

.field public static final enum SAVE_EXISTING_AND_ACTIVE_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavSaveOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    const-string v1, "SAVE_EXISTING_AND_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    .line 26
    new-instance v1, Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    const-string v2, "SAVE_ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jaudiotagger/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_ACTIVE:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    .line 27
    new-instance v2, Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    const-string v3, "SAVE_BOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/jaudiotagger/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    .line 28
    new-instance v3, Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    const-string v4, "SAVE_EXISTING_AND_ACTIVE_AND_SYNC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/jaudiotagger/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    .line 29
    new-instance v4, Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    const-string v5, "SAVE_BOTH_AND_SYNC"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/jaudiotagger/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    .line 23
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->$VALUES:[Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/WavSaveOptions;
    .locals 1

    .line 23
    const-class v0, Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/wav/WavSaveOptions;
    .locals 1

    .line 23
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->$VALUES:[Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/wav/WavSaveOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    return-object v0
.end method
