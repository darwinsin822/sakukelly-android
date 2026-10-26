.class public Lorg/jaudiotagger/audio/flac/FlacTagWriter;
.super Ljava/lang/Object;
.source "FlacTagWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;
    }
.end annotation


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-string v0, "org.jaudiotagger.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    return-void
.end method

.method private insertUsingChunks(Ljava/nio/file/Path;Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 413
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    add-int/2addr v0, p7

    int-to-long v0, v0

    sub-int/2addr p6, p7

    .line 421
    sget-object p7, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " Audio needs shifting:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 424
    invoke-static {p3, p6}, Lorg/jaudiotagger/utils/ShiftData;->shiftDataByOffsetToMakeSpace(Ljava/nio/channels/SeekableByteChannel;I)V

    .line 427
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    int-to-long p6, p1

    invoke-virtual {p3, p6, p7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v5, 0xfa0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 428
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->writeAllNonAudioData(Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;I)V

    return-void
.end method

.method private writeAllNonAudioData(Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result p4

    add-int/lit8 p4, p4, 0x4

    int-to-long v0, p4

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 356
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->writeStreamBlock(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V

    .line 359
    iget-object p4, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p5, :cond_1

    invoke-static {p3, p3}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$600(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {p4, p1, v2}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convertMetadata(Lorg/jaudiotagger/tag/Tag;Z)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 362
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->getListOfNonMetadataBlocks()Ljava/util/List;

    move-result-object p1

    .line 363
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v1, :cond_2

    .line 365
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    if-ge v0, p3, :cond_2

    .line 367
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object p3

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 368
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object p3

    invoke-interface {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 373
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_4

    if-lez p5, :cond_3

    .line 377
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object p3

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_3

    .line 381
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithLastBlockFlag()[B

    move-result-object p3

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 383
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object p1

    invoke-interface {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_4
    if-lez p5, :cond_5

    .line 389
    invoke-virtual {p0, p5}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->addPaddingBlock(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_5
    return-void
.end method

.method private writeStreamBlock(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    invoke-static {p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$100(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 435
    invoke-static {p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$100(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object p2

    invoke-interface {p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method


# virtual methods
.method public addPaddingBlock(I)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 325
    sget-object v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 326
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x4

    .line 330
    new-instance v1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    const/4 v2, 0x1

    sget-object v3, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->PADDING:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    invoke-direct {v1, v2, v3, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLorg/jaudiotagger/audio/flac/metadatablock/BlockType;I)V

    .line 331
    new-instance v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;

    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;-><init>(I)V

    .line 332
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 333
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 334
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_0
    return-object v0
.end method

.method public delete(Lorg/jaudiotagger/tag/Tag;Ljava/nio/file/Path;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 73
    new-instance p1, Lorg/jaudiotagger/tag/flac/FlacTag;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lorg/jaudiotagger/tag/flac/FlacTag;-><init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    .line 74
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/nio/file/Path;)V

    return-void
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/nio/file/Path;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 192
    const-string v0, ":"

    sget-object v1, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Writing tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 193
    :try_start_0
    new-array v1, v1, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p2, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/file/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 195
    :try_start_1
    new-instance v2, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;-><init>(Lorg/jaudiotagger/audio/flac/FlacTagWriter$1;)V

    .line 198
    new-instance v4, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V
    :try_end_2
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-nez v3, :cond_1

    .line 213
    :try_start_3
    invoke-static {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 216
    sget-object v5, Lorg/jaudiotagger/audio/flac/FlacTagWriter$1;->$SwitchMap$org$jaudiotagger$audio$flac$metadatablock$BlockType:[I

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 260
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    goto :goto_1

    .line 252
    :pswitch_0
    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;

    invoke-direct {v5, v3, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    .line 253
    invoke-static {v2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$500(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v7, v3, v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 245
    :pswitch_1
    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;

    invoke-direct {v5, v3, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    .line 246
    invoke-static {v2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$400(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v7, v3, v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 238
    :pswitch_2
    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;

    invoke-direct {v5, v3, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    .line 239
    invoke-static {v2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$300(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v7, v3, v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    :pswitch_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 231
    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v6

    invoke-direct {v5, v6}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;-><init>(I)V

    .line 232
    invoke-static {v2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$200(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v7, v3, v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 220
    :pswitch_4
    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    new-instance v6, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;

    invoke-direct {v6, v3, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    invoke-direct {v5, v3, v6}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-static {v2, v5}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$102(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    goto :goto_2

    .line 260
    :goto_1
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 265
    :cond_0
    :goto_2
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v3
    :try_end_3
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 269
    :try_start_4
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_1
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->computeAvailableRoom()I

    move-result v12

    .line 277
    iget-object v3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    invoke-virtual {v3, p1}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convertMetadata(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 280
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->computeNeededRoom()I

    move-result v5

    add-int/2addr v5, v3

    .line 286
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 290
    sget-object v6, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":Writing tag available bytes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":needed bytes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-eq v12, v5, :cond_3

    add-int/lit8 v6, v5, 0x4

    if-le v12, v6, :cond_2

    goto :goto_3

    .line 299
    :cond_2
    sget-object v6, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":Audio must be shifted NewTagSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ":AvailableRoom:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ":MinimumAdditionalRoomRequired:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v7, v5, v12

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    add-int/lit16 v11, v5, 0xfa0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    .line 301
    invoke-direct/range {v5 .. v12}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->insertUsingChunks(Ljava/nio/file/Path;Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;II)V

    goto :goto_4

    .line 293
    :cond_3
    :goto_3
    sget-object v3, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":Room to Rewrite"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    sub-int v10, v12, v5

    move-object v5, p0

    move-object v6, p1

    move-object v7, v1

    move-object v8, v2

    move-object v9, v4

    .line 294
    invoke-direct/range {v5 .. v10}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->writeAllNonAudioData(Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    if-eqz v1, :cond_4

    .line 303
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/nio/file/AccessDeniedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    return-void

    :catch_1
    move-exception p1

    .line 205
    :try_start_6
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    .line 193
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_5

    .line 303
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v1

    :try_start_9
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    throw v2
    :try_end_9
    .catch Ljava/nio/file/AccessDeniedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception p1

    .line 311
    sget-object v1, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception p1

    .line 306
    sget-object v1, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/nio/file/AccessDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/NoWritePermissionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/nio/file/AccessDeniedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/jaudiotagger/audio/exceptions/NoWritePermissionsException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
