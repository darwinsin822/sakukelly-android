.class public Lorg/jaudiotagger/audio/dff/DstChunk;
.super Lorg/jaudiotagger/audio/dff/BaseChunk;
.source "DstChunk.java"


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/dff/BaseChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public readDataChunch(Ljava/nio/channels/FileChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/dff/BaseChunk;->readDataChunch(Ljava/nio/channels/FileChannel;)V

    .line 24
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/dff/DstChunk;->skipToChunkEnd(Ljava/nio/channels/FileChannel;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lorg/jaudiotagger/audio/dff/DffChunkType;->ID3:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
