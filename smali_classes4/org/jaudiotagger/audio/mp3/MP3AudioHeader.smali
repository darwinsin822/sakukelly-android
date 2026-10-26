.class public Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;
.super Ljava/lang/Object;
.source "MP3AudioHeader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/AudioHeader;


# static fields
.field private static final FILE_BUFFER_SIZE:I = 0x1388

.field private static final MIN_BUFFER_REMAINING_REQUIRED:I = 0xc4

.field private static final NO_SECONDS_IN_HOUR:I = 0xe10

.field private static final isVbrIdentifier:C = '~'

.field public static logger:Ljava/util/logging/Logger;

.field private static final timeInFormat:Ljava/text/SimpleDateFormat;

.field private static final timeOutFormat:Ljava/text/SimpleDateFormat;

.field private static final timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private audioDataEndPosition:Ljava/lang/Long;

.field private audioDataStartPosition:Ljava/lang/Long;

.field private bitrate:J

.field private encoder:Ljava/lang/String;

.field private fileSize:J

.field protected mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

.field protected mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

.field protected mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

.field private numberOfFrames:J

.field private numberOfFramesEstimate:J

.field private startByte:J

.field private timePerFrame:D

.field private trackLength:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ss"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    .line 88
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "kk:mm:ss"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    .line 93
    const-string v0, "org.jaudiotagger.audio.mp3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->seek(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No audio header found within"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->seek(Ljava/io/File;J)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    sget-object p3, Lorg/jaudiotagger/logging/ErrorMessage;->NO_AUDIO_HEADER_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getTimePerFrame()D
    .locals 2

    .line 510
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    return-wide v0
.end method

