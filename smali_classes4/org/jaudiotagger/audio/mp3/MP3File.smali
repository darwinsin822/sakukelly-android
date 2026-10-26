.class public Lorg/jaudiotagger/audio/mp3/MP3File;
.super Lorg/jaudiotagger/audio/AudioFile;
.source "MP3File.java"


# static fields
.field public static final LOAD_ALL:I = 0xe

.field public static final LOAD_IDV1TAG:I = 0x2

.field public static final LOAD_IDV2TAG:I = 0x4

.field public static final LOAD_LYRICS3:I = 0x8

.field private static final MINIMUM_FILESIZE:I = 0x96

.field protected static tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;


# instance fields
.field private id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

.field private id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

.field private id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

.field private lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lorg/jaudiotagger/audio/AudioFile;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 64
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 69
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    .line 75
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/tag/TagException;,
            Lorg/jaudiotagger/audio/exceptions/ReadOnlyFileException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;,
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 545
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/tag/TagException;,
            Lorg/jaudiotagger/audio/exceptions/ReadOnlyFileException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;,
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/tag/TagException;,
            Lorg/jaudiotagger/audio/exceptions/ReadOnlyFileException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;,
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    const-string v0, "First header found after tag:"

    const-string v1, "TagHeaderSize:"

    .line 375
    invoke-direct {p0}, Lorg/jaudiotagger/audio/AudioFile;-><init>()V

    const/4 v2, 0x0

    .line 59
    iput-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 64
    iput-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 69
    iput-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    .line 75
    iput-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 379
    :try_start_0
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    .line 382
    invoke-virtual {p0, p1, p3}, Lorg/jaudiotagger/audio/mp3/MP3File;->checkFilePermissions(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object v2

    .line 385
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getV2TagSizeIfExists(Ljava/io/File;)J

    move-result-wide v3

    .line 386
    sget-object p3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 387
    new-instance p3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-direct {p3, p1, v3, v4}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    iput-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 390
    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    check-cast p3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v5

    cmp-long p3, v3, v5

    if-eqz p3, :cond_0

    .line 392
    sget-object p3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 393
    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    check-cast p3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-direct {p0, v3, v4, p3}, Lorg/jaudiotagger/audio/mp3/MP3File;->checkAudioStart(JLorg/jaudiotagger/audio/mp3/MP3AudioHeader;)Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    move-result-object p3

    iput-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 397
    :cond_0
    invoke-direct {p0, p1, v2, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->readV1Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V

    .line 400
    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    check-cast p3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v0

    long-to-int p3, v0

    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/mp3/MP3File;->readV2Tag(Ljava/io/File;II)V

    .line 406
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 408
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->tag:Lorg/jaudiotagger/tag/Tag;

    goto :goto_0

    .line 410
    :cond_1
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-eqz p1, :cond_2

    .line 412
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->tag:Lorg/jaudiotagger/tag/Tag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 419
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 421
    :cond_4
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/tag/TagException;,
            Lorg/jaudiotagger/audio/exceptions/ReadOnlyFileException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;,
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private checkAudioStart(JLorg/jaudiotagger/audio/mp3/MP3AudioHeader;)Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    .line 291
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_ID3TAG_LENGTH_INCORRECT:Lorg/jaudiotagger/logging/ErrorMessage;

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 296
    new-instance v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 297
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checking from start:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 304
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_START_OF_AUDIO_CONFIRMED:Lorg/jaudiotagger/logging/ErrorMessage;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 304
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-object p3

    .line 312
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_POSSIBLE_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    iget-object v3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 312
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 318
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    .line 319
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p3, v1}, [Ljava/lang/Object;

    move-result-object p3

    .line 318
    invoke-virtual {p2, p3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    :cond_1
    long-to-int p1, p1

    .line 326
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    long-to-int p2, v1

    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->isFilePortionNull(II)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p3

    .line 332
    :cond_2
    new-instance p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    iget-object p2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    iget-object v3, v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 333
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {p1, p2, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 337
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-nez p2, :cond_3

    .line 339
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_START_OF_AUDIO_CONFIRMED:Lorg/jaudiotagger/logging/ErrorMessage;

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 339
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object p3

    .line 346
    :cond_3
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide p1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-nez p1, :cond_4

    .line 348
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    .line 349
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p3, v1}, [Ljava/lang/Object;

    move-result-object p3

    .line 348
    invoke-virtual {p2, p3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    .line 355
    :cond_4
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 355
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object p3
.end method

.method private static createPlainTextStructureFormatter()V
    .locals 1

    .line 1024
    new-instance v0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;

    invoke-direct {v0}, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    return-void
.end method

.method private static createXMLStructureFormatter()V
    .locals 1

    .line 1019
    new-instance v0, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;

    invoke-direct {v0}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    return-void
.end method

.method public static getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;
    .locals 1

    .line 1029
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    return-object v0
.end method

.method private isFilePortionNull(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking file portion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jaudiotagger/logging/Hex;->asHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/jaudiotagger/logging/Hex;->asHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 249
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    int-to-long v2, p1

    .line 251
    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sub-int/2addr p2, p1

    .line 252
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 253
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 256
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 271
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 p1, 0x0

    return p1

    :cond_2
    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 271
    :cond_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_4

    .line 266
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz v1, :cond_5

    .line 271
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 273
    :cond_5
    throw p1
.end method

.method private readV1Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 141
    sget-object p3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v0, "Attempting to read id3v1tags"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 144
    :try_start_0
    new-instance p3, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;
    :try_end_0
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    sget-object p3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v0, "No ids3v11 tag found"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 153
    :goto_0
    :try_start_1
    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-nez p3, :cond_0

    .line 155
    new-instance p3, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;
    :try_end_1
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 160
    :catch_1
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string p2, "No id3v1 tag found"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method private readV2Tag(Ljava/io/File;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    const/16 v0, 0xa

    if-lt p3, v0, :cond_2

    .line 181
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "Attempting to read id3v2tags"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 184
    :try_start_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 185
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p3, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 186
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    .line 190
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_1
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    :catch_0
    :try_start_2
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "No id3v24 tag found"

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :goto_0
    :try_start_3
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-nez p2, :cond_0

    .line 204
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_3
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 209
    :catch_1
    :try_start_4
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "No id3v23 tag found"

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    :cond_0
    :goto_1
    :try_start_5
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-nez p2, :cond_1

    .line 216
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_5
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 221
    :catch_2
    :try_start_6
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string p2, "No id3v22 tag found"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 224
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 182
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p2

    .line 224
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2

    .line 228
    :cond_2
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Not enough room for valid id3v2 tag:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 838
    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->save()V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 850
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 846
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 842
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/NoWritePermissionsException;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/NoWritePermissionsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createDefaultTag()Lorg/jaudiotagger/tag/Tag;
    .locals 2

    .line 1060
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V24:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_0

    .line 1062
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>()V

    return-object v0

    .line 1064
    :cond_0
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V23:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_1

    .line 1066
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    return-object v0

    .line 1068
    :cond_1
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V22:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_2

    .line 1070
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>()V

    return-object v0

    .line 1073
    :cond_2
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>()V

    return-object v0
.end method

.method public delete(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 804
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTag;->delete(Ljava/io/RandomAccessFile;)V

    .line 805
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 806
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 808
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 811
    :cond_0
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz p1, :cond_1

    .line 813
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    :cond_1
    return-void
.end method

.method public displayStructureAsPlainText()Ljava/lang/String;
    .locals 3

    .line 1003
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->createPlainTextStructureFormatter()V

    .line 1004
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->createStructure()V

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1011
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructure()V

    .line 1013
    :cond_1
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1014
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public displayStructureAsXML()Ljava/lang/String;
    .locals 3

    .line 984
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->createXMLStructureFormatter()V

    .line 985
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->createStructure()V

    .line 990
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 992
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructure()V

    .line 994
    :cond_1
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 995
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extractID3v2TagDataIntoFile(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    check-cast v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v0

    long-to-int v0, v0

    if-ltz v0, :cond_0

    .line 476
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 477
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 478
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 479
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 482
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 483
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 484
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 485
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 486
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p1

    .line 489
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    const-string v0, "There is no ID3v2Tag data in this file"

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHash()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    const-string v0, "MD5"

    const v1, 0x8000

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getHash(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    const-string v0, "MD5"

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public getHash(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;,
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    .line 602
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public getHash(Ljava/lang/String;I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 651
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getFile()Ljava/io/File;

    move-result-object v0

    .line 652
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getMP3StartByte(Ljava/io/File;)J

    move-result-wide v1

    .line 655
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->hasID3v1Tag()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 656
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    move-result-object v3

    .line 657
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getSize()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 661
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v5

    .line 663
    new-array v6, p2, [B

    .line 665
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 667
    invoke-virtual {v5, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 670
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long/2addr v7, v1

    int-to-long v0, v3

    sub-long/2addr v7, v0

    move v0, p2

    :goto_1
    int-to-long v1, v0

    cmp-long v1, v1, v7

    if-gtz v1, :cond_1

    .line 675
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 677
    invoke-virtual {p1, v6, v4, v1}, Ljava/security/MessageDigest;->update([BII)V

    add-int/2addr v0, p2

    goto :goto_1

    :cond_1
    long-to-int v1, v7

    sub-int/2addr v1, v0

    add-int/2addr v1, p2

    .line 680
    invoke-virtual {v5, v6, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    .line 681
    invoke-virtual {p1, v6, v4, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 683
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1
.end method

.method public getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-object v0
.end method

.method public getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
    .locals 1

    .line 743
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-object v0
.end method

.method public getID3v2TagAsv24()Lorg/jaudiotagger/tag/id3/ID3v24Tag;
    .locals 1

    .line 751
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    return-object v0
.end method

.method public getMP3AudioHeader()Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getAudioHeader()Lorg/jaudiotagger/audio/AudioHeader;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    return-object v0
.end method

.method public getMP3StartByte(Ljava/io/File;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "First header found after tag:"

    .line 437
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getV2TagSizeIfExists(Ljava/io/File;)J

    move-result-wide v1

    .line 439
    new-instance v3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-direct {v3, p1, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 440
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-eqz p1, :cond_0

    .line 442
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 443
    invoke-direct {p0, v1, v2, v3}, Lorg/jaudiotagger/audio/mp3/MP3File;->checkAudioStart(JLorg/jaudiotagger/audio/mp3/MP3AudioHeader;)Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    move-result-object v3

    .line 445
    :cond_0
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTagAndConvertOrCreateAndSetDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 1121
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getTagAndConvertOrCreateDefault()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    .line 1122
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;->setTag(Lorg/jaudiotagger/tag/Tag;)V

    .line 1123
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTagAndConvertOrCreateDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 3

    .line 1104
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getTagOrCreateDefault()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    .line 1105
    move-object v1, v0

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3File;->convertID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/reference/ID3V2Version;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getTagOrCreateDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 1086
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1089
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->createDefaultTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasID3v1Tag()Z
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasID3v2Tag()Z
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public precheck(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    .line 863
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 869
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/nio/file/Files;->isWritable(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Permissions;->displayPermissions(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 872
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 873
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    return-void

    .line 878
    :cond_2
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 879
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_3
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 866
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;->save(Ljava/io/File;)V

    return-void
.end method

.method public save(Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "New mp3 start byte: "

    const-string v1, "Deleting ID3v2 tag:"

    const-string v2, "Writing ID3v2 tag:"

    .line 894
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    .line 896
    sget-object v3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Saving  : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/mp3/MP3File;->precheck(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 905
    :try_start_0
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v2Save()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v5, "rw"

    if-eqz v4, :cond_1

    .line 907
    :try_start_1
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-nez v4, :cond_0

    .line 909
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 910
    :try_start_2
    new-instance v2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v2}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>()V

    invoke-virtual {v2, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 911
    new-instance v2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    invoke-virtual {v2, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 912
    new-instance v2, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v2}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>()V

    invoke-virtual {v2, v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 913
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    goto :goto_0

    .line 918
    :cond_0
    :try_start_3
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getAudioHeader()Lorg/jaudiotagger/audio/AudioHeader;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    .line 920
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v6

    .line 921
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2, p1, v6, v7}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/File;J)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-eqz v2, :cond_1

    .line 923
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v1, v8, v9}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V

    .line 929
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 932
    :try_start_4
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isLyrics3Save()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 934
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    if-eqz v1, :cond_2

    .line 936
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;->write(Ljava/io/RandomAccessFile;)V

    .line 940
    :cond_2
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1Save()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 942
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "Processing ID3v1"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-nez v1, :cond_3

    .line 945
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "Deleting ID3v1"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 946
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-direct {v1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->delete(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 950
    :cond_3
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v2, "Saving ID3v1"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->write(Ljava/io/RandomAccessFile;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 974
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v3, v0

    goto :goto_5

    :catch_0
    move-exception v1

    move-object v3, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v3, v0

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception v1

    .line 967
    :goto_2
    :try_start_5
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 968
    throw v1

    :catch_4
    move-exception v1

    .line 962
    :goto_3
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 963
    throw v1

    :catch_5
    move-exception v1

    .line 957
    :goto_4
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 958
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    if-eqz v3, :cond_5

    .line 974
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 976
    :cond_5
    throw p1
.end method

.method public setID3v1Tag(Lorg/jaudiotagger/tag/Tag;)V
    .locals 2

    .line 561
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 562
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v1Tag(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .locals 2

    .line 575
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:abstract"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 576
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v1Tag(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V
    .locals 2

    .line 555
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 556
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 1

    .line 712
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 713
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    .line 715
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    goto :goto_0

    .line 719
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    :goto_0
    return-void
.end method

.method public setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .locals 1

    .line 699
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-void
.end method

.method public setID3v2TagOnly(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    const/4 p1, 0x0

    .line 733
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    return-void
.end method

.method public setTag(Lorg/jaudiotagger/tag/Tag;)V
    .locals 1

    .line 1041
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->tag:Lorg/jaudiotagger/tag/Tag;

    .line 1042
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_0

    .line 1044
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v1Tag(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V

    goto :goto_0

    .line 1048
    :cond_0
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    :goto_0
    return-void
.end method
