.class public Lorg/jaudiotagger/audio/dsf/FmtChunk;
.super Ljava/lang/Object;
.source "FmtChunk.java"


# static fields
.field public static final FMT_CHUNK_MIN_DATA_SIZE_:I = 0x28

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private chunkSizeLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "org.jaudiotagger.audio.dsf.FmtChunk"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/dsf/FmtChunk;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/dsf/FmtChunk;->chunkSizeLength:J

    return-void
.end method

.method private readAudioInfo(Lorg/jaudiotagger/audio/dsf/DsdChunk;Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 5

    .line 59
    new-instance p1, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    .line 60
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    .line 62
    sget-object p2, Lorg/jaudiotagger/audio/dsf/FmtChunk;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Not enough bytes supplied for Generic audio header. Returning an empty one."

    invoke-virtual {p2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object p1

    .line 66
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 68
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 69
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 70
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 71
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 72
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 73
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 74
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 76
    const-string p2, "DSF"

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 77
    sget-object p2, Lorg/jaudiotagger/audio/SupportedFileFormat;->DSF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setFormat(Ljava/lang/String;)V

    mul-int p2, v2, v1

    mul-int/2addr p2, v0

    .line 78
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 79
    invoke-virtual {p1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 80
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 81
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 82
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    long-to-float p2, v3

    int-to-float v0, v1

    div-float/2addr p2, v0

    float-to-double v0, p2

    .line 83
    invoke-virtual {p1, v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    const/4 p2, 0x0

    .line 84
    invoke-virtual {p1, p2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    return-object p1
.end method

.method public static readChunkHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dsf/FmtChunk;
    .locals 2

    .line 30
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 31
    sget-object v1, Lorg/jaudiotagger/audio/dsf/DsfChunkType;->FORMAT:Lorg/jaudiotagger/audio/dsf/DsfChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/dsf/DsfChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lorg/jaudiotagger/audio/dsf/FmtChunk;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/dsf/FmtChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public readChunkData(Lorg/jaudiotagger/audio/dsf/DsdChunk;Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-wide v0, p0, Lorg/jaudiotagger/audio/dsf/FmtChunk;->chunkSizeLength:J

    sget v2, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    add-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 46
    invoke-static {p2, v0}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/dsf/FmtChunk;->readAudioInfo(Lorg/jaudiotagger/audio/dsf/DsdChunk;Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    move-result-object p1

    return-object p1
.end method
