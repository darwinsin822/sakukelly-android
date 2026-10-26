.class public Lorg/jaudiotagger/audio/dff/BaseChunk;
.super Ljava/lang/Object;
.source "BaseChunk.java"


# static fields
.field public static final ID_LENGHT:I = 0x4


# instance fields
.field private chunkSize:Ljava/lang/Long;

.field private chunkStart:Ljava/lang/Long;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readIdChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dff/BaseChunk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/InvalidChunkException;
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 26
    sget-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->FS:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    new-instance v0, Lorg/jaudiotagger/audio/dff/FsChunk;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/dff/FsChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 32
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->CHNL:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    new-instance v0, Lorg/jaudiotagger/audio/dff/ChnlChunk;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/dff/ChnlChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 38
    :cond_1
    sget-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->CMPR:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    new-instance v0, Lorg/jaudiotagger/audio/dff/CmprChunk;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/dff/CmprChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 44
    :cond_2
    sget-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->END:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->DSD:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 50
    :cond_3
    sget-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->DST:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    new-instance v0, Lorg/jaudiotagger/audio/dff/DstChunk;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/dff/DstChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 56
    :cond_4
    sget-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->FRTE:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 59
    new-instance v0, Lorg/jaudiotagger/audio/dff/FrteChunk;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/dff/FrteChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 62
    :cond_5
    sget-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->ID3:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 65
    new-instance v0, Lorg/jaudiotagger/audio/dff/Id3Chunk;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/dff/Id3Chunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 71
    :cond_6
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/InvalidChunkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not recognized as a valid DFF chunk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/exceptions/InvalidChunkException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_7
    :goto_0
    new-instance v0, Lorg/jaudiotagger/audio/dff/EndChunk;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/dff/EndChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public getChunkEnd()Ljava/lang/Long;
    .locals 4

    .line 122
    iget-object v0, p0, Lorg/jaudiotagger/audio/dff/BaseChunk;->chunkStart:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/jaudiotagger/audio/dff/BaseChunk;->chunkSize:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getChunkSize()Ljava/lang/Long;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/jaudiotagger/audio/dff/BaseChunk;->chunkSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getChunkStart()Ljava/lang/Long;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jaudiotagger/audio/dff/BaseChunk;->chunkStart:Ljava/lang/Long;

    return-object v0
.end method

.method protected readDataChunch(Ljava/nio/channels/FileChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 82
    invoke-static {p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/audio/dff/BaseChunk;->chunkSize:Ljava/lang/Long;

    .line 84
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/dff/BaseChunk;->chunkStart:Ljava/lang/Long;

    return-void
.end method

.method protected skipToChunkEnd(Ljava/nio/channels/FileChannel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/dff/BaseChunk;->getChunkEnd()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method
