.class public Lorg/jaudiotagger/audio/dff/SndChunk;
.super Ljava/lang/Object;
.source "SndChunk.java"


# static fields
.field public static final CHUNKSIZE_LENGTH:I = 0x0

.field public static final SIGNATURE_LENGTH:I = 0x4

.field public static final SND_HEADER_LENGTH:I = 0x4


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dff/SndChunk;
    .locals 2

    .line 19
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 20
    sget-object v1, Lorg/jaudiotagger/audio/dff/DffChunkType;->SND:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lorg/jaudiotagger/audio/dff/SndChunk;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/dff/SndChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lorg/jaudiotagger/audio/dff/DffChunkType;->SND:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
