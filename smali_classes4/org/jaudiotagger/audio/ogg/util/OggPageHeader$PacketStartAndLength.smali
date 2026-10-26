.class public Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketStartAndLength"
.end annotation


# instance fields
.field private length:Ljava/lang/Integer;

.field private startPosition:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    .line 348
    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    .line 353
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setLength(I)V
    .locals 0

    .line 373
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    .line 363
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NextPkt(start:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->startPosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->length:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
