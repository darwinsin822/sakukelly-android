.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;
.super Ljava/lang/Object;
.source "MetadataBlockHeader.java"


# static fields
.field public static final BLOCK_LENGTH:I = 0x3

.field public static final BLOCK_TYPE_LENGTH:I = 0x1

.field public static final HEADER_LENGTH:I = 0x4

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private blockType:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

.field private bytes:[B

.field private dataLength:I

.field private isLastBlock:Z

.field private startByte:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "org.jaudiotagger.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(JLjava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-wide p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->startByte:J

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    and-int/lit16 p2, p2, 0x80

    ushr-int/lit8 p2, p2, 0x7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    .line 79
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    and-int/lit8 p2, p2, 0x7f

    .line 80
    invoke-static {}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->values()[Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_2

    .line 82
    invoke-static {}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->values()[Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v1

    aget-object p2, v1, p2

    iput-object p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 83
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->u(I)I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->u(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p2, v0

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->u(I)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    const/4 p2, 0x4

    .line 84
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    :goto_1
    if-ge p1, p2, :cond_1

    .line 87
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 92
    :cond_2
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object p3, Lorg/jaudiotagger/logging/ErrorMessage;->FLAC_NO_BLOCKTYPE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ZLorg/jaudiotagger/audio/flac/metadatablock/BlockType;I)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 105
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 106
    iput-object p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    .line 107
    iput-boolean p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    .line 108
    iput p3, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->getId()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->getId()I

    move-result p1

    :goto_0
    int-to-byte p1, p1

    .line 119
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/high16 p1, 0xff0000

    and-int/2addr p1, p3

    ushr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    .line 122
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const p1, 0xff00

    and-int/2addr p1, p3

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 123
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    .line 124
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 126
    new-array p1, v0, [B

    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_1

    .line 129
    iget-object p2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    aput-byte p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static readHeader(Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 54
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    .line 56
    invoke-virtual {p0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-lt p0, v0, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 62
    new-instance p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    invoke-direct {p0, v2, v3, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(JLjava/nio/ByteBuffer;)V

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to read required number of databytes read:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ":required:4"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private u(I)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method


# virtual methods
.method public getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    return-object v0
.end method

.method public getBytes()[B
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    return-object v0
.end method

.method public getBytesWithLastBlockFlag()[B
    .locals 3

    .line 161
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getBytesWithoutIsLastBlockFlag()[B
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->bytes:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .line 140
    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    return v0
.end method

.method public isLastBlock()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 67
    iget-wide v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->startByte:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->blockType:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    iget v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->dataLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "StartByte:%d BlockType:%s DataLength:%d isLastBlock:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
