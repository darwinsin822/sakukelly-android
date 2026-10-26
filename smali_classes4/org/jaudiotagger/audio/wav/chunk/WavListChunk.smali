.class public Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;
.super Lorg/jaudiotagger/audio/iff/Chunk;
.source "WavListChunk.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private isValid:Z

.field private loggingName:Ljava/lang/String;

.field private tag:Lorg/jaudiotagger/tag/wav/WavTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "org.jaudiotagger.audio.wav.chunk.WavListChunk"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->isValid:Z

    .line 46
    iput-object p4, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->tag:Lorg/jaudiotagger/tag/wav/WavTag;

    .line 47
    iput-object p1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->loggingName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->INFO:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->tag:Lorg/jaudiotagger/tag/wav/WavTag;

    iget-object v3, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->loggingName:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;-><init>(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->readChunks(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 66
    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->tag:Lorg/jaudiotagger/tag/wav/WavTag;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    iget-object v3, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->chunkHeader:Lorg/jaudiotagger/audio/iff/ChunkHeader;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->setStartLocationInFile(J)V

    .line 67
    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->tag:Lorg/jaudiotagger/tag/wav/WavTag;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    iget-object v3, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->chunkHeader:Lorg/jaudiotagger/audio/iff/ChunkHeader;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v3

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    iget-object v5, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->chunkHeader:Lorg/jaudiotagger/audio/iff/ChunkHeader;

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->setEndLocationInFile(J)V

    .line 68
    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->tag:Lorg/jaudiotagger/tag/wav/WavTag;

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/tag/wav/WavTag;->setExistingInfoTag(Z)V

    move v2, v0

    goto :goto_0

    .line 72
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LIST chunk does not contain INFO instead contains "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " so skipping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RIFF-WAVE Header:\nIs valid?: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
