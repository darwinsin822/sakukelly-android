.class public final enum Lorg/jaudiotagger/audio/wav/WavSaveOrder;
.super Ljava/lang/Enum;
.source "WavSaveOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/wav/WavSaveOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/wav/WavSaveOrder;

.field public static final enum ID3_THEN_INFO:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

.field public static final enum INFO_THEN_ID3:Lorg/jaudiotagger/audio/wav/WavSaveOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    const-string v1, "INFO_THEN_ID3"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/audio/wav/WavSaveOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavSaveOrder;->INFO_THEN_ID3:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    .line 12
    new-instance v1, Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    const-string v2, "ID3_THEN_INFO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jaudiotagger/audio/wav/WavSaveOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jaudiotagger/audio/wav/WavSaveOrder;->ID3_THEN_INFO:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    .line 9
    filled-new-array {v0, v1}, [Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavSaveOrder;->$VALUES:[Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/WavSaveOrder;
    .locals 1

    .line 9
    const-class v0, Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/wav/WavSaveOrder;
    .locals 1

    .line 9
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavSaveOrder;->$VALUES:[Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/wav/WavSaveOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    return-object v0
.end method
