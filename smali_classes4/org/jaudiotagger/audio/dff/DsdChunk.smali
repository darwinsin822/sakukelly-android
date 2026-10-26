.class public Lorg/jaudiotagger/audio/dff/DsdChunk;
.super Ljava/lang/Object;
.source "DsdChunk.java"


# static fields
.field public static final CHUNKSIZE_LENGTH:I = 0x8

.field public static final DSD_HEADER_LENGTH:I = 0x8

.field public static final SIGNATURE_LENGTH:I = 0x4


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dff/DsdChunk;
    .locals 2

    .line 20
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 21
    sget-object v1, Lorg/jaudiotagger/audio/dsf/DsfChunkType;->DSD:Lorg/jaudiotagger/audio/dsf/DsfChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/dsf/DsfChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lorg/jaudiotagger/audio/dff/DsdChunk;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/dff/DsdChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lorg/jaudiotagger/audio/dff/DffChunkType;->DSD:Lorg/jaudiotagger/audio/dff/DffChunkType;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/dff/DffChunkType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
