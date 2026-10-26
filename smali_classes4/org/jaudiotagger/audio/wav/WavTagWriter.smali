.class public Lorg/jaudiotagger/audio/wav/WavTagWriter;
.super Ljava/lang/Object;
.source "WavTagWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;,
        Lorg/jaudiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;
    }
.end annotation


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private loggingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-string v0, "org.jaudiotagger.audio.wav"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    return-void
.end method

.method private checkExistingLocations(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 798
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;-><init>(Lorg/jaudiotagger/audio/wav/WavTagWriter;)V

    .line 799
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-gez v1, :cond_0

    .line 801
    iput-boolean v4, v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    .line 803
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-gtz v1, :cond_1

    .line 805
    iput-boolean v4, v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    .line 806
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 808
    iput-boolean v4, v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    goto :goto_0

    .line 815
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-gtz v1, :cond_1

    .line 817
    iput-boolean v4, v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    .line 818
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 820
    iput-boolean v4, v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method private deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1338
    invoke-static {p2}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->getChunkBeforeFirstMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkSummary;

    move-result-object p2

    .line 1340
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 1347
    :cond_0
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :goto_0
    return-void
.end method

.method private deleteId3ChunkAndCreateNewOneAtFileEnd(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1266
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 1267
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1268
    invoke-direct {p0, p1, p4}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeId3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    long-to-int p3, v0

    add-int/lit8 v0, p3, 0x8

    .line 323
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v0

    long-to-int p2, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x9

    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    :goto_0
    return-void
.end method

.method private deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p2

    .line 308
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    long-to-int p3, v0

    add-int/lit8 p3, p3, 0x8

    .line 309
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    return-void
.end method

.method private deletePaddingChunk(Ljava/nio/channels/FileChannel;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p2

    .line 476
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 478
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 479
    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 489
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    int-to-long p2, p3

    sub-long/2addr v0, p2

    .line 490
    sget-object p2, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, "-------------Setting new length to:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    return-void

    .line 481
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 482
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    int-to-long v2, p3

    sub-long v2, v0, v2

    .line 483
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 484
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 485
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 486
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private deleteTagChunk(Ljava/nio/channels/FileChannel;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p2

    .line 350
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 352
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 353
    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 363
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    int-to-long v2, p3

    sub-long/2addr v0, v2

    .line 364
    sget-object p2, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Shortening by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " Setting new length to:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    return-void

    .line 355
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 356
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    int-to-long v2, p3

    sub-long v2, v0, v2

    .line 357
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 358
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 359
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 360
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 887
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isInfoTagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 900
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    sget v0, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 503
    sget v0, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 504
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 505
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    long-to-int v1, v1

    sget v2, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    sub-int/2addr v1, v2

    sget v2, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    sub-int/2addr v1, v2

    .line 506
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 507
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 508
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private saveActive(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1283
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/wav/WavInfoTag;

    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveInfo(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 1290
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveId3(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    :goto_0
    return-void
.end method

.method private saveActiveExisting(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1306
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/wav/WavInfoTag;

    if-eqz v0, :cond_1

    .line 1308
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveBoth(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 1314
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveActive(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 1319
    :cond_1
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1321
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveBoth(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 1325
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveActive(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    :goto_0
    return-void
.end method

.method private saveBoth(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 916
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->convertInfoChunk(Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 917
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    .line 919
    invoke-virtual {p0, p1, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->convertID3Chunk(Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 922
    invoke-static {p3}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 924
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 926
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWavSaveOrder()Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    move-result-object p3

    sget-object v3, Lorg/jaudiotagger/audio/wav/WavSaveOrder;->INFO_THEN_ID3:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    if-ne p3, v3, :cond_0

    .line 928
    invoke-direct {p0, p2, v0, v1, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    .line 929
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeId3ChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1

    .line 933
    :cond_0
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeId3ChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    .line 934
    invoke-direct {p0, p2, v0, v1, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_1

    .line 938
    :cond_1
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v3

    if-nez v3, :cond_5

    .line 940
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getMetadataChunkSummaryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 942
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getMetadataChunkSummaryList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getMetadataChunkSummaryList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {v3, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    .line 943
    :goto_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 945
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    .line 946
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ">>>>Deleting--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 949
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    invoke-direct {p0, p2, v4, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto :goto_0

    .line 953
    :cond_2
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v5

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    invoke-direct {p0, p2, v4, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto :goto_0

    .line 957
    :cond_3
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWavSaveOrder()Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    move-result-object p3

    sget-object v3, Lorg/jaudiotagger/audio/wav/WavSaveOrder;->INFO_THEN_ID3:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    if-ne p3, v3, :cond_4

    .line 959
    invoke-direct {p0, p2, v0, v1, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    .line 960
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeId3ChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 964
    :cond_4
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeId3ChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    .line 965
    invoke-direct {p0, p2, v0, v1, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    :goto_1
    return-void

    .line 971
    :cond_5
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " Metadata tags are corrupted and not at end of file so cannot be fixed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private saveId3(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1163
    invoke-virtual {p0, p1, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->convertID3Chunk(Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1166
    invoke-static {p3}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 1169
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeId3ChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1

    .line 1172
    :cond_0
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1174
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getMetadataChunkSummaryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1176
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getMetadataChunkSummaryList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getMetadataChunkSummaryList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {v0, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    .line 1177
    :goto_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    .line 1180
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>>>Deleting--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1183
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    invoke-direct {p0, p2, v1, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto :goto_0

    .line 1187
    :cond_1
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    invoke-direct {p0, p2, v1, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto :goto_0

    .line 1191
    :cond_2
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeId3ChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    :goto_1
    return-void

    .line 1195
    :cond_3
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " Metadata tags are corrupted and not at end of file so cannot be fixed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    invoke-static {p2, p3}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 870
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    :cond_0
    return-void
.end method

.method private writeId3ChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1251
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeId3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private writeId3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 563
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    :cond_0
    const/16 v0, 0x8

    .line 567
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 568
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 569
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 570
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 571
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 572
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 575
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private writeInfoChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavInfoTag;Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    .line 841
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 843
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide v2

    invoke-direct {p0, p1, p3, v2, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    .line 845
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-lez p3, :cond_1

    .line 847
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide p2

    sub-long/2addr p2, v0

    long-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    goto :goto_0

    .line 853
    :cond_0
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private writeInfoChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1147
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method private writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method private writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 524
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    :cond_0
    const/16 v0, 0x8

    .line 527
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 528
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 529
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->LIST:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    long-to-int v1, p3

    .line 530
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 531
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 532
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 535
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 536
    invoke-direct {p0, p1, p3, p4}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V

    return-void
.end method

.method private writePaddingToFile(Ljava/nio/channels/FileChannel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method


# virtual methods
.method public convertID3Chunk(Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 732
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 733
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getSizeOfID3TagOnly()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    const-wide/16 v5, 0x1

    and-long v7, v1, v5

    cmp-long p2, v7, v3

    if-eqz p2, :cond_0

    add-long/2addr v1, v5

    .line 745
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p2

    if-nez p2, :cond_1

    .line 747
    invoke-static {}, Lorg/jaudiotagger/tag/wav/WavTag;->createDefaultID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/wav/WavTag;->setID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 751
    :cond_1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p2

    long-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    .line 755
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length p2, p2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    .line 757
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    .line 758
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 759
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    .line 761
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 762
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 768
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public convertInfoChunk(Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 620
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 621
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p1

    .line 624
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getAll()Ljava/util/List;

    move-result-object v1

    .line 625
    new-instance v2, Lorg/jaudiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;

    invoke-direct {v2, p0}, Lorg/jaudiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;-><init>(Lorg/jaudiotagger/audio/wav/WavTagWriter;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 629
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ":"

    const-string v6, " Writing:"

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/tag/TagField;

    .line 631
    check-cast v4, Lorg/jaudiotagger/tag/TagTextField;

    .line 632
    invoke-interface {v4}, Lorg/jaudiotagger/tag/TagTextField;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jaudiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v7

    invoke-static {v7}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getByFieldKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v7

    .line 633
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 634
    sget-object v8, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 637
    invoke-interface {v4}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 638
    array-length v9, v8

    invoke-static {v9}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 639
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 642
    array-length v9, v8

    int-to-long v9, v9

    invoke-static {v9, v10}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 644
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 648
    :cond_1
    sget-object v9, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    if-ne v7, v9, :cond_0

    .line 651
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 653
    sget-object v3, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TWONKY_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 654
    sget-object v3, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TWONKY_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 656
    array-length v3, v8

    invoke-static {v3}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 657
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 660
    array-length v3, v8

    int-to-long v3, v3

    invoke-static {v3, v4}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 662
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 669
    :cond_3
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getUnrecognisedFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 670
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 672
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/TagTextField;

    .line 680
    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagTextField;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TWONKY_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_4

    .line 682
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 684
    :cond_5
    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagTextField;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 685
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagTextField;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 686
    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 687
    array-length v4, v1

    invoke-static {v4}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 688
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 691
    array-length v1, v1

    int-to-long v7, v1

    invoke-static {v7, v8}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 693
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 698
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 702
    sget v0, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 703
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->INFO:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 704
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 708
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 709
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 710
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 711
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 717
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public delete(Lorg/jaudiotagger/tag/Tag;Ljava/nio/file/Path;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 185
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Deleting metadata from file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 186
    :try_start_0
    new-array p1, p1, [Ljava/nio/file/OpenOption;

    sget-object v0, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p2, p1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->getExistingMetadata(Ljava/nio/file/Path;)Lorg/jaudiotagger/tag/wav/WavTag;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 193
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->checkExistingLocations(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;

    move-result-object v1

    .line 195
    iget-boolean v2, v1, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    if-eqz v2, :cond_3

    .line 198
    iget-boolean v2, v1, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    if-eqz v2, :cond_1

    .line 200
    iget-boolean v1, v1, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    .line 206
    :cond_0
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    .line 212
    :cond_1
    iget-boolean v1, v1, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 215
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto/16 :goto_0

    .line 219
    :cond_2
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 220
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto/16 :goto_0

    .line 227
    :cond_3
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    .line 228
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v2

    .line 229
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3MetadataForChunkSummaryHeader(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v3

    .line 232
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 234
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 235
    invoke-direct {p0, p1, v0, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    goto/16 :goto_0

    .line 237
    :cond_4
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 239
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 240
    invoke-direct {p0, p1, v0, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    goto :goto_0

    .line 243
    :cond_5
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    .line 245
    invoke-direct {p0, p1, v0, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 246
    invoke-direct {p0, p1, v0, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    goto :goto_0

    .line 251
    :cond_6
    invoke-direct {p0, p1, v0, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 252
    invoke-direct {p0, p1, v0, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    goto :goto_0

    .line 257
    :cond_7
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 259
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    .line 260
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v2

    .line 262
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 264
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 268
    :cond_8
    invoke-direct {p0, p1, v0, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    goto :goto_0

    .line 271
    :cond_9
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 273
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3MetadataForChunkSummaryHeader(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v1

    .line 275
    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 277
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 281
    :cond_a
    invoke-direct {p0, p1, v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 289
    :cond_b
    :goto_0
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_c

    .line 290
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 186
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_d

    .line 290
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 293
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteInfoChunkAndCreateNewOneAtFileEnd(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1084
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 1085
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1086
    invoke-direct {p0, p1, p4}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public deleteOrTruncateId3Tag(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1061
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 1067
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3MetadataForChunkSummaryHeader(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 1068
    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    :goto_0
    return-void
.end method

.method public deleteOrTruncateInfoTag(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1229
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 1230
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 1236
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    :goto_0
    return-void
.end method

.method public getExistingMetadata(Ljava/nio/file/Path;)Lorg/jaudiotagger/tag/wav/WavTag;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 79
    :try_start_0
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavTagReader;

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagReader;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagReader;->read(Ljava/nio/file/Path;)Lorg/jaudiotagger/tag/wav/WavTag;

    move-result-object p1
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 84
    :catch_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to read file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 990
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3MetadataForChunkSummaryHeader(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 991
    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 992
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 993
    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    goto :goto_0

    .line 996
    :cond_0
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 998
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 999
    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 1000
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3MetadataForChunkSummaryHeader(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 1001
    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public replaceId3ChunkAtFileEnd(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1210
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3MetadataForChunkSummaryHeader(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 1211
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1213
    invoke-direct {p0, p1, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeId3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 1217
    :cond_0
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3ChunkAndCreateNewOneAtFileEnd(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public replaceInfoChunkAtFileEnd(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 1041
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "writinginfo"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavInfoTag;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 1048
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoChunkAndCreateNewOneAtFileEnd(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public saveInfo(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1099
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->convertInfoChunk(Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1100
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    .line 1103
    invoke-static {p3}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1105
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 1106
    invoke-direct {p0, p2, p1, v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_1

    .line 1109
    :cond_0
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1111
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getMetadataChunkSummaryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1113
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getMetadataChunkSummaryList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getMetadataChunkSummaryList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {v2, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    .line 1114
    :goto_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1116
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    .line 1117
    sget-object v3, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ">>>>Deleting--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1120
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    invoke-direct {p0, p2, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto :goto_0

    .line 1124
    :cond_1
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    invoke-direct {p0, p2, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto :goto_0

    .line 1128
    :cond_2
    invoke-direct {p0, p2, p1, v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoChunkAtFileEnd(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    :goto_1
    return-void

    .line 1132
    :cond_3
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " Metadata tags are corrupted and not at end of file so cannot be fixed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seekToStartOfId3MetadataForChunkSummaryHeader(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/iff/ChunkSummary;)Lorg/jaudiotagger/audio/iff/ChunkHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 156
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":seekToStartOfIdMetadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 158
    new-instance p2, Lorg/jaudiotagger/audio/iff/ChunkHeader;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 159
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    .line 160
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 161
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 162
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3_UPPERCASE:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 163
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Unable to find ID3 chunk at original location has file been modified externally:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_1
    :goto_0
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3_UPPERCASE:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":on save ID3 chunk will be correctly set with id3 id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :cond_2
    return-object p2
.end method

.method public seekToStartOfId3MetadataForChunkSummaryHeader(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 134
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":seekToStartOfIdMetadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 136
    new-instance p2, Lorg/jaudiotagger/audio/iff/ChunkHeader;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 137
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    .line 138
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 139
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 140
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3_UPPERCASE:Lorg/jaudiotagger/audio/wav/WavChunkType;

    .line 141
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Unable to find ID3 chunk at original location has file been modified externally:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_1
    :goto_0
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3_UPPERCASE:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":on save ID3 chunk will be correctly set with id3 id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :cond_2
    return-object p2
.end method

.method public seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 98
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 99
    new-instance p2, Lorg/jaudiotagger/audio/iff/ChunkHeader;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 100
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    .line 101
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 103
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavChunkType;->LIST:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 105
    :cond_0
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " Unable to find List chunk at original location has file been modified externally"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seekToStartOfListInfoMetadataForChunkSummaryHeader(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/iff/ChunkSummary;)Lorg/jaudiotagger/audio/iff/ChunkHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 113
    new-instance p2, Lorg/jaudiotagger/audio/iff/ChunkHeader;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 114
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    .line 115
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 117
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavChunkType;->LIST:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 119
    :cond_0
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " Unable to find List chunk at original location has file been modified externally"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/nio/file/Path;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 376
    const-string v0, ":"

    sget-object v1, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Writing tag to file:start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWavSaveOptions()Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    move-result-object v1

    .line 382
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->getExistingMetadata(Ljava/nio/file/Path;)Lorg/jaudiotagger/tag/wav/WavTag;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 391
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/wav/WavTag;->isBadChunkData()Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x2

    .line 396
    :try_start_1
    new-array v3, v3, [Ljava/nio/file/OpenOption;

    sget-object v4, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p2, v3}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_1
    .catch Ljava/nio/file/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    :try_start_2
    check-cast p1, Lorg/jaudiotagger/tag/wav/WavTag;

    .line 399
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    if-ne v1, v4, :cond_0

    .line 401
    invoke-direct {p0, p1, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveBoth(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 403
    :cond_0
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_ACTIVE:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    if-ne v1, v4, :cond_1

    .line 405
    invoke-direct {p0, p1, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveActive(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 407
    :cond_1
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    if-ne v1, v4, :cond_2

    .line 409
    invoke-direct {p0, p1, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveActiveExisting(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 411
    :cond_2
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    if-ne v1, v4, :cond_3

    .line 413
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->syncTagBeforeWrite()V

    .line 414
    invoke-direct {p0, p1, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveBoth(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 416
    :cond_3
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    if-ne v1, v4, :cond_9

    .line 418
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->syncTagBeforeWrite()V

    .line 419
    invoke-direct {p0, p1, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveActiveExisting(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 428
    :goto_0
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/wav/WavTag;->isNonStandardPadding()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 430
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/wav/WavTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    .line 433
    instance-of v2, v1, Lorg/jaudiotagger/audio/iff/PaddingChunkSummary;

    if-eqz v2, :cond_4

    .line 436
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 437
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getChunkSize()J

    move-result-wide v7

    long-to-int p1, v7

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 438
    invoke-virtual {v3, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 439
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 440
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 442
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_5

    move v6, v5

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    .line 450
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 451
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getChunkSize()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v3, p1, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deletePaddingChunk(Ljava/nio/channels/FileChannel;II)V

    .line 458
    :cond_7
    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_8

    .line 459
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/nio/file/AccessDeniedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 470
    :cond_8
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " Writing tag to file:Done"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return-void

    .line 424
    :cond_9
    :try_start_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " No setting for:WavSaveOptions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 396
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v3, :cond_a

    .line 459
    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    throw v1
    :try_end_7
    .catch Ljava/nio/file/AccessDeniedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p1

    .line 466
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

    :catch_1
    move-exception p1

    .line 462
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

    .line 393
    :cond_b
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    const-string p2, "Unable to make changes to this file because contains bad chunk data"

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    .line 386
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
.end method

.method public writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWavSaveOrder()Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/audio/wav/WavSaveOrder;->INFO_THEN_ID3:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    if-ne v0, v1, :cond_0

    .line 1018
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    .line 1019
    invoke-direct {p0, p1, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeId3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 1023
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeId3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    .line 1024
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