.method private isNextFrameValid(Ljava/io/File;JLjava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking next frame"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":fpc:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "skipping to:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 350
    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 355
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v0

    const/16 v1, 0x12c4

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 357
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Frame size is too large to be a frame:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v2

    .line 362
    :cond_1
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v1

    const/16 v3, 0xc4

    add-int/2addr v1, v3

    if-gt v0, v1, :cond_4

    .line 364
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Buffer too small, need to reload, buffer size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 366
    invoke-virtual {p5, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 367
    invoke-virtual {p5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p1

    invoke-virtual {p5, p4, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 368
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 372
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    if-gt p1, v3, :cond_2

    .line 375
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p2, "Nearly at end of file, no header found:"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v2

    .line 380
    :cond_2
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    iget-object p2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p2

    add-int/2addr p2, v3

    if-gt p1, p2, :cond_3

    .line 383
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p2, "Nearly at end of file, no room for next frame, no header found:"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v2

    :cond_3
    move p1, v2

    .line 389
    :cond_4
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 390
    invoke-static {p4}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 394
    :try_start_0
    invoke-static {p4}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 395
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p3, "Check next frame confirms is an audio header "

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    .line 400
    :catch_0
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p3, "Check next frame has identified this is not an audio header"

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_5
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p3, "isMPEGFrame has identified this is not an audio header"

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 409
    :goto_0
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v2
.end method


# virtual methods
.method public getAudioDataEndPosition()Ljava/lang/Long;
    .locals 1

    .line 874
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getAudioDataLength()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x0

    .line 857
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAudioDataStartPosition()Ljava/lang/Long;
    .locals 1

    .line 863
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getBitRate()Ljava/lang/String;
    .locals 3

    .line 647
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    const-string v1, "~"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isVbr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 651
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 657
    :cond_1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitRateAsNumber()J
    .locals 2

    .line 638
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    return-wide v0
.end method

.method public getBitsPerSample()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getByteRate()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    .line 716
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getChannelModeAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmphasis()Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getEmphasisAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoder()Ljava/lang/String;
    .locals 1

    .line 781
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 2

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersionAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayerAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 708
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP3:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMp3StartByte()J
    .locals 2

    .line 433
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    return-wide v0
.end method

.method public getMpegLayer()Ljava/lang/String;
    .locals 1

    .line 700
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayerAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMpegVersion()Ljava/lang/String;
    .locals 1

    .line 692
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersionAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoOfSamples()Ljava/lang/Long;
    .locals 2

    .line 470
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfFrames()J
    .locals 2

    .line 464
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    return-wide v0
.end method

.method public getNumberOfFramesEstimate()J
    .locals 2

    .line 479
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    return-wide v0
.end method

.method public getPreciseTrackLength()D
    .locals 2

    .line 531
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->trackLength:D

    return-wide v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .locals 1

    .line 684
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRateAsNumber()I
    .locals 1

    .line 667
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrackLength()I
    .locals 2

    .line 536
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getPreciseTrackLength()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getTrackLengthAsString()Ljava/lang/String;
    .locals 6

    .line 548
    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getTrackLength()I

    move-result v0

    int-to-long v0, v0

    .line 549
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 552
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v4, 0xe10

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 556
    :try_start_2
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 558
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 559
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 563
    :cond_0
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v0
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 565
    :try_start_5
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    .line 566
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_2
    move-exception v0

    .line 552
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 571
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to parse:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getPreciseTrackLength()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed with ParseException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 572
    const-string v0, ""

    return-object v0
.end method

.method public isCopyrighted()Z
    .locals 1

    .line 758
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted()Z

    move-result v0

    return v0
.end method

.method public isLossless()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .line 763
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isOriginal()Z

    move-result v0

    return v0
.end method

.method public isPadding()Z
    .locals 1

    .line 768
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPadding()Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 753
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPrivate()Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 748
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isProtected()Z

    move-result v0

    return v0
.end method

.method public isVariableBitRate()Z
    .locals 1

    .line 732
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isVbr()Z

    move-result v0

    return v0

    .line 736
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->isVbr()Z

    move-result v0

    return v0

    .line 742
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isVariableBitRate()Z

    move-result v0

    return v0
.end method

.method public seek(Ljava/io/File;J)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    const/16 v1, 0x1388

    .line 172
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 175
    invoke-virtual {v7, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 181
    invoke-virtual {v7, v8, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 182
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v9, 0x0

    move v1, v9

    .line 192
    :cond_0
    :try_start_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0xc4

    if-gt v2, v3, :cond_2

    .line 194
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 195
    invoke-virtual {v7, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 196
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v7, v8, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 197
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 198
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v2, v3, :cond_2

    if-eqz v7, :cond_1

    .line 303
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 308
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return v9

    .line 205
    :cond_2
    :try_start_1
    invoke-static {v8}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x1

    if-eqz v2, :cond_8

    .line 209
    :try_start_2
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found Possible header at:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 214
    :cond_3
    invoke-static {v8}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    move-result-object v2

    iput-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;
    :try_end_2
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :try_start_3
    invoke-static {v8, v2}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isXingFrame(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 220
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 222
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Found Possible XingHeader"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :cond_4
    :try_start_4
    invoke-static {v1}, Lorg/jaudiotagger/audio/mp3/XingFrame;->parseXingFrame(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/XingFrame;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;
    :try_end_4
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 236
    :cond_5
    :try_start_5
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-static {v8, v1}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->isVbriFrame(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 238
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 240
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Found Possible VbriHeader"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 245
    :cond_6
    :try_start_6
    invoke-static {v1}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->parseVBRIFrame(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/VbriFrame;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;
    :try_end_6
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    :goto_0
    move v9, v10

    goto :goto_2

    :cond_7
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, v8

    move-object v6, v7

    .line 264
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->isNextFrameValid(Ljava/io/File;JLjava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;)Z

    move-result v1
    :try_end_7
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_8

    goto :goto_1

    :catch_1
    move v1, v10

    .line 281
    :catch_2
    :cond_8
    :try_start_8
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v10

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    if-eqz v1, :cond_0

    :goto_1
    move v9, v1

    :goto_2
    if-eqz v7, :cond_9

    .line 303
    :goto_3
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 308
    :cond_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 295
    :try_start_9
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "IOException occurred whilst trying to find sync"

    invoke-virtual {p2, p3, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    throw p1

    :catch_4
    move-exception v1

    .line 290
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Reached end of file without finding sync match"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_9

    goto :goto_3

    .line 313
    :goto_4
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 315
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Return found matching mp3 header starting at"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 317
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setFileSize(J)V

    .line 318
    invoke-virtual {p0, p2, p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V

    .line 319
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setTimePerFrame()V

    .line 320
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setNumberOfFrames()V

    .line 321
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setTrackLength()V

    .line 322
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setBitRate()V

    .line 323
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setEncoder()V

    return v9

    :goto_5
    if-eqz v7, :cond_b

    .line 303
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 308
    :cond_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 310
    throw p1
.end method

.method public setAudioDataEndPosition(Ljava/lang/Long;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    return-void
.end method

.method public setAudioDataStartPosition(Ljava/lang/Long;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    return-void
.end method

.method protected setBitRate()V
    .locals 6

    .line 590
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isVbr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getAudioSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 594
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getAudioSize()I

    move-result v0

    sget v1, Lorg/jaudiotagger/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    sget v4, Lorg/jaudiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    .line 598
    :cond_0
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v0, v2

    sget v2, Lorg/jaudiotagger/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    sget v4, Lorg/jaudiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    .line 601
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_3

    .line 603
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getAudioSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 605
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getAudioSize()I

    move-result v0

    sget v1, Lorg/jaudiotagger/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    sget v4, Lorg/jaudiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    .line 609
    :cond_2
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v0, v2

    sget v2, Lorg/jaudiotagger/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    sget v4, Lorg/jaudiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    .line 614
    :cond_3
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    :goto_0
    return-void
.end method

.method protected setEncoder()V
    .locals 1

    .line 620
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getLameFrame()Lorg/jaudiotagger/audio/mp3/LameFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getLameFrame()Lorg/jaudiotagger/audio/mp3/LameFrame;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/LameFrame;->getEncoder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    goto :goto_0

    .line 627
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getEncoder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method protected setFileSize(J)V
    .locals 0

    .line 791
    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    return-void
.end method

.method protected setMp3StartByte(J)V
    .locals 0

    .line 420
    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    return-void
.end method

.method protected setNumberOfFrames()V
    .locals 4

    .line 442
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    .line 444
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isFrameCountEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getFrameCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getFrameCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    goto :goto_0

    .line 454
    :cond_1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    :goto_0
    return-void
.end method

.method protected setTimePerFrame()V
    .locals 4

    .line 489
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getNoOfSamples()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 493
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersion()I

    move-result v0

    if-nez v0, :cond_2

    .line 495
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayer()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayer()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 497
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getNumberOfChannels()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 499
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    :cond_2
    return-void
.end method

.method protected setTrackLength()V
    .locals 4

    .line 522
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    long-to-double v0, v0

    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getTimePerFrame()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->trackLength:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Audio Header content:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tfileSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tencoder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tencoderType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 804
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tformat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 805
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tstartByte:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    .line 806
    invoke-static {v2, v3}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tnumberOfFrames:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tnumberOfFramesEst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\ttimePerFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tbitrate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\ttrackLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 811
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getTrackLengthAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 802
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    if-eqz v1, :cond_0

    .line 815
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 819
    :cond_0
    const-string v1, "MPEG Frame Header:false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    :goto_0
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    if-eqz v1, :cond_1

    .line 824
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/XingFrame;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 828
    :cond_1
    const-string v1, "Xing Frame:false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :goto_1
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v1, :cond_2

    .line 833
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 837
    :cond_2
    const-string v1, "VBRI Frame:false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
